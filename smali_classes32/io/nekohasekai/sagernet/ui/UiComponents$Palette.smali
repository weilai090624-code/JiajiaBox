.class final Lio/nekohasekai/sagernet/ui/UiComponents$Palette;
.super Ljava/lang/Object;
.source "UiComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/UiComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Palette"
.end annotation


# instance fields
.field final accent:I

.field final accentStates:Landroid/content/res/ColorStateList;

.field final border:I

.field final control:I

.field final dark:Z

.field final density:F

.field final inset:I

.field final ripple:I

.field final rippleStates:Landroid/content/res/ColorStateList;

.field final secondary:I

.field final secondaryStates:Landroid/content/res/ColorStateList;

.field final selected:I

.field final selectedBorder:I

.field final text:I

.field final textStates:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/Context;ZF)V
    .registers 5

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-boolean p2, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->dark:Z

    iput p3, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->density:F

    .line 350
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->text:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->secondary:I

    .line 351
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->accent:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->control:I

    .line 352
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->inset(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->inset:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->selected(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->selected:I

    .line 353
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->border:I

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->selectedBorder(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->selectedBorder:I

    .line 354
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->ripple(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->ripple:I

    .line 355
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->textStates(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->textStates:Landroid/content/res/ColorStateList;

    .line 356
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->secondaryStates:Landroid/content/res/ColorStateList;

    .line 357
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->accentStates:Landroid/content/res/ColorStateList;

    .line 358
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->rippleStates:Landroid/content/res/ColorStateList;

    return-void
.end method
