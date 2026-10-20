.class public final Lorg/yaml/snakeyaml/tokens/CommentToken;
.super Lorg/yaml/snakeyaml/tokens/Token;
.source "CommentToken.java"


# instance fields
.field private final type:Lorg/yaml/snakeyaml/comments/CommentType;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 0
    .param p1, "type"    # Lorg/yaml/snakeyaml/comments/CommentType;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 28
    invoke-direct {p0, p3, p4}, Lorg/yaml/snakeyaml/tokens/Token;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 29
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/CommentToken;->type:Lorg/yaml/snakeyaml/comments/CommentType;

    .line 31
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lorg/yaml/snakeyaml/tokens/CommentToken;->value:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/CommentToken;->type:Lorg/yaml/snakeyaml/comments/CommentType;

    return-object v0
.end method

.method public getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 45
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/CommentToken;->value:Ljava/lang/String;

    return-object v0
.end method
