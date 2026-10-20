.class public final Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;
.super Ljava/lang/Object;
.source "PluginSupplier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0006\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u0008\u00a2\u0006\u0002\u0010\tJ\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
        "",
        "()V",
        "plugins",
        "",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "plugin",
        "",
        "T",
        "(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V",
        "supply",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;


# instance fields
.field private final plugins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugins:Ljava/util/Set;

    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public final plugin(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public final supply()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->plugins:Ljava/util/Set;

    return-object v0
.end method
