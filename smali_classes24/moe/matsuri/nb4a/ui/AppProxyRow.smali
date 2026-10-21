.class public final Lmoe/matsuri/nb4a/ui/AppProxyRow;
.super Landroid/widget/LinearLayout;
.source "AppProxyRow.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private final check:Landroid/widget/CheckBox;

.field private final name:Landroid/widget/TextView;

.field private final packageName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 24
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setOrientation(I)V

    .line 25
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setGravity(I)V

    .line 26
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v4, v5, v3}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setPaddingRelative(IIII)V

    .line 27
    const/high16 v2, 0x42880000    # 68.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setMinimumHeight(I)V

    .line 28
    invoke-virtual {p0, v1}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, v1}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setClickable(Z)V

    .line 30
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    .line 33
    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 35
    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 36
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->packageName:Landroid/widget/TextView;

    .line 37
    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->packageName:Landroid/widget/TextView;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 38
    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->packageName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 39
    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->packageName:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 43
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->packageName:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2, v0}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    .line 46
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 47
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 48
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 49
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setImportantForAccessibility(I)V

    .line 50
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->choiceRow(Landroid/view/View;)V

    .line 52
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 56
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->packageName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p2}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setTag(Ljava/lang/Object;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, p3}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setChecked(Z)V

    .line 61
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 67
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 69
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 70
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 64
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyRow;->check:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .registers 2

    .line 65
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->setChecked(Z)V

    return-void
.end method
