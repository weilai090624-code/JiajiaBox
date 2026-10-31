.class public Lorg/yaml/snakeyaml/events/ImplicitTuple;
.super Ljava/lang/Object;
.source "ImplicitTuple.java"


# instance fields
.field private final nonPlain:Z

.field private final plain:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3
    .param p1, "plain"    # Z
    .param p2, "nonplain"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->plain:Z

    .line 31
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->nonPlain:Z

    .line 32
    return-void
.end method


# virtual methods
.method public bothFalse()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->plain:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->nonPlain:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canOmitTagInNonPlainScalar()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->nonPlain:Z

    return v0
.end method

.method public canOmitTagInPlainScalar()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->plain:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "implicit=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->plain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/events/ImplicitTuple;->nonPlain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
