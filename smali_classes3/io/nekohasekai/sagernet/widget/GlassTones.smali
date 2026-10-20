.class public final Lio/nekohasekai/sagernet/widget/GlassTones;
.super Ljava/lang/Object;
.source "GlassTones.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/widget/GlassTones;",
        "",
        "<init>",
        "()V",
        "HomeBackground",
        "",
        "GlassBlueLight",
        "GlassBlueMid",
        "GlassBlueDeep",
        "BlueStatusStrip",
        "DockTextDark",
        "isLightTheme",
        "",
        "context",
        "Landroid/content/Context;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BlueStatusStrip:I

.field public static final DockTextDark:I

.field public static final GlassBlueDeep:I

.field public static final GlassBlueLight:I

.field public static final GlassBlueMid:I

.field public static final HomeBackground:I

.field public static final INSTANCE:Lio/nekohasekai/sagernet/widget/GlassTones;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/widget/GlassTones;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/widget/GlassTones;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/widget/GlassTones;->INSTANCE:Lio/nekohasekai/sagernet/widget/GlassTones;

    .line 31
    const v0, -0x161411

    sput v0, Lio/nekohasekai/sagernet/widget/GlassTones;->HomeBackground:I

    .line 35
    const v0, -0x442105

    sput v0, Lio/nekohasekai/sagernet/widget/GlassTones;->GlassBlueLight:I

    .line 38
    const v0, -0x6f3507

    sput v0, Lio/nekohasekai/sagernet/widget/GlassTones;->GlassBlueMid:I

    .line 41
    const v0, -0x9b4a0a

    sput v0, Lio/nekohasekai/sagernet/widget/GlassTones;->GlassBlueDeep:I

    .line 46
    const v0, -0x109b4a0a

    sput v0, Lio/nekohasekai/sagernet/widget/GlassTones;->BlueStatusStrip:I

    .line 49
    const v0, -0xe8e5e2

    sput v0, Lio/nekohasekai/sagernet/widget/GlassTones;->DockTextDark:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLightTheme(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 53
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget v1, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, -0x1

    .line 53
    :goto_0
    nop

    .line 58
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v4, v2

    const-wide v6, 0x3fd322d0e5604189L    # 0.299

    mul-double v4, v4, v6

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v6, v2

    const-wide v8, 0x3fe2c8b439581062L    # 0.587

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-double v6, v2

    const-wide v8, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    .line 59
    .local v4, "luminance":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method
