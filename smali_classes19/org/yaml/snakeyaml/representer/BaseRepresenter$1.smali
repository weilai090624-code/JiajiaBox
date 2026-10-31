.class Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;
.super Ljava/util/IdentityHashMap;
.source "BaseRepresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/BaseRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "Ljava/lang/Object;",
        "Lorg/yaml/snakeyaml/nodes/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d627f4e9b8f4d0eL


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/BaseRepresenter;


# direct methods
.method constructor <init>(Lorg/yaml/snakeyaml/representer/BaseRepresenter;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;->this$0:Lorg/yaml/snakeyaml/representer/BaseRepresenter;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 52
    move-object v0, p2

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Node;

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;->put(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 56
    new-instance v0, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-direct {v0, p2}, Lorg/yaml/snakeyaml/nodes/AnchorNode;-><init>(Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-super {p0, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Node;

    return-object v0
.end method
