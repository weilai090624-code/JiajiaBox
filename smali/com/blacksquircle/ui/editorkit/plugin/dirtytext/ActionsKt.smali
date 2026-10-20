.class public final Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/ActionsKt;
.super Ljava/lang/Object;
.source "Actions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0008\u001a\u00020\t*\u00020\n2\u0019\u0008\u0002\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\u000c\u00a2\u0006\u0002\u0008\u000e\",\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u00032\u0008\u0010\u0000\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "value",
        "Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;",
        "onChangeListener",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;",
        "getOnChangeListener",
        "(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;)Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;",
        "setOnChangeListener",
        "(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;)V",
        "changeDetector",
        "",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;",
        "Lkotlin/ExtensionFunctionType;",
        "editorkit_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final changeDetector(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$this$changeDetector"    # Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;

    invoke-direct {v0}, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugin(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V

    .line 30
    return-void
.end method

.method public static synthetic changeDetector$default(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 28
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/ActionsKt$changeDetector$1;->INSTANCE:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/ActionsKt$changeDetector$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/ActionsKt;->changeDetector(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final getOnChangeListener(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;)Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;
    .locals 1
    .param p0, "$this$onChangeListener"    # Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-string v0, "dirty-text-9124"

    invoke-interface {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;->findPlugin(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->getOnChangeListener()Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final setOnChangeListener(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;)V
    .locals 1
    .param p0, "$this$onChangeListener"    # Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;
    .param p1, "value"    # Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v0, "dirty-text-9124"

    invoke-interface {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;->findPlugin(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->setOnChangeListener(Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;)V

    .line 26
    :goto_0
    return-void
.end method
