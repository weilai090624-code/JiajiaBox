.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;
.super Ljava/lang/Object;
.source "SafeRepresenter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentBoolean"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 153
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "true"

    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "false"

    .line 158
    .restart local v0    # "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1, v2, v0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method
