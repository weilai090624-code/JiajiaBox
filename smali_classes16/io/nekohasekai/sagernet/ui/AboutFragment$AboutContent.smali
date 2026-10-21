.class public final Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent;
.super Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;
.source "AboutFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AboutContent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent;",
        "Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;",
        "<init>",
        "()V",
        "getMaterialAboutList",
        "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;",
        "activityContext",
        "Landroid/content/Context;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public static synthetic $r8$lambda$QAiYBW-mHTaJB2C-2LDook5BXTg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent;->getMaterialAboutList$lambda$1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNzKFsz3VA8HIP36vmwpwtlbeNo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent;->getMaterialAboutList$lambda$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;-><init>()V

    return-void
.end method

.method private static addCommunityLink(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-virtual {v0, p3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    return-void
.end method

.method private static final getMaterialAboutList$lambda$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "$activityContext"    # Landroid/content/Context;
    .param p1, "$feedbackUrl"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private static final getMaterialAboutList$lambda$1(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "$activityContext"    # Landroid/content/Context;
    .param p1, "$sourceUrl"    # Ljava/lang/String;

    .line 84
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected getMaterialAboutList(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .registers 8
    .param p1, "activityContext"    # Landroid/content/Context;

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "https://t.me/L_J_J520"

    .line 49
    .local v0, "feedbackUrl":Ljava/lang/String;
    const-string v1, "https://github.com/MatsuriDayo/NekoBoxForAndroid"

    .line 50
    .local v1, "sourceUrl":Ljava/lang/String;
    new-instance v2, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;

    invoke-direct {v2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;-><init>()V

    .line 52
    new-instance v3, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    invoke-direct {v3}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;-><init>()V

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->outline(Z)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    move-result-object v3

    .line 55
    new-instance v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 56
    const v5, 0x7f0800e2

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 57
    const v5, 0x7f13005a

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 58
    sget-object v5, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getAppVersionNameForDisplay()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v4

    check-cast v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 54
    invoke-virtual {v3, v4}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    move-result-object v3

    .line 62
    new-instance v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 63
    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 64
    const v5, 0x7f13001b

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 65
    const v5, 0x7f13001c

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v4

    check-cast v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 61
    invoke-virtual {v3, v4}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    move-result-object v3

    .line 69
    new-instance v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 70
    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 71
    const v5, 0x7f13001d

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 72
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 73
    new-instance v5, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v4

    check-cast v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 68
    invoke-virtual {v3, v4}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    move-result-object v3

    .line 79
    new-instance v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 80
    const v5, 0x7f0800c7

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 81
    const v5, 0x7f13001e

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 82
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 83
    new-instance v5, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1, v1}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v4

    check-cast v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 78
    invoke-virtual {v3, v4}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    move-result-object v3

    const-string v4, "\u5b98\u65b9\u7fa4\u7ec4"

    const-string v5, "https://t.me/JiajiaBoxTop1"

    invoke-static {v3, p1, v4, v5}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent;->addCommunityLink(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "\u5b98\u65b9\u9891\u9053"

    const-string v5, "https://t.me/JiajiaBox"

    invoke-static {v3, p1, v4, v5}, Lio/nekohasekai/sagernet/ui/AboutFragment$AboutContent;->addCommunityLink(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->addCard(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f0a019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .local v0, "$this$onViewCreated_u24lambda_u242":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-apply-AboutFragment$AboutContent$onViewCreated$1":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 98
    nop

    .line 96
    .end local v0    # "$this$onViewCreated_u24lambda_u242":Landroidx/recyclerview/widget/RecyclerView;
    .end local v1    # "$i$a$-apply-AboutFragment$AboutContent$onViewCreated$1":I
    nop

    .line 99
    return-void
.end method
