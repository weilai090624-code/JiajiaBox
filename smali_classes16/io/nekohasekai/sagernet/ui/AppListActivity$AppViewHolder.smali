.class final Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppListActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder\n+ 2 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,322:1\n30#2:323\n774#3:324\n865#3,2:325\n*S KotlinDebug\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder\n*L\n90#1:323\n91#1:324\n91#1:325,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nJ\u0014\u0010\u000e\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010J\u0012\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;)V",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;",
        "item",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
        "bind",
        "",
        "app",
        "handlePayload",
        "payloads",
        "",
        "",
        "onClick",
        "v",
        "Landroid/view/View;",
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
.field private final binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

.field private item:Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;


# direct methods
.method public static synthetic $r8$lambda$LTfD4nkuGm3oNX8_Tt6H2VXtn_A(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/CharSequence;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->onClick$lambda$1(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;)V
    .registers 5
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p2, "binding"    # Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 65
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    .line 70
    nop

    .line 71
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    nop

    .line 64
    return-void
.end method

.method private static final onClick$lambda$1(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "it"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final bind(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)V
    .registers 5
    .param p1, "app"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->item:Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 76
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->itemicon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->desc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v0, "switch"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->handlePayload(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;
    .registers 2

    .line 64
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    return-object v0
.end method

.method public final handlePayload(Ljava/util/List;)V
    .registers 4
    .param p1, "payloads"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payloads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v0, "switch"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 84
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->item:Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    if-nez v1, :cond_19

    const-string v1, "item"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_19
    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v0

    .line 85
    .local v0, "selected":Z
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->itemcheck:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 87
    .end local v0    # "selected":Z
    :cond_24
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->item:Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    const/4 v2, 0x0

    const-string v3, "item"

    if-nez v1, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_d
    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getProxiedUids$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->item:Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    if-nez v1, :cond_21

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v2, v1

    :goto_22
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_42

    :cond_2a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getProxiedUids$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->item:Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    if-nez v1, :cond_38

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_39

    :cond_38
    move-object v2, v1

    :goto_39
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v1

    .local v1, "key$iv":I
    const/4 v2, 0x1

    .local v0, "$this$set$iv":Landroid/util/SparseBooleanArray;
    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 323
    .local v3, "$i$f$set":I
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 91
    .end local v0    # "$this$set$iv":Landroid/util/SparseBooleanArray;
    .end local v1    # "key$iv":I
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$set":I
    :goto_42
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->apps:Ljava/util/List;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    const/4 v3, 0x0

    .line 324
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 325
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5c
    :goto_5c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .local v9, "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    const/4 v10, 0x0

    .line 91
    .local v10, "$i$a$-filter-AppListActivity$AppViewHolder$onClick$1":I
    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z
    invoke-static {v2, v9}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v9

    .line 325
    .end local v9    # "it":Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    .end local v10    # "$i$a$-filter-AppListActivity$AppViewHolder$onClick$1":I
    if-eqz v9, :cond_5c

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 326
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_74
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 324
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .line 92
    const-string v1, "\n"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v10, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder$$ExternalSyntheticLambda0;-><init>()V

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRoutePackages(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getAppsAdapter$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getAppsAdapter$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->getItemCount()I

    move-result v1

    const-string v2, "switch"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 94
    return-void
.end method
