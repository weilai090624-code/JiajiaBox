.class Lorg/yaml/snakeyaml/env/EnvScalarConstructor$ConstructEnv;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "EnvScalarConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/env/EnvScalarConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstructEnv"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/env/EnvScalarConstructor;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/env/EnvScalarConstructor;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/yaml/snakeyaml/env/EnvScalarConstructor$ConstructEnv;->this$0:Lorg/yaml/snakeyaml/env/EnvScalarConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/env/EnvScalarConstructor;Lorg/yaml/snakeyaml/env/EnvScalarConstructor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/env/EnvScalarConstructor;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/env/EnvScalarConstructor$1;

    .line 43
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/env/EnvScalarConstructor$ConstructEnv;-><init>(Lorg/yaml/snakeyaml/env/EnvScalarConstructor;)V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 45
    iget-object v0, p0, Lorg/yaml/snakeyaml/env/EnvScalarConstructor$ConstructEnv;->this$0:Lorg/yaml/snakeyaml/env/EnvScalarConstructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/env/EnvScalarConstructor;->access$100(Lorg/yaml/snakeyaml/env/EnvScalarConstructor;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "val":Ljava/lang/String;
    sget-object v1, Lorg/yaml/snakeyaml/env/EnvScalarConstructor;->ENV_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 47
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 48
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "name":Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "value":Ljava/lang/String;
    const-string v4, "separator"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "separator":Ljava/lang/String;
    iget-object v5, p0, Lorg/yaml/snakeyaml/env/EnvScalarConstructor$ConstructEnv;->this$0:Lorg/yaml/snakeyaml/env/EnvScalarConstructor;

    if-eqz v3, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    iget-object v7, p0, Lorg/yaml/snakeyaml/env/EnvScalarConstructor$ConstructEnv;->this$0:Lorg/yaml/snakeyaml/env/EnvScalarConstructor;

    invoke-virtual {v7, v2}, Lorg/yaml/snakeyaml/env/EnvScalarConstructor;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v4, v6, v7}, Lorg/yaml/snakeyaml/env/EnvScalarConstructor;->apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
