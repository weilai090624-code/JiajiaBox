.class public final Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;
.super Landroid/widget/LinearLayout;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Row"
.end annotation


# static fields
.field private static final MEDIUM:Landroid/graphics/Typeface;

.field private static final REGULAR:Landroid/graphics/Typeface;


# instance fields
.field final arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

.field final icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

.field final kind:I

.field final primary:Landroid/widget/TextView;

.field final secondary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 483
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->REGULAR:Landroid/graphics/Typeface;

    .line 484
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;I)V
    .registers 10

    .line 448
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 449
    iput p3, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->kind:I

    const/16 v0, 0x10

    .line 450
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->setGravity(I)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 451
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->setPadding(IIII)V

    const/4 v1, 0x2

    .line 452
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->setImportantForAccessibility(I)V

    .line 453
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-direct {v1, p1, p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;-><init>(Landroid/content/Context;I)V

    .line 454
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    .line 455
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {p1, v4}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 457
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 458
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 459
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 460
    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 461
    invoke-virtual {p0, v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    const v0, 0x800013

    .line 463
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41700000    # 15.0f

    .line 464
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 465
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 466
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 467
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 468
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->subtitle(I)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-static {p1, p2, p3, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object p2

    .line 470
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->secondary:Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 471
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 473
    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 474
    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance p2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    const/4 v0, 0x6

    invoke-direct {p2, p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;-><init>(Landroid/content/Context;I)V

    .line 476
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    .line 477
    invoke-virtual {p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->setVisibility(I)V

    .line 478
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 479
    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 480
    invoke-virtual {p0, p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method paint(Z)V
    .registers 5

    .line 486
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->surface(Landroid/view/View;Z)V

    if-eqz p1, :cond_14

    .line 488
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->accent(Landroid/content/Context;)I

    move-result v1

    goto :goto_18

    :cond_14
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result v1

    .line 489
    :goto_18
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V
    invoke-static {v2, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->access$000(Landroid/widget/TextView;I)V

    if-eqz p1, :cond_22

    .line 490
    sget-object v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->MEDIUM:Landroid/graphics/Typeface;

    goto :goto_24

    :cond_22
    sget-object v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->REGULAR:Landroid/graphics/Typeface;

    .line 491
    :goto_24
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 492
    :cond_35
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->secondary:Landroid/widget/TextView;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerDesign;->color(Landroid/widget/TextView;I)V
    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->access$000(Landroid/widget/TextView;I)V

    if-eqz p1, :cond_45

    .line 493
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->accent(Landroid/content/Context;)I

    move-result v0

    goto :goto_49

    :cond_45
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v0

    .line 494
    :goto_49
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    iget v1, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    if-eq v1, v0, :cond_58

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    iput v0, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->invalidate()V

    .line 495
    :cond_58
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    iget v1, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    if-eq v1, v0, :cond_67

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    iput v0, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->invalidate()V

    :cond_67
    if-eqz p1, :cond_6c

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_6f

    :cond_6c
    const p1, 0x3ee66666    # 0.45f

    .line 497
    :goto_6f
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->setAlpha(F)V

    :cond_7e
    return-void
.end method
