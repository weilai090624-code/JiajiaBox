.class public final Lorg/yaml/snakeyaml/tokens/AnchorToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "AnchorToken.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 24
    invoke-direct {p0, p2, p3}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 25
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/AnchorToken;->value:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 34
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/AnchorToken;->value:Ljava/lang/String;

    return-object v0
.end method
