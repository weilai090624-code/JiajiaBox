.class public final Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;
.super Landroid/widget/Filter;
.source "AppListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,322:1\n774#2:323\n865#2,2:324\n774#2:326\n865#2,2:327\n*S KotlinDebug\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1\n*L\n129#1:323\n129#1:324,2\n134#1:326\n134#1:327,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "io/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1",
        "Landroid/widget/Filter;",
        "performFiltering",
        "Landroid/widget/Filter$FilterResults;",
        "constraint",
        "",
        "publishResults",
        "",
        "results",
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
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;)V
    .locals 0
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p2, "$receiver"    # Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;->this$1:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    .line 127
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 18
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    const-string v1, "constraint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    move-object/from16 v2, p0

    iget-object v3, v2, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    move-object v4, v1

    .local v4, "$this$performFiltering_u24lambda_u242":Landroid/widget/Filter$FilterResults;
    const/4 v5, 0x0

    .line 129
    .local v5, "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v6

    move/from16 v17, v5

    goto :goto_4

    :cond_1
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 323
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v6

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 324
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .local v15, "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    const/16 v16, 0x0

    .line 130
    .local v16, "$i$a$-filter-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1$filteredApps$1":I
    invoke-virtual {v15}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7, v0, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v15}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 131
    nop

    .line 130
    invoke-static {v7, v0, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 132
    invoke-virtual {v15}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v2, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .local v17, "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    invoke-static {v7, v0, v5, v8, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 130
    .end local v17    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .restart local v5    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    :cond_3
    move/from16 v17, v5

    const/4 v5, 0x0

    .line 132
    .end local v5    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .restart local v17    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    :goto_2
    const/4 v2, 0x1

    .line 324
    .end local v15    # "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    .end local v16    # "$i$a$-filter-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1$filteredApps$1":I
    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move/from16 v5, v17

    goto :goto_1

    .line 325
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .restart local v5    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    :cond_5
    move/from16 v17, v5

    .end local v5    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v17    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 323
    move-object v6, v2

    .line 129
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter":I
    :goto_4
    move-object v2, v6

    .line 134
    .local v2, "filteredApps":Ljava/util/List;
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getSysApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 326
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 327
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .local v11, "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    const/4 v12, 0x0

    .line 134
    .local v12, "$i$a$-filter-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1$1":I
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getSys()Z

    move-result v13

    .line 327
    .end local v11    # "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    .end local v12    # "$i$a$-filter-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1$1":I
    if-nez v13, :cond_6

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 328
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 326
    nop

    .line 134
    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v2, v6

    .line 135
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 136
    iput-object v2, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 137
    nop

    .line 128
    .end local v2    # "filteredApps":Ljava/util/List;
    .end local v4    # "$this$performFiltering_u24lambda_u242":Landroid/widget/Filter$FilterResults;
    .end local v17    # "$i$a$-apply-AppListActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    nop

    .line 137
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    const-string v0, "constraint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "results"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;->this$1:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<io.nekohasekai.sagernet.ui.AppListActivity.ProxiedApp>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->setFilteredApps(Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;->this$1:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method
