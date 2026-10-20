.class public final Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/ActionsKt;
.super Ljava/lang/Object;
.source "Actions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0019\u0008\u0002\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "pinchZoom",
        "",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
        "block",
        "Lkotlin/Function1;",
        "Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;",
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
.method public static final pinchZoom(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$this$pinchZoom"    # Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;

    invoke-direct {v0}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugin(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V

    .line 23
    return-void
.end method

.method public static synthetic pinchZoom$default(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 21
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/ActionsKt$pinchZoom$1;->INSTANCE:Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/ActionsKt$pinchZoom$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/ActionsKt;->pinchZoom(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
