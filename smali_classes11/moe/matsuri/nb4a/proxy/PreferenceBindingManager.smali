.class public final Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;
.super Ljava/lang/Object;
.source "PreferenceBindingManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceBindingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceBindingManager.kt\nmoe/matsuri/nb4a/proxy/PreferenceBindingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1863#2,2:36\n1863#2,2:38\n1863#2,2:40\n*S KotlinDebug\n*F\n+ 1 PreferenceBindingManager.kt\nmoe/matsuri/nb4a/proxy/PreferenceBindingManager\n*L\n15#1:36,2\n22#1:38,2\n29#1:40,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0001J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0001J\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;",
        "",
        "<init>",
        "()V",
        "items",
        "",
        "Lmoe/matsuri/nb4a/proxy/PreferenceBinding;",
        "getItems",
        "()Ljava/util/List;",
        "add",
        "b",
        "fromCacheAll",
        "",
        "bean",
        "writeToCacheAll",
        "setPreferenceFragment",
        "pf",
        "Landroidx/preference/PreferenceFragmentCompat;",
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
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/proxy/PreferenceBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->items:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public final add(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    .locals 1
    .param p1, "b"    # Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object p1
.end method

.method public final fromCacheAll(Ljava/lang/Object;)V
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .local v4, "it":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    const/4 v5, 0x0

    .line 16
    .local v5, "$i$a$-forEach-PreferenceBindingManager$fromCacheAll$1":I
    invoke-virtual {v4, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->setBean(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v4}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fromCache()V

    .line 18
    nop

    .line 36
    .end local v4    # "it":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    .end local v5    # "$i$a$-forEach-PreferenceBindingManager$fromCacheAll$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 37
    :cond_0
    nop

    .line 19
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/proxy/PreferenceBinding;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->items:Ljava/util/List;

    return-object v0
.end method

.method public final setPreferenceFragment(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 6
    .param p1, "pf"    # Landroidx/preference/PreferenceFragmentCompat;

    const-string v0, "pf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 40
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .local v4, "it":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    const/4 v5, 0x0

    .line 30
    .local v5, "$i$a$-forEach-PreferenceBindingManager$setPreferenceFragment$1":I
    invoke-virtual {v4, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->setPf(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 31
    nop

    .line 40
    .end local v4    # "it":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    .end local v5    # "$i$a$-forEach-PreferenceBindingManager$setPreferenceFragment$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 41
    :cond_0
    nop

    .line 32
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final writeToCacheAll(Ljava/lang/Object;)V
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBindingManager;->items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .local v4, "it":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    const/4 v5, 0x0

    .line 23
    .local v5, "$i$a$-forEach-PreferenceBindingManager$writeToCacheAll$1":I
    invoke-virtual {v4, p1}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->setBean(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v4}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->writeToCache()V

    .line 25
    nop

    .line 38
    .end local v4    # "it":Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
    .end local v5    # "$i$a$-forEach-PreferenceBindingManager$writeToCacheAll$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 39
    :cond_0
    nop

    .line 26
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
