.class public Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;
.super Ljava/lang/Object;
.source "NumberAnchorGenerator.java"

# interfaces
.implements Lorg/yaml/snakeyaml/serializer/AnchorGenerator;


# instance fields
.field private lastAnchorId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "lastAnchorId"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;->lastAnchorId:I

    .line 27
    iput p1, p0, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;->lastAnchorId:I

    .line 28
    return-void
.end method


# virtual methods
.method public nextAnchor(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 31
    iget v0, p0, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;->lastAnchorId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;->lastAnchorId:I

    .line 32
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 33
    .local v0, "format":Ljava/text/NumberFormat;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 36
    iget v1, p0, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;->lastAnchorId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "anchorId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
