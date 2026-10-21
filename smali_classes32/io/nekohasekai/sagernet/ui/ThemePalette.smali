.class public final Lio/nekohasekai/sagernet/ui/ThemePalette;
.super Ljava/lang/Object;
.source "ThemePalette.java"


# static fields
.field public static final CARD_RADIUS:I = 0x16

.field public static final CELL_RADIUS:I = 0x10

.field public static final PANEL_RADIUS:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accent(Landroid/content/Context;)I
    .registers 1

    .line 29
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0x1f5b44

    return p0

    :cond_a
    const p0, -0x48b88f

    return p0
.end method

.method public static border(Landroid/content/Context;)I
    .registers 1

    .line 26
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0xc2c1ba

    return p0

    :cond_a
    const p0, -0x151815

    return p0
.end method

.method public static control(Landroid/content/Context;)I
    .registers 1

    .line 25
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0xcfcec9

    return p0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method public static dark(Landroid/content/Context;)Z
    .registers 2

    .line 22
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static inset(Landroid/content/Context;)I
    .registers 1

    .line 32
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0xdbdad5

    return p0

    :cond_a
    const p0, -0x70908

    return p0
.end method

.method public static ripple(Landroid/content/Context;)I
    .registers 1

    .line 28
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x24ffffff

    return p0

    :cond_a
    const p0, 0x24d76a90

    return p0
.end method

.method public static secondary(Landroid/content/Context;)I
    .registers 1

    .line 27
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0x4f534b

    return p0

    :cond_a
    const p0, -0x878c83

    return p0
.end method

.method public static selected(Landroid/content/Context;)I
    .registers 1

    .line 30
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0xc6cfc7

    return p0

    :cond_a
    const p0, -0x30f0b

    return p0
.end method

.method public static selectedBorder(Landroid/content/Context;)I
    .registers 1

    .line 31
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0x93b2a3

    return p0

    :cond_a
    const p0, -0x173d2e

    return p0
.end method

.method public static surface(Landroid/content/Context;)I
    .registers 1

    .line 24
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static text(Landroid/content/Context;)I
    .registers 1

    .line 23
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteTextColor(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static textStates(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 6

    .line 35
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result p0

    .line 36
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    const v4, -0x101009e

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const v1, 0xffffff

    and-int/2addr v1, p0

    const/high16 v2, 0x66000000

    or-int/2addr v1, v2

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-direct {v0, v3, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method
