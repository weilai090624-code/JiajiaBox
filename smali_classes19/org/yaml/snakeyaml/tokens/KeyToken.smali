.class public final Lorg/yaml/snakeyaml/tokens/KeyToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "KeyToken.java"


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 3
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .registers 2

    .line 28
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method
