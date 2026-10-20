.class public final Lorg/yaml/snakeyaml/tokens/DirectiveToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "DirectiveToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/yaml/snakeyaml/tokens/Token;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/yaml/snakeyaml/error/Mark;",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/yaml/snakeyaml/tokens/DirectiveToken;, "Lorg/yaml/snakeyaml/tokens/DirectiveToken<TT;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p3, p4}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 29
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->name:Ljava/lang/String;

    .line 30
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two strings must be provided instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->value:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    .local p0, "this":Lorg/yaml/snakeyaml/tokens/DirectiveToken;, "Lorg/yaml/snakeyaml/tokens/DirectiveToken<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 47
    .local p0, "this":Lorg/yaml/snakeyaml/tokens/DirectiveToken;, "Lorg/yaml/snakeyaml/tokens/DirectiveToken<TT;>;"
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/yaml/snakeyaml/tokens/DirectiveToken;, "Lorg/yaml/snakeyaml/tokens/DirectiveToken<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->value:Ljava/util/List;

    return-object v0
.end method
