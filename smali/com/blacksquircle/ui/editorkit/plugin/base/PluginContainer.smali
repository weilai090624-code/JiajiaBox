.class public interface abstract Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;
.super Ljava/lang/Object;
.source "PluginContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u001f\u0010\n\u001a\u00020\u000b\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00042\u0006\u0010\u000c\u001a\u0002H\u0003H&\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;",
        "",
        "findPlugin",
        "T",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "pluginId",
        "",
        "(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "hasPlugin",
        "",
        "installPlugin",
        "",
        "plugin",
        "(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V",
        "plugins",
        "supplier",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
        "uninstallPlugin",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract findPlugin(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract hasPlugin(Ljava/lang/String;)Z
.end method

.method public abstract installPlugin(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public abstract plugins(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)V
.end method

.method public abstract uninstallPlugin(Ljava/lang/String;)V
.end method
