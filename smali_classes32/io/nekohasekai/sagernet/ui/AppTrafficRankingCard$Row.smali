.class final Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;
.super Landroid/widget/LinearLayout;
.source "AppTrafficRankingCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Row"
.end annotation


# instance fields
.field final amount:Landroid/widget/TextView;

.field final bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

.field final icon:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;

.field final name:Landroid/widget/TextView;

.field final rank:Landroid/widget/TextView;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Landroid/content/Context;I)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->this$0:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;

    .line 146
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->setImportantForAccessibility(I)V

    .line 147
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/high16 v2, 0x41300000    # 11.0f

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;
    invoke-static {p1, p3, v2, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$000(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->rank:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41800000    # 16.0f

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;

    invoke-direct {v2, p1, p2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;-><init>(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Landroid/content/Context;)V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->icon:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Icon;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41a00000    # 20.0f

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result v6

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result v5

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41000000    # 8.0f

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v2, v3}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string v0, ""

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;
    invoke-static {p1, v0, v5, v6}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$000(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->name:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    invoke-direct {v8, p2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->bar:Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Bar;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x40000000    # 2.0f

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v10}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result v11

    invoke-direct {p2, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v10}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result v10

    iput v10, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {p2, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, p2}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->text(Ljava/lang/String;FZ)Landroid/widget/TextView;
    invoke-static {p1, v0, v5, v1}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$000(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;Ljava/lang/String;FZ)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->amount:Landroid/widget/TextView;

    const-string v0, "tnum"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->dp(F)I
    invoke-static {p1, v5}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;->access$100(Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p2, v0}, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Row;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x6

    .line 150
    new-array v0, p1, [Landroid/view/View;

    aput-object p3, v0, v6

    aput-object v2, v0, v1

    const/4 p3, 0x2

    aput-object v3, v0, p3

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v8, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    :goto_bf
    if-ge v6, p1, :cond_c9

    aget-object p2, v0, v6

    invoke-virtual {p2, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    :cond_c9
    return-void
.end method
