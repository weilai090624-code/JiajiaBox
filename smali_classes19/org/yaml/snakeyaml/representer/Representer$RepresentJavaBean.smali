.class public Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;
.super Ljava/lang/Object;
.source "Representer.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/Representer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentJavaBean"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/Representer;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;->this$0:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;->this$0:Lorg/yaml/snakeyaml/representer/Representer;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;->this$0:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/representer/Representer;->getProperties(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/yaml/snakeyaml/representer/Representer;->representJavaBean(Ljava/util/Set;Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-result-object v0

    return-object v0
.end method
