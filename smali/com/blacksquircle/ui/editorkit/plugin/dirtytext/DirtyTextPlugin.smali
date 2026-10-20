.class public final Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;
.super Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "DirtyTextPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "()V",
        "isDirty",
        "",
        "onChangeListener",
        "Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;",
        "getOnChangeListener",
        "()Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;",
        "setOnChangeListener",
        "(Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;)V",
        "afterTextChanged",
        "",
        "text",
        "Landroid/text/Editable;",
        "onAttached",
        "editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "onDetached",
        "setTextContent",
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
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;

.field public static final PLUGIN_ID:Ljava/lang/String; = "dirty-text-9124"


# instance fields
.field private isDirty:Z

.field private onChangeListener:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    const-string v0, "dirty-text-9124"

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "text"    # Landroid/text/Editable;

    .line 41
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterTextChanged(Landroid/text/Editable;)V

    .line 42
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->isDirty:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;->onContentChanged()V

    .line 45
    :cond_0
    return-void
.end method

.method public final getOnChangeListener()Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    return-object v0
.end method

.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 2
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 32
    const-string v0, "dirty-text-9124"

    const-string v1, "DirtyText plugin loaded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public onDetached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDetached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    .line 38
    return-void
.end method

.method public final setOnChangeListener(Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    .line 26
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->onChangeListener:Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/OnChangeListener;

    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextContent(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/dirtytext/DirtyTextPlugin;->isDirty:Z

    .line 50
    return-void
.end method
