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
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->text:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_15

    const v1, -0xc2c1ba

    goto :goto_18

    :cond_15
    const v1, -0x151815

    .line 44
    :goto_18
    iput v1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->border:I

    if-eqz p1, :cond_20

    const v1, -0x4f534b

    goto :goto_23

    :cond_20
    const v1, -0x878c83

    :goto_23
    iput v1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->secondary:I

    if-eqz p1, :cond_2a

    const v0, -0xcfcec9

    :cond_2a
    iput v0, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->control:I

    return-void
.end method
