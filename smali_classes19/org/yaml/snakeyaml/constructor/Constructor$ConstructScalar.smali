.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructScalar"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method

.method private constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;
    .registers 11
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 432
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_16

    .line 433
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 434
    .local v0, "stringConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_2a2

    .end local v0    # "result":Ljava/lang/Object;
    :cond_16
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_291

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_20

    goto/16 :goto_291

    .line 438
    :cond_20
    const-class v0, Ljava/lang/Character;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_23f

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2c

    goto/16 :goto_23f

    .line 449
    :cond_2c
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8f

    .line 450
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 451
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 452
    .local v4, "date":Ljava/util/Date;
    const-class v5, Ljava/util/Date;

    if-ne p1, v5, :cond_4e

    .line 453
    move-object v1, v4

    move-object v0, v1

    .local v1, "result":Ljava/lang/Object;
    goto :goto_69

    .line 456
    .end local v1    # "result":Ljava/lang/Object;
    :cond_4e
    :try_start_4e
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 457
    .local v5, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_68} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_68} :catch_6b

    .line 462
    .end local v5    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    .line 464
    .end local v1    # "result":Ljava/lang/Object;
    .end local v4    # "date":Ljava/util/Date;
    .local v0, "result":Ljava/lang/Object;
    :goto_69
    goto/16 :goto_2a2

    .line 460
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v4    # "date":Ljava/util/Date;
    :catch_6b
    move-exception v1

    move-object v2, v3

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    .local v2, "result":Ljava/lang/Object;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot construct: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/lang/Object;
    :catch_8c
    move-exception v1

    move-object v2, v3

    .line 459
    .local v1, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "result":Ljava/lang/Object;
    throw v1

    .line 464
    .end local v0    # "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v4    # "date":Ljava/util/Date;
    :cond_8f
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_208

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_208

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_208

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_208

    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_a5

    goto/16 :goto_208

    .line 475
    :cond_a5
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_18b

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_18b

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_18b

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_18b

    const-class v0, Ljava/math/BigInteger;

    if-eq p1, v0, :cond_18b

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_18b

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_18b

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_18b

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_cb

    goto/16 :goto_18b

    .line 492
    :cond_cb
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 493
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "enumValueName":Ljava/lang/String;
    :try_start_d7
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v1, v1, Lorg/yaml/snakeyaml/constructor/Constructor;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/LoaderOptions;->isEnumCaseSensitive()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 496
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;
    goto :goto_ea

    .line 498
    .end local v1    # "result":Ljava/lang/Object;
    :cond_e6
    invoke-static {p1, v0}, Lorg/yaml/snakeyaml/util/EnumUtils;->findEnumInsensitiveCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_ea} :catch_ee

    .line 503
    .restart local v1    # "result":Ljava/lang/Object;
    :goto_ea
    nop

    .line 504
    .end local v0    # "enumValueName":Ljava/lang/String;
    move-object v0, v1

    goto/16 :goto_2a2

    .line 500
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "enumValueName":Ljava/lang/String;
    :catch_ee
    move-exception v1

    move-object v2, v3

    .line 501
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v2    # "result":Ljava/lang/Object;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find enum value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for enum class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    .end local v0    # "enumValueName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_117
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 505
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;-><init>()V

    .line 506
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    .line 507
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 508
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_2a2

    .end local v0    # "result":Ljava/lang/Object;
    :cond_12d
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 510
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;

    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    .line 511
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_2a2

    .end local v0    # "result":Ljava/lang/Object;
    :cond_142
    const-class v0, Ljava/util/UUID;

    if-ne v0, p1, :cond_150

    .line 513
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_2a2

    .line 515
    .end local v0    # "result":Ljava/lang/Object;
    :cond_150
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 516
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_2a2

    .line 518
    .end local v0    # "result":Ljava/lang/Object;
    :cond_172
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_18b
    :goto_18b
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 479
    .local v0, "intConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    .local v1, "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Byte;

    if-eq p1, v2, :cond_1f5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1a4

    goto :goto_1f5

    .line 482
    :cond_1a4
    const-class v2, Ljava/lang/Short;

    if-eq p1, v2, :cond_1e3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1ad

    goto :goto_1e3

    .line 484
    :cond_1ad
    const-class v2, Ljava/lang/Integer;

    if-eq p1, v2, :cond_1d5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1b6

    goto :goto_1d5

    .line 486
    :cond_1b6
    const-class v2, Ljava/lang/Long;

    if-eq p1, v2, :cond_1cb

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1bf

    goto :goto_1cb

    .line 490
    :cond_1bf
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    move-object v0, v1

    goto :goto_206

    .line 487
    :cond_1cb
    :goto_1cb
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    goto :goto_206

    .line 485
    :cond_1d5
    :goto_1d5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_206

    .line 483
    :cond_1e3
    :goto_1e3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    move-object v0, v1

    goto :goto_206

    .line 481
    :cond_1f5
    :goto_1f5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    move-object v0, v1

    .line 492
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_206
    goto/16 :goto_2a2

    .line 466
    .end local v0    # "result":Ljava/lang/Object;
    :cond_208
    :goto_208
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_217

    .line 467
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_2a2

    .line 469
    .end local v0    # "result":Ljava/lang/Object;
    :cond_217
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 470
    .local v0, "doubleConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 471
    .restart local v1    # "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Float;

    if-eq p1, v2, :cond_232

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_230

    goto :goto_232

    :cond_230
    move-object v0, v1

    goto :goto_23e

    .line 472
    :cond_232
    :goto_232
    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .line 474
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_23e
    goto :goto_2a2

    .line 439
    .end local v0    # "result":Ljava/lang/Object;
    :cond_23f
    :goto_23f
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 440
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 441
    .local v3, "ch":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_25a

    .line 442
    const/4 v1, 0x0

    move-object v0, v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_269

    .line 443
    .end local v1    # "result":Ljava/lang/Object;
    :cond_25a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_26a

    .line 447
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    move-object v0, v1

    .line 449
    .end local v3    # "ch":Ljava/lang/String;
    .local v0, "result":Ljava/lang/Object;
    :goto_269
    goto :goto_2a2

    .line 444
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "ch":Ljava/lang/String;
    :cond_26a
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid node Character: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'; length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    .end local v0    # "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v3    # "ch":Ljava/lang/String;
    :cond_291
    :goto_291
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 437
    .local v0, "boolConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 521
    :goto_2a2
    return-object v0
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 12

    .line 359
    check-cast p1, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 360
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 363
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, p1, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->newInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p1

    .line 364
    :catch_e
    move-exception v2

    .line 368
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_130

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_130

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_130

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_130

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_130

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_130

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_130

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_130

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_130

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_130

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_130

    const-class v2, Ljava/util/UUID;

    if-ne v0, v2, :cond_5b

    goto/16 :goto_130

    .line 378
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 380
    nop

    .line 381
    nop

    .line 382
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_65
    const/4 v7, 0x1

    if-ge v5, v3, :cond_77

    aget-object v8, v2, v5

    .line 383
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v7, :cond_74

    .line 384
    add-int/lit8 v6, v6, 0x1

    .line 385
    move-object v4, v8

    .line 382
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 389
    :cond_77
    if-nez v4, :cond_a8

    .line 391
    :try_start_79
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, p1, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->newInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_7f
    .catch Ljava/lang/InstantiationException; {:try_start_79 .. :try_end_7f} :catch_80

    return-object p1

    .line 392
    :catch_80
    move-exception p1

    .line 393
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No single argument constructor found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_a8
    const-string v2, "Can\'t construct a java object for scalar "

    if-ne v6, v7, :cond_b7

    .line 397
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c8

    .line 406
    :cond_b7
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v3, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;

    move-result-object v3

    .line 408
    :try_start_bd
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c7} :catch_106

    .line 413
    move-object v0, v3

    .line 416
    :goto_c8
    :try_start_c8
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 417
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d3} :catch_d4

    .line 423
    goto :goto_134

    .line 418
    :catch_d4
    move-exception v0

    move-object v8, v0

    .line 419
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v0

    .line 409
    :catch_106
    move-exception v0

    .line 410
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; No String constructor found. Exception="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 375
    :cond_130
    :goto_130
    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object p1

    .line 425
    :goto_134
    return-object p1
.end method
