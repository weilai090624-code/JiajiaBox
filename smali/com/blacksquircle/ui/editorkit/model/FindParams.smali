.class public final Lcom/blacksquircle/ui/editorkit/model/FindParams;
.super Ljava/lang/Object;
.source "FindParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/model/FindParams;",
        "",
        "query",
        "",
        "regex",
        "",
        "matchCase",
        "wordsOnly",
        "(Ljava/lang/String;ZZZ)V",
        "getMatchCase",
        "()Z",
        "getQuery",
        "()Ljava/lang/String;",
        "getRegex",
        "getWordsOnly",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final matchCase:Z

.field private final query:Ljava/lang/String;

.field private final regex:Z

.field private final wordsOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/blacksquircle/ui/editorkit/model/FindParams;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "regex"    # Z
    .param p3, "matchCase"    # Z
    .param p4, "wordsOnly"    # Z

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    .line 22
    iput-boolean p3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    .line 23
    iput-boolean p4, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 19
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 20
    const-string p1, ""

    .line 19
    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 21
    const/4 p2, 0x0

    .line 19
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 22
    const/4 p3, 0x0

    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 23
    const/4 p4, 0x0

    .line 19
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/model/FindParams;-><init>(Ljava/lang/String;ZZZ)V

    .line 24
    return-void
.end method

.method public static synthetic copy$default(Lcom/blacksquircle/ui/editorkit/model/FindParams;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/blacksquircle/ui/editorkit/model/FindParams;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->copy(Ljava/lang/String;ZZZ)Lcom/blacksquircle/ui/editorkit/model/FindParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZZ)Lcom/blacksquircle/ui/editorkit/model/FindParams;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/FindParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/model/FindParams;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/blacksquircle/ui/editorkit/model/FindParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/model/FindParams;

    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    iget-object v4, v1, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    iget-boolean v1, v1, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getMatchCase()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    return v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegex()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    return v0
.end method

.method public final getWordsOnly()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->query:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->regex:Z

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->matchCase:Z

    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindParams;->wordsOnly:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FindParams(query="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", regex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matchCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wordsOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
