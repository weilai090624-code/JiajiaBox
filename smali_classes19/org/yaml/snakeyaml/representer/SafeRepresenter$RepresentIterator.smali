.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;
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
    name = "RepresentIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .line 197
    move-object v0, p1

    check-cast v0, Ljava/util/Iterator;

    .line 198
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v2, v3, v4}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v2

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$IteratorWrapper;

    invoke-direct {v3, v0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$IteratorWrapper;-><init>(Ljava/util/Iterator;)V

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v1, v2, v3, v4}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method
