.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlInt"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 19
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    move-object/from16 v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    .line 230
    .local v2, "sign":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 231
    .local v4, "first":C
    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_29

    .line 232
    const/4 v2, -0x1

    .line 233
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 234
    :cond_29
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_31

    .line 235
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    :cond_31
    :goto_31
    const/16 v5, 0xa

    .line 238
    .local v5, "base":I
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 240
    :cond_40
    const-string v3, "0b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x2

    if-eqz v3, :cond_4f

    .line 241
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    const/4 v3, 0x2

    .end local v5    # "base":I
    .local v3, "base":I
    goto :goto_6a

    .line 243
    .end local v3    # "base":I
    .restart local v5    # "base":I
    :cond_4f
    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 244
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    const/16 v3, 0x10

    .end local v5    # "base":I
    .restart local v3    # "base":I
    goto :goto_6a

    .line 246
    .end local v3    # "base":I
    .restart local v5    # "base":I
    :cond_5e
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 247
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    const/16 v3, 0x8

    .line 261
    .end local v5    # "base":I
    .restart local v3    # "base":I
    :goto_6a
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    # invokes: Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createNumber(ILjava/lang/String;I)Ljava/lang/Number;
    invoke-static {v5, v2, v1, v3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v5

    return-object v5

    .line 249
    .end local v3    # "base":I
    .restart local v5    # "base":I
    :cond_71
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_ab

    .line 250
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "digits":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 252
    .local v7, "bes":I
    const/4 v9, 0x0

    .line 253
    .local v9, "val":I
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v11, v3

    .local v11, "j":I
    :goto_84
    if-ge v10, v11, :cond_9c

    .line 254
    int-to-long v12, v9

    sub-int v14, v11, v10

    sub-int/2addr v14, v6

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move/from16 v16, v9

    .end local v9    # "val":I
    .local v16, "val":I
    int-to-long v8, v7

    mul-long v14, v14, v8

    add-long/2addr v12, v14

    long-to-int v9, v12

    .line 255
    .end local v16    # "val":I
    .restart local v9    # "val":I
    mul-int/lit8 v7, v7, 0x3c

    .line 253
    add-int/lit8 v10, v10, 0x1

    goto :goto_84

    :cond_9c
    move/from16 v16, v9

    .line 257
    .end local v9    # "val":I
    .end local v10    # "i":I
    .end local v11    # "j":I
    .restart local v16    # "val":I
    iget-object v6, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    # invokes: Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createNumber(ILjava/lang/String;I)Ljava/lang/Number;
    invoke-static {v6, v2, v8, v9}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v6

    return-object v6

    .line 259
    .end local v3    # "digits":[Ljava/lang/String;
    .end local v7    # "bes":I
    .end local v16    # "val":I
    :cond_ab
    const/16 v9, 0xa

    iget-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    # invokes: Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createNumber(ILjava/lang/String;I)Ljava/lang/Number;
    invoke-static {v3, v2, v1, v9}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v3

    return-object v3
.end method
