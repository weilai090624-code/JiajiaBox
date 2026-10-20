.class Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
.super Ljava/lang/Object;
.source "VersionTagsTuple.java"


# instance fields
.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V
    .locals 0
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/DumperOptions$Version;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 31
    iput-object p2, p0, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->tags:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 44
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    iget-object v1, p0, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->tags:Ljava/util/Map;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "VersionTagsTuple<%s, %s>"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
