.class public final Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;
.super Ljava/lang/Object;
.source "Shortcut.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;",
        "",
        "ctrl",
        "",
        "shift",
        "alt",
        "keyCode",
        "",
        "(ZZZI)V",
        "getAlt",
        "()Z",
        "getCtrl",
        "getKeyCode",
        "()I",
        "getShift",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final alt:Z

.field private final ctrl:Z

.field private final keyCode:I

.field private final shift:Z


# direct methods
.method public constructor <init>(ZZZI)V
    .locals 0
    .param p1, "ctrl"    # Z
    .param p2, "shift"    # Z
    .param p3, "alt"    # Z
    .param p4, "keyCode"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    .line 21
    iput-boolean p2, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    .line 22
    iput-boolean p3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    .line 23
    iput p4, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;ZZZIILjava/lang/Object;)Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->copy(ZZZI)Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    return v0
.end method

.method public final copy(ZZZI)Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;
    .locals 1

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;-><init>(ZZZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;

    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    iget v1, v1, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAlt()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    return v0
.end method

.method public final getCtrl()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    return v0
.end method

.method public final getKeyCode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    return v0
.end method

.method public final getShift()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->ctrl:Z

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->shift:Z

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->alt:Z

    iget v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/shortcuts/Shortcut;->keyCode:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut(ctrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", shift="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
