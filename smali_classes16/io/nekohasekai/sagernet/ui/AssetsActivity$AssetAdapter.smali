.class public final Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AssetsActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AssetsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;",
        ">;",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsActivity.kt\nio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,365:1\n3829#2:366\n4344#2,2:367\n1557#3:369\n1628#3,3:370\n37#4,2:373\n*S KotlinDebug\n*F\n+ 1 AssetsActivity.kt\nio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter\n*L\n156#1:366\n156#1:367,2\n192#1:369\n192#1:370,3\n192#1:373,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u00012\u0008\u0012\u0004\u0012\u00020\u00050\u0004B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001c\u0010\u0013\u001a\u00020\r2\n\u0010\u0014\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0012J\"\u0010\u0019\u001a\u00020\r2\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00050\u001c0\u001bH\u0016J\"\u0010\u001d\u001a\u00020\r2\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00050\u001c0\u001bH\u0016R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;",
        "Lio/nekohasekai/sagernet/ui/AssetsActivity;",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;",
        "Ljava/io/File;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/AssetsActivity;)V",
        "assets",
        "Ljava/util/ArrayList;",
        "getAssets",
        "()Ljava/util/ArrayList;",
        "reloadAssets",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemCount",
        "remove",
        "index",
        "undo",
        "actions",
        "",
        "Lkotlin/Pair;",
        "commit",
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
.field private final assets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;


# direct methods
.method public static synthetic $r8$lambda$QjU0L6QYt5RmpJyVckmvGTxMVBI(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;)V
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->reloadAssets$lambda$1(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;)V
    .locals 1
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/AssetsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->reloadAssets()V

    .line 151
    nop

    .line 144
    return-void
.end method

.method private static final reloadAssets$lambda$1(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;

    .line 163
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->notifyDataSetChanged()V

    .line 164
    return-void
.end method


# virtual methods
.method public commit(Ljava/util/List;)V
    .locals 10
    .param p1, "actions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 369
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 370
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 371
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .local v7, "it":Lkotlin/Pair;
    const/4 v8, 0x0

    .line 192
    .local v8, "$i$a$-map-AssetsActivity$AssetAdapter$commit$groups$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 371
    .end local v7    # "it":Lkotlin/Pair;
    .end local v8    # "$i$a$-map-AssetsActivity$AssetAdapter$commit$groups$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 369
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/util/Collection;

    .line 192
    move-object v0, v2

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 373
    .local v1, "$i$f$toTypedArray":I
    nop

    .line 374
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/io/File;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 192
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Ljava/io/File;

    .line 193
    .local v0, "groups":[Ljava/io/File;
    new-instance v1, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter$commit$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter$commit$1;-><init>([Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 196
    return-void
.end method

.method public final getAssets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 176
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 144
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->onBindViewHolder(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;I)V
    .locals 2
    .param p1, "holder"    # Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/io/File;

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;->bind(Ljava/io/File;)V

    .line 173
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 144
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;

    move-result-object v2

    const-string v3, "inflate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetHolder;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity;Lio/nekohasekai/sagernet/databinding/LayoutAssetItemBinding;)V

    return-object v0
.end method

.method public final reloadAssets()V
    .locals 18

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 156
    .local v1, "filesDir":Ljava/io/File;
    :cond_0
    nop

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_5

    .line 155
    nop

    .line 156
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    .local v3, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 366
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 367
    .local v8, "$i$f$filterTo":I
    array-length v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_4

    aget-object v12, v7, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it":Ljava/io/File;
    const/4 v14, 0x0

    .line 156
    .local v14, "$i$a$-filter-AssetsActivity$AssetAdapter$reloadAssets$files$1":I
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v2, "getName(...)"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ".db"

    move-object/from16 v16, v3

    .end local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .local v16, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v3, 0x2

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$filter":I
    .local v17, "$i$f$filter":I
    invoke-static {v15, v2, v10, v3, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getAssetNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .end local v16    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v17    # "$i$f$filter":I
    .restart local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v5    # "$i$f$filter":I
    :cond_1
    move-object/from16 v16, v3

    move/from16 v17, v5

    move-object v5, v2

    .end local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filter":I
    .restart local v16    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v17    # "$i$f$filter":I
    :cond_2
    const/4 v2, 0x0

    .line 367
    .end local v13    # "it":Ljava/io/File;
    .end local v14    # "$i$a$-filter-AssetsActivity$AssetAdapter$reloadAssets$files$1":I
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object v2, v5

    move-object/from16 v3, v16

    move/from16 v5, v17

    goto :goto_0

    .line 368
    .end local v16    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v17    # "$i$f$filter":I
    .restart local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v5    # "$i$f$filter":I
    :cond_4
    move-object/from16 v16, v3

    move/from16 v17, v5

    .end local v3    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filter":I
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$filterTo":I
    .restart local v16    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v17    # "$i$f$filter":I
    move-object v2, v6

    check-cast v2, Ljava/util/List;

    .line 366
    nop

    .end local v16    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v17    # "$i$f$filter":I
    goto :goto_2

    .line 156
    :cond_5
    move-object v5, v2

    .line 155
    :goto_2
    nop

    .line 157
    .local v2, "files":Ljava/util/List;
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    new-instance v4, Ljava/io/File;

    const-string v5, "geoip.db"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    new-instance v4, Ljava/io/File;

    const-string v5, "geosite.db"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    if-eqz v2, :cond_6

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    :cond_6
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AssetsActivity;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AssetsActivity;->getLayout()Lio/nekohasekai/sagernet/databinding/LayoutAssetsBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutAssetsBinding;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v4, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;)V

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public final remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 180
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->notifyItemRemoved(I)V

    .line 182
    return-void
.end method

.method public undo(Ljava/util/List;)V
    .locals 4
    .param p1, "actions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 186
    .local v1, "item":Ljava/io/File;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->assets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/AssetsActivity$AssetAdapter;->notifyItemInserted(I)V

    .end local v1    # "item":Ljava/io/File;
    .end local v2    # "index":I
    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method
