"""Compile the actual bundled WebGL shaders with GLES and render offline Earth textures.

Optional Linux/Mesa check: EGL_PLATFORM=surfaceless LIBGL_ALWAYS_SOFTWARE=1
python3 tests/globe_gles_test.py <artifact-directory>. No browser or network used.
"""
import ctypes as C
import math
import re
import sys
from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
OUT = Path(sys.argv[1]) if len(sys.argv) > 1 else ROOT / "build/globe-gles-check"
OUT.mkdir(parents=True, exist_ok=True)
EGL, GL = C.CDLL("libEGL.so.1"), C.CDLL("libGLESv2.so.2")
I, U, P, F = C.c_int, C.c_uint, C.c_void_p, C.c_float


def function(lib, name, result, *args):
    call = getattr(lib, name)
    call.restype, call.argtypes = result, list(args)
    return call


get_display = function(EGL, "eglGetDisplay", P, P)
initialize = function(EGL, "eglInitialize", U, P, C.POINTER(I), C.POINTER(I))
choose = function(EGL, "eglChooseConfig", U, P, C.POINTER(I), C.POINTER(P), I, C.POINTER(I))
bind_api = function(EGL, "eglBindAPI", U, U)
create_surface = function(EGL, "eglCreatePbufferSurface", P, P, P, C.POINTER(I))
create_context = function(EGL, "eglCreateContext", P, P, P, P, C.POINTER(I))
make_current = function(EGL, "eglMakeCurrent", U, P, P, P, P)
get_string = function(GL, "glGetString", C.c_char_p, U)
create_shader = function(GL, "glCreateShader", U, U)
shader_source = function(GL, "glShaderSource", None, U, I, C.POINTER(C.c_char_p), C.POINTER(I))
compile_shader = function(GL, "glCompileShader", None, U)
get_shader = function(GL, "glGetShaderiv", None, U, U, C.POINTER(I))
shader_log = function(GL, "glGetShaderInfoLog", None, U, I, C.POINTER(I), C.c_char_p)
create_program = function(GL, "glCreateProgram", U)
attach = function(GL, "glAttachShader", None, U, U)
link = function(GL, "glLinkProgram", None, U)
get_program = function(GL, "glGetProgramiv", None, U, U, C.POINTER(I))
program_log = function(GL, "glGetProgramInfoLog", None, U, I, C.POINTER(I), C.c_char_p)
use_program = function(GL, "glUseProgram", None, U)
gen_buffers = function(GL, "glGenBuffers", None, I, C.POINTER(U))
bind_buffer = function(GL, "glBindBuffer", None, U, U)
buffer_data = function(GL, "glBufferData", None, U, C.c_ssize_t, P, U)
attribute = function(GL, "glGetAttribLocation", I, U, C.c_char_p)
enable_attribute = function(GL, "glEnableVertexAttribArray", None, U)
attribute_pointer = function(GL, "glVertexAttribPointer", None, U, I, U, U, I, P)
uniform = function(GL, "glGetUniformLocation", I, U, C.c_char_p)
uniform1i = function(GL, "glUniform1i", None, I, I)
uniform1f = function(GL, "glUniform1f", None, I, F)
uniform2f = function(GL, "glUniform2f", None, I, F, F)
uniform3f = function(GL, "glUniform3f", None, I, F, F, F)
uniform4f = function(GL, "glUniform4f", None, I, F, F, F, F)
gen_textures = function(GL, "glGenTextures", None, I, C.POINTER(U))
active_texture = function(GL, "glActiveTexture", None, U)
bind_texture = function(GL, "glBindTexture", None, U, U)
texture_image = function(GL, "glTexImage2D", None, U, I, I, I, I, I, U, U, P)
mipmap = function(GL, "glGenerateMipmap", None, U)
texture_parameter = function(GL, "glTexParameteri", None, U, U, I)
viewport = function(GL, "glViewport", None, I, I, I, I)
clear_color = function(GL, "glClearColor", None, F, F, F, F)
clear = function(GL, "glClear", None, U)
draw_arrays = function(GL, "glDrawArrays", None, U, I, I)
read_pixels = function(GL, "glReadPixels", None, I, I, I, I, U, U, P)
finish = function(GL, "glFinish", None)
get_error = function(GL, "glGetError", U)

display = get_display(None)
major, minor = I(), I()
assert initialize(display, C.byref(major), C.byref(minor)), "EGL initialization"
assert bind_api(0x30A0), "OpenGL ES API"
config, count = P(), I()
attrs = (I * 13)(0x3033, 1, 0x3040, 4, 0x3024, 8, 0x3023, 8, 0x3022, 8, 0x3021, 8, 0x3038)
assert choose(display, attrs, C.byref(config), 1, C.byref(count)) and count.value
surface = create_surface(display, config, (I * 5)(0x3057, 640, 0x3056, 480, 0x3038))
context = create_context(display, config, None, (I * 3)(0x3098, 2, 0x3038))
assert surface and context and make_current(display, surface, surface, context)
print("GLES renderer:", get_string(0x1F01).decode())


def shader(kind, text):
    handle = create_shader(kind)
    value = C.c_char_p(text.encode())
    shader_source(handle, 1, C.byref(value), None)
    compile_shader(handle)
    status = I()
    get_shader(handle, 0x8B81, C.byref(status))
    if not status.value:
        log = C.create_string_buffer(8192)
        shader_log(handle, 8192, None, log)
        raise AssertionError(log.value.decode())
    return handle


html = (ROOT / "assets/globe/index.html").read_text()
vertex = re.search(r"shader\(gl.VERTEX_SHADER,`([\s\S]*?)`\)", html)[1]
fragment = re.search(r"shader\(gl.FRAGMENT_SHADER,`([\s\S]*?)`\)", html)[1]
program = create_program()
attach(program, shader(0x8B31, vertex))
attach(program, shader(0x8B30, fragment))
link(program)
status = I()
get_program(program, 0x8B82, C.byref(status))
if not status.value:
    log = C.create_string_buffer(8192)
    program_log(program, 8192, None, log)
    raise AssertionError(log.value.decode())
use_program(program)
vertices = (F * 8)(-1, -1, 1, -1, -1, 1, 1, 1)
buffer = U()
gen_buffers(1, C.byref(buffer))
bind_buffer(0x8892, buffer)
buffer_data(0x8892, C.sizeof(vertices), vertices, 0x88E4)
position = attribute(program, b"a_position")
enable_attribute(position)
attribute_pointer(position, 2, 0x1406, 0, 0, None)
locations = {name: uniform(program, ("u_" + name).encode()) for name in ("rotation", "roll", "extent", "projection", "resolution", "zoom", "sun", "day", "night", "clouds")}
assert all(value >= 0 for value in locations.values()), locations
textures = (U * 3)()
gen_textures(3, textures)
for index, name in enumerate(("daymap", "nightmap", "clouds")):
    image = Image.open(ROOT / ("assets/globe/earth-" + name + ".webp")).convert("RGBA").transpose(Image.Transpose.FLIP_TOP_BOTTOM)
    raw = C.create_string_buffer(image.tobytes())
    active_texture(0x84C0 + index)
    bind_texture(0x0DE1, textures[index])
    texture_image(0x0DE1, 0, 0x1908, image.width, image.height, 0, 0x1908, 0x1401, raw)
    mipmap(0x0DE1)
    for pname, value in [(0x2801, 0x2703), (0x2800, 0x2601), (0x2802, 0x2901), (0x2803, 0x812F)]:
        texture_parameter(0x0DE1, pname, value)
    uniform1i(locations[("day", "night", "clouds")[index]], index)

yaw, pitch, roll = math.radians(-100), math.radians(22), math.radians(-23.43928)
uniform4f(locations["rotation"], math.cos(yaw), math.sin(yaw), math.cos(pitch), math.sin(pitch))
uniform2f(locations["roll"], math.cos(roll), math.sin(roll))
uniform3f(locations["sun"], math.sin(math.radians(40)), 0, math.cos(math.radians(40)))
clear_color(0, 0, 0, 0)


def render(width, height, zoom, bounded):
    span = min(width, height)
    atmosphere = zoom * 1.085
    reach = 3 * span * atmosphere / math.sqrt(12.25 - atmosphere * atmosphere)
    uniform2f(locations["extent"], min(1, reach / width) if bounded else 1, min(1, reach / height) if bounded else 1)
    uniform2f(locations["projection"], 3 * span / width, 3 * span / height)
    uniform2f(locations["resolution"], width, height)
    uniform1f(locations["zoom"], zoom)
    viewport(0, 0, width, height)
    clear(0x4000)
    draw_arrays(5, 0, 4)
    finish()
    pixels = (C.c_ubyte * (width * height * 4))()
    read_pixels(0, 0, width, height, 0x1908, 0x1401, pixels)
    assert get_error() == 0, "GL error after Earth rendering"
    return bytes(pixels)


for width, height, zoom in [(150, 240, .72), (150, 240, 1), (320, 240, 1), (420, 280, 1.45)]:
    bounded = render(width, height, zoom, True)
    full = render(width, height, zoom, False)
    delta = sum(abs(a - b) for a, b in zip(bounded, full)) / len(full)
    assert delta < .5, (width, height, zoom, "bounded quad altered visible atmosphere", delta)
    image = Image.frombytes("RGBA", (width, height), bounded).transpose(Image.Transpose.FLIP_TOP_BOTTOM)
    alpha = image.getchannel("A")
    assert alpha.getbbox() and alpha.getpixel((width // 2, height // 2)) == 255
    if width == 150 and zoom == 1:
        bounds = alpha.getbbox()
        assert bounds[0] > 0 and bounds[2] < width, "default globe clips sides of narrow viewport"
    # Convert the premultiplied WebGL output to ordinary PNG alpha for visual inspection.
    raw = bytearray(image.tobytes())
    for i in range(0, len(raw), 4):
        a = raw[i + 3]
        if 0 < a < 255:
            for component in range(3):
                raw[i + component] = min(255, round(raw[i + component] * 255 / a))
    image = Image.frombytes("RGBA", (width, height), bytes(raw))
    background = Image.new("RGBA", image.size, "white")
    background.alpha_composite(image)
    background.convert("RGB").save(OUT / f"globe-{width}x{height}-zoom-{zoom}.png")
    print(f"PASS: actual GLES {width}x{height} zoom={zoom}, bounded/full quad mean channel error={delta:.5f}")

function(EGL, "eglMakeCurrent", U, P, P, P, P)(display, None, None, None)
function(EGL, "eglDestroyContext", U, P, P)(display, context)
function(EGL, "eglDestroySurface", U, P, P)(display, surface)
function(EGL, "eglTerminate", U, P)(display)
print("PASS: bundled shaders compile/link, local day/night/cloud maps render, transparent margins and narrow viewport coverage checked")
