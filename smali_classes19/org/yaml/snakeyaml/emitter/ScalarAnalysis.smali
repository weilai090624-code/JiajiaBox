.class public final Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
.super Ljava/lang/Object;
.source "ScalarAnalysis.java"


# instance fields
.field private allowBlock:Z

.field private allowBlockPlain:Z

.field private allowFlowPlain:Z

.field private allowSingleQuoted:Z

.field private empty:Z

.field private multiline:Z

.field private scalar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .registers 8
    .param p1, "scalar"    # Ljava/lang/String;
    .param p2, "empty"    # Z
    .param p3, "multiline"    # Z
    .param p4, "allowFlowPlain"    # Z
    .param p5, "allowBlockPlain"    # Z
    .param p6, "allowSingleQuoted"    # Z
    .param p7, "allowBlock"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    .line 34
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    .line 35
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    .line 36
    iput-boolean p4, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowFlowPlain:Z

    .line 37
    iput-boolean p5, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlockPlain:Z

    .line 38
    iput-boolean p6, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowSingleQuoted:Z

    .line 39
    iput-boolean p7, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlock:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getScalar()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->scalar:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowBlock()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlock:Z

    return v0
.end method

.method public isAllowBlockPlain()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowBlockPlain:Z

    return v0
.end method

.method public isAllowFlowPlain()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowFlowPlain:Z

    return v0
.end method

.method public isAllowSingleQuoted()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->allowSingleQuoted:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->empty:Z

    return v0
.end method

.method public isMultiline()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->multiline:Z

    return v0
.end method
