.class public final Lorg/yaml/snakeyaml/tokens/TagToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "TagToken.java"


# instance fields
.field private final value:Lorg/yaml/snakeyaml/tokens/TagTuple;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/tokens/TagTuple;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 0
    .param p1, "value"    # Lorg/yaml/snakeyaml/tokens/TagTuple;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 24
    invoke-direct {p0, p2, p3}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 25
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/TagToken;->value:Lorg/yaml/snakeyaml/tokens/TagTuple;

    .line 26
    return-void
.end method


# virtual methods
.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 34
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public getValue()Lorg/yaml/snakeyaml/tokens/TagTuple;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/TagToken;->value:Lorg/yaml/snakeyaml/tokens/TagTuple;

    return-object v0
.end method
