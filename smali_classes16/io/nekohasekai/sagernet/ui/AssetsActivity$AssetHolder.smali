.class public final Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AssetsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AssetsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsActivity.kt\nio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,365:1\n277#2,2:366\n277#2,2:368\n277#2,2:370\n*S KotlinDebug\n*F\n+ 1 AssetsActivity.kt\nio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder\n*L\n229#1:366,2\n233#1:368,2\n234#1:370,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;)V",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;",
        "file",
        "Ljava/io/File;",
        "getFile",
        "()Ljava/io/File;",
        "setFile",
        "(Ljava/io/File;)V",
        "bind",
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
.field private final binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

.field public file:Ljava/io/File;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;


# direct methods
.method public static synthetic $r8$lambda$qtk2yU6NZJkOAOtCKuBbpI1coeQ(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->bind$lambda$0(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;)V
    .locals 1
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/AssetsActivity;
    .param p2, "binding"    # Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    .line 203
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 202
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    return-void
.end method

.method private static final bind$lambda$0(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/view/View;)V
    .locals 8
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AssetsActivity;
    .param p1, "this$1"    # Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;
    .param p2, "$file"    # Ljava/io/File;
    .param p3, "$versionFile"    # Ljava/io/File;
    .param p4, "$localVersion"    # Ljava/lang/String;
    .param p5, "it"    # Landroid/view/View;

    .line 231
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getUpdating()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 232
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getLayout()Lio/nekohasekai/sagernet/databinding/LayoutAssetsBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAssetsBinding;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 233
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->subscriptionUpdateProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const-string v2, "subscriptionUpdateProgress"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .local v0, "$this$isInvisible$iv":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 368
    .local v3, "$i$f$setInvisible":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    nop

    .line 234
    .end local v0    # "$this$isInvisible$iv":Landroid/view/View;
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$setInvisible":I
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->rulesUpdate:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "rulesUpdate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .restart local v0    # "$this$isInvisible$iv":Landroid/view/View;
    const/4 v1, 0x1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 370
    .local v2, "$i$f$setInvisible":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    nop

    .line 235
    .end local v0    # "$this$isInvisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$setInvisible":I
    new-instance v7, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$bind$1$1;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 252
    return-void
.end method


# virtual methods
.method public final bind(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->setFile(Ljava/io/File;)V

    .line 209
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->assetName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".version.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v0, "versionFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "<unknown>"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    nop

    .line 215
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v3, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "<get-readableMessage>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    .line 218
    nop

    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 224
    :cond_1
    nop

    .line 212
    :goto_1
    move-object v1, v2

    .line 227
    .local v1, "localVersion":Ljava/lang/String;
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->assetStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const v7, 0x7f13024b

    invoke-virtual {v4, v7, v5}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->rulesUpdate:Lcom/google/android/material/button/MaterialButton;

    const-string v4, "rulesUpdate"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getAssetNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    .local v2, "$this$isInvisible$iv":Landroid/view/View;
    .local v3, "value$iv":Z
    const/4 v4, 0x0

    .line 366
    .local v4, "$i$f$setInvisible":I
    if-eqz v3, :cond_2

    const/4 v6, 0x4

    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 367
    nop

    .line 230
    .end local v2    # "$this$isInvisible$iv":Landroid/view/View;
    .end local v3    # "value$iv":Z
    .end local v4    # "$i$f$setInvisible":I
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->rulesUpdate:Lcom/google/android/material/button/MaterialButton;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    new-instance v9, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$$ExternalSyntheticLambda0;

    move-object v3, v9

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void
.end method

.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;
    .locals 1

    .line 202
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 204
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "file"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/io/File;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->file:Ljava/io/File;

    return-void
.end method
