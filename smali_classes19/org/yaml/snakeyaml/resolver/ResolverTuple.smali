.class final Lorg/yaml/snakeyaml/resolver/ResolverTuple;
.super Ljava/lang/Object;
.source "ResolverTuple.java"


# instance fields
.field private final regexp:Ljava/util/regex/Pattern;

.field private final tag:Lorg/yaml/snakeyaml/nodes/Tag;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 28
    iput-object p2, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->regexp:Ljava/util/regex/Pattern;

    .line 29
    return-void
.end method


# virtual methods
.method public getRegexp()Ljava/util/regex/Pattern;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->regexp:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getTag()Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tuple tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " regexp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->regexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
