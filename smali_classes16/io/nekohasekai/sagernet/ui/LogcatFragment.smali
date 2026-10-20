.class public final Lio/nekohasekai/sagernet/ui/LogcatFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "LogcatFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogcatFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogcatFragment.kt\nio/nekohasekai/sagernet/ui/LogcatFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,119:1\n65#2,4:120\n37#2:124\n53#2:125\n72#2:126\n*S KotlinDebug\n*F\n+ 1 LogcatFragment.kt\nio/nekohasekai/sagernet/ui/LogcatFragment\n*L\n80#1:120,4\n80#1:124\n80#1:125\n80#1:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/LogcatFragment;",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;",
        "setBinding",
        "(Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;)V",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getColorForLine",
        "Landroid/text/style/ForegroundColorSpan;",
        "line",
        "",
        "reloadSession",
        "onMenuItemClick",
        "",
        "item",
        "Landroid/view/MenuItem;",
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
.field public binding:Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const v0, 0x7f0d004e

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    return-void
.end method

.method private final getColorForLine(Ljava/lang/String;)Landroid/text/style/ForegroundColorSpan;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 49
    .local v0, "color":Landroid/text/style/ForegroundColorSpan;
    nop

    .line 50
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "INFO["

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, " [Info]"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "ERROR["

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/high16 v2, -0x10000

    if-nez v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v6, " [Error]"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v6, "WARN["

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v6, " [Warning]"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    :cond_2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v0, v1

    goto :goto_2

    .line 55
    :cond_3
    :goto_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v0, v1

    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x793e9a

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v0, v1

    .line 62
    :cond_5
    :goto_2
    return-object v0
.end method

.method private final reloadSession()V
    .locals 9

    .line 66
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/String;

    .line 67
    sget-object v2, Lmoe/matsuri/nb4a/utils/SendLog;->INSTANCE:Lmoe/matsuri/nb4a/utils/SendLog;

    const-wide/32 v3, 0xc800

    invoke-virtual {v2, v3, v4}, Lmoe/matsuri/nb4a/utils/SendLog;->getNekoLog(J)[B

    move-result-object v2

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 66
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    .local v0, "span":Landroid/text/SpannableString;
    const/4 v1, 0x0

    .line 70
    .local v1, "offset":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, "line":Ljava/lang/String;
    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getColorForLine(Ljava/lang/String;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v4

    .line 72
    .local v4, "color":Landroid/text/style/ForegroundColorSpan;
    nop

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    .line 72
    const/16 v6, 0x21

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "color":Landroid/text/style/ForegroundColorSpan;
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->textview:Landroid/widget/TextView;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->textview:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearFocus()V

    .line 80
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->textview:Landroid/widget/TextView;

    const-string v3, "textview"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .local v2, "$this$doOnLayout$iv":Landroid/view/View;
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$f$doOnLayout":I
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    move-object v4, v2

    .local v4, "it":Landroid/view/View;
    const/4 v5, 0x0

    .line 81
    .local v5, "$i$a$-doOnLayout-LogcatFragment$reloadSession$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v6

    iget-object v6, v6, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->scroolview:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->textview:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 82
    nop

    .line 121
    .end local v4    # "it":Landroid/view/View;
    .end local v5    # "$i$a$-doOnLayout-LogcatFragment$reloadSession$1":I
    goto :goto_1

    .line 123
    :cond_1
    move-object v4, v2

    .local v4, "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    const/4 v5, 0x0

    .line 124
    .local v5, "$i$f$doOnNextLayout":I
    new-instance v6, Lio/nekohasekai/sagernet/ui/LogcatFragment$reloadSession$$inlined$doOnLayout$1;

    invoke-direct {v6, p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment$reloadSession$$inlined$doOnLayout$1;-><init>(Lio/nekohasekai/sagernet/ui/LogcatFragment;)V

    check-cast v6, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 125
    nop

    .line 126
    .end local v4    # "$this$doOnNextLayout$iv$iv":Landroid/view/View;
    .end local v5    # "$i$f$doOnNextLayout":I
    :goto_1
    nop

    .line 83
    .end local v2    # "$this$doOnLayout$iv":Landroid/view/View;
    .end local v3    # "$i$f$doOnLayout":I
    return-void
.end method


# virtual methods
.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/LogcatFragment;->binding:Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 106
    :sswitch_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lio/nekohasekai/sagernet/ui/LogcatFragment$onMenuItemClick$2;

    invoke-direct {v2, v0, v1}, Lio/nekohasekai/sagernet/ui/LogcatFragment$onMenuItemClick$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 113
    :sswitch_1
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->reloadSession()V

    goto :goto_0

    .line 88
    :sswitch_2
    new-instance v0, Lio/nekohasekai/sagernet/ui/LogcatFragment$onMenuItemClick$1;

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/LogcatFragment$onMenuItemClick$1;-><init>(Lio/nekohasekai/sagernet/ui/LogcatFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 116
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a003f -> :sswitch_2
        0x7f0a007a -> :sswitch_1
        0x7f0a007f -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f13019d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 34
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 36
    invoke-static {p1}, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->setBinding(Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->textview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 44
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/LogcatFragment;->reloadSession()V

    .line 45
    return-void
.end method

.method public final setBinding(Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/LogcatFragment;->binding:Lio/nekohasekai/sagernet/databinding/LayoutLogcatBinding;

    return-void
.end method
