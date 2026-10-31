.class final Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;
.super Ljava/lang/Object;
.source "DrawerAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Palette"
.end annotation


# instance fields
.field final border:I

.field final control:I

.field final secondary:I

.field final text:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->text:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->border:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->secondary:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->control:I

    return-void
.end method
