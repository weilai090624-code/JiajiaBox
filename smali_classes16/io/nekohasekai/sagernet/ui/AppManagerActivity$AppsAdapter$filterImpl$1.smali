.class public final Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1;
.super Landroid/widget/Filter;
.source "AppManagerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;-><init>(Lio/nekohasekai/sagernet/ui/AppManagerActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppManagerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppManagerActivity.kt\nio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n774#2:405\n865#2,2:406\n774#2:408\n865#2,2:409\n*S KotlinDebug\n*F\n+ 1 AppManagerActivity.kt\nio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1\n*L\n135#1:405\n135#1:406,2\n140#1:408\n140#1:409,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "io/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1",
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
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppManagerActivity;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AppManagerActivity;Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;)V
    .registers 3
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/ui/AppManagerActivity;
    .param p2, "$receiver"    # Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1;->this$0:Lio/nekohasekai/sagernet/ui/AppManagerActivity;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1;->this$1:Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;

    .line 133
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 20
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    const-string v1, "constraint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    move-object/from16 v2, p0

    iget-object v3, v2, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1;->this$0:Lio/nekohasekai/sagernet/ui/AppManagerActivity;

    move-object v4, v1

    .local v4, "$this$performFiltering_u24lambda_u242":Landroid/widget/Filter$FilterResults;
    const/4 v5, 0x0

    .line 135
    .local v5, "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_1b

    const/4 v6, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v6, 0x0

    :goto_1c
    if-eqz v6, :cond_25

    # getter for: Lio/nekohasekai/sagernet/ui/AppManagerActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppManagerActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppManagerActivity;)Ljava/util/List;

    move-result-object v6

    move/from16 v17, v5

    goto :goto_8c

    :cond_25
    # getter for: Lio/nekohasekai/sagernet/ui/AppManagerActivity;->apps:Ljava/util/List;
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppManagerActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppManagerActivity;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 405
    .local v9, "$i$f$filter":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v6

    .local v11, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 406
    .local v12, "$i$f$filterTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_39
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_86

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;

    .local v15, "it":Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;
    const/16 v16, 0x0

    .line 136
    .local v16, "$i$a$-filter-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1$filteredApps$1":I
    invoke-virtual {v15}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7, v0, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_77

    invoke-virtual {v15}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 137
    nop

    .line 136
    invoke-static {v7, v0, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_77

    .line 138
    invoke-virtual {v15}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v2, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .local v17, "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    invoke-static {v7, v0, v5, v8, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_7a

    :cond_75
    const/4 v2, 0x0

    goto :goto_7b

    .line 136
    .end local v17    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .restart local v5    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    :cond_77
    move/from16 v17, v5

    const/4 v5, 0x0

    .line 138
    .end local v5    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .restart local v17    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    :goto_7a
    const/4 v2, 0x1

    .line 406
    .end local v15    # "it":Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;
    .end local v16    # "$i$a$-filter-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1$filteredApps$1":I
    :goto_7b
    if-eqz v2, :cond_80

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_80
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move/from16 v5, v17

    goto :goto_39

    .line 407
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .restart local v5    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    :cond_86
    move/from16 v17, v5

    .end local v5    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    .restart local v17    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 405
    move-object v6, v2

    .line 135
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filter":I
    :goto_8c
    move-object v2, v6

    .line 140
    .local v2, "filteredApps":Ljava/util/List;
    # getter for: Lio/nekohasekai/sagernet/ui/AppManagerActivity;->sysApps:Z
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AppManagerActivity;->access$getSysApps$p(Lio/nekohasekai/sagernet/ui/AppManagerActivity;)Z

    move-result v3

    if-nez v3, :cond_c1

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 408
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 409
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a4
    :goto_a4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;

    .local v11, "it":Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;
    const/4 v12, 0x0

    .line 140
    .local v12, "$i$a$-filter-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1$1":I
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;->getSys()Z

    move-result v13

    .line 409
    .end local v11    # "it":Lio/nekohasekai/sagernet/ui/AppManagerActivity$ProxiedApp;
    .end local v12    # "$i$a$-filter-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1$1":I
    if-nez v13, :cond_a4

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 410
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_bc
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 408
    nop

    .line 140
    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v2, v6

    .line 141
    :cond_c1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 142
    iput-object v2, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 143
    nop

    .line 134
    .end local v2    # "filteredApps":Ljava/util/List;
    .end local v4    # "$this$performFiltering_u24lambda_u242":Landroid/widget/Filter$FilterResults;
    .end local v17    # "$i$a$-apply-AppManagerActivity$AppsAdapter$filterImpl$1$performFiltering$1":I
    nop

    .line 143
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    const-string v0, "constraint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "results"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1;->this$1:Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<io.nekohasekai.sagernet.ui.AppManagerActivity.ProxiedApp>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;->setFilteredApps(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter$filterImpl$1;->this$1:Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method
