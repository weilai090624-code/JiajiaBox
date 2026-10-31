.class public final Lorg/yaml/snakeyaml/tokens/TagTuple;
.super Ljava/lang/Object;
.source "TagTuple.java"


# instance fields
.field private final handle:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p2, :cond_a

    .line 26
    iput-object p1, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->handle:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->suffix:Ljava/lang/String;

    .line 28
    return-void

    .line 24
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Suffix must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHandle()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->handle:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/TagTuple;->suffix:Ljava/lang/String;

    return-object v0
.end method
