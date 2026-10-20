.class public final Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "JJHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NodeHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1013:1\n1#2:1014\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/view/View;)V",
        "emblem",
        "Landroid/widget/TextView;",
        "name",
        "subtitle",
        "ping",
        "check",
        "Landroid/widget/ImageView;",
        "bind",
        "",
        "entity",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "selected",
        "",
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


# instance fields
.field private final check:Landroid/widget/ImageView;

.field private final emblem:Landroid/widget/TextView;

.field private final name:Landroid/widget/TextView;

.field private final ping:Landroid/widget/TextView;

.field private final subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public static synthetic $r8$lambda$duWgRU3IKjpO1uU4T_JfCmL0220(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->bind$lambda$2(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sbXh2fDL7HF6nqX3noNsP8nsm1k(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->bind$lambda$1(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/view/View;)V
    .registers 6
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 953
    const v0, 0x7f0a0166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->emblem:Landroid/widget/TextView;

    .line 954
    const v0, 0x7f0a0167

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->name:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 955
    const v0, 0x7f0a016a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->subtitle:Landroid/widget/TextView;

    .line 956
    const v0, 0x7f0a0168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->ping:Landroid/widget/TextView;

    .line 957
    const v0, 0x7f0a0165

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->check:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x429c0000    # 78.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 951
    return-void
.end method

.method private static final bind$lambda$1(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .param p1, "$entity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "it"    # Landroid/view/View;

    .line 982
    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->onNodeClick(Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$onNodeClick(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    .line 983
    return-void
.end method

.method private static final bind$lambda$2(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)Z
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .param p1, "$entity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "it"    # Landroid/view/View;

    .line 985
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->show(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 986
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final bind(Lio/nekohasekai/sagernet/database/ProxyEntity;Z)V
    .registers 7
    .param p1, "entity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "selected"    # Z

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1014
    const/4 v0, 0x0

    .line 960
    .local v0, "$i$a$-ifBlank-JJHomeFragment$NodeHolder$bind$nodeName$1":I
    const v2, 0x7f130054

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-ifBlank-JJHomeFragment$NodeHolder$bind$nodeName$1":I
    :cond_1b
    check-cast v0, Ljava/lang/String;

    .line 961
    .local v0, "nodeName":Ljava/lang/String;
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->name:Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayType()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->subtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->emblem:Landroid/widget/TextView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lio/nekohasekai/sagernet/ui/JJHomeFragment;->emblemText(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$emblemText(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->ping:Landroid/widget/TextView;

    .line 968
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6d

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v2

    if-lez v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_90

    .line 971
    :cond_6d
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getRunningTest()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getStatus()I

    move-result v2

    if-nez v2, :cond_8c

    .line 972
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    const v3, 0x7f130157

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_90

    .line 973
    :cond_8c
    const-string v2, "\u2014"

    check-cast v2, Ljava/lang/CharSequence;

    .line 967
    :goto_90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->check:Landroid/widget/ImageView;

    if-eqz p2, :cond_99

    const/4 v2, 0x0

    goto :goto_9a

    :cond_99
    const/4 v2, 0x4

    :goto_9a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 977
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->itemView:Landroid/view/View;

    .line 978
    if-eqz p2, :cond_a5

    const v2, 0x7f080090

    goto :goto_a8

    :cond_a5
    const v2, 0x7f08008d

    .line 977
    :goto_a8
    nop

    .line 981
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    new-instance v3, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    new-instance v3, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 988
    invoke-static {v1, p2}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->row(Landroid/view/View;Z)V

    return-void
.end method
