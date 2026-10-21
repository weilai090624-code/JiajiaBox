.class final Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;
.super Landroid/widget/LinearLayout;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Row"
.end annotation


# instance fields
.field final arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

.field final icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

.field final kind:I

.field final primary:Landroid/widget/TextView;

.field final secondary:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;I)V
    .registers 10

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->kind:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->setGravity(I)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->setPadding(IIII)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->setImportantForAccessibility(I)V

    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-direct {v1, p1, p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {p1, v4}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    const v0, 0x800013

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    # invokes: Lio/nekohasekai/sagernet/ui/DrawerDesign;->subtitle(I)Ljava/lang/String;
    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->access$000(I)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xb

    invoke-static {p1, p2, p3, v3}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->label(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->secondary:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    const/4 v0, 0x6

    invoke-direct {p2, p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->setVisibility(I)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->dp(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method paint(Z)V
    .registers 6

    .line 94
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->surface(Landroid/view/View;Z)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->accent(Landroid/content/Context;)I

    move-result v2

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->ink(Landroid/content/Context;)I

    move-result v2

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->primary:Landroid/widget/TextView;

    if-eqz p1, :cond_24

    const-string v2, "sans-serif-medium"

    goto :goto_26

    :cond_24
    const-string v2, "sans-serif"

    :goto_26
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->secondary:Landroid/widget/TextView;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    if-eqz p1, :cond_40

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->accent(Landroid/content/Context;)I

    move-result v2

    goto :goto_44

    :cond_40
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v2

    :goto_44
    iput v2, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->icon:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->invalidate()V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    if-eqz p1, :cond_54

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->accent(Landroid/content/Context;)I

    move-result v0

    goto :goto_58

    :cond_54
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->muted(Landroid/content/Context;)I

    move-result v0

    :goto_58
    iput v0, v1, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->color:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    if-eqz p1, :cond_61

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_64

    :cond_61
    const p1, 0x3ee66666    # 0.45f

    :goto_64
    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->setAlpha(F)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Row;->arrow:Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign$Glyph;->invalidate()V

    return-void
.end method
