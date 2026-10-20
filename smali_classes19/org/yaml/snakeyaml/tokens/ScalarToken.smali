.class public final Lorg/yaml/snakeyaml/tokens/ScalarToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "ScalarToken.java"


# instance fields
.field private final plain:Z

.field private final style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "plain"    # Z

    .line 27
    sget-object v5, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "plain"    # Z
    .param p3, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "style"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 31
    invoke-direct {p0, p3, p4}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 32
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->value:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->plain:Z

    .line 34
    if-eqz p5, :cond_0

    .line 35
    iput-object p5, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 36
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Style must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPlain()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->plain:Z

    return v0
.end method

.method public getStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 52
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/ScalarToken;->value:Ljava/lang/String;

    return-object v0
.end method
