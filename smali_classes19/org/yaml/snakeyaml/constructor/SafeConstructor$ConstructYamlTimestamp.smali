.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructYamlTimestamp"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 361
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 25
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 371
    .local v1, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "nodeValue":Ljava/lang/String;
    # getter for: Lorg/yaml/snakeyaml/constructor/SafeConstructor;->YMD_REGEXP:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$200()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 373
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string v5, "UTC"

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_5c

    .line 374
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "year_s":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "month_s":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, "day_s":Ljava/lang/String;
    invoke-static {v5}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    .line 378
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 379
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 381
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {v5, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 382
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 383
    iget-object v5, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 385
    .end local v4    # "year_s":Ljava/lang/String;
    .end local v6    # "day_s":Ljava/lang/String;
    .end local v10    # "month_s":Ljava/lang/String;
    :cond_5c
    # getter for: Lorg/yaml/snakeyaml/constructor/SafeConstructor;->TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->access$300()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 386
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 389
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    .restart local v4    # "year_s":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 391
    .restart local v10    # "month_s":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 392
    .restart local v6    # "day_s":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, "hour_s":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, "min_s":Ljava/lang/String;
    const/4 v13, 0x6

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 396
    .local v13, "seconds":Ljava/lang/String;
    const/4 v14, 0x7

    invoke-virtual {v3, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 397
    .local v14, "millis":Ljava/lang/String;
    if-eqz v14, :cond_a2

    .line 398
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v7, "."

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 400
    :cond_a2
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 401
    .local v16, "fractions":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    .line 402
    .local v9, "sec_s":I
    int-to-double v7, v9

    sub-double v7, v16, v7

    const-wide v19, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v8, v7

    .line 404
    .local v8, "usec":I
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "timezoneh_s":Ljava/lang/String;
    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 407
    .local v15, "timezonem_s":Ljava/lang/String;
    if-eqz v7, :cond_106

    .line 408
    if-eqz v15, :cond_e4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .local v20, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e8

    .end local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :cond_e4
    move-object/from16 v20, v1

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    const-string v1, "00"

    .line 409
    .local v1, "time":Ljava/lang/String;
    :goto_e8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "match":Ljava/util/regex/Matcher;
    .local v21, "match":Ljava/util/regex/Matcher;
    const-string v3, "GMT"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 410
    .local v1, "timeZone":Ljava/util/TimeZone;
    goto :goto_10e

    .line 412
    .end local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .local v1, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :cond_106
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .restart local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    invoke-static {v5}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 414
    .local v1, "timeZone":Ljava/util/TimeZone;
    :goto_10e
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    .line 415
    iget-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .local v22, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 417
    iget-object v3, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v1

    const/4 v1, 0x2

    invoke-virtual {v3, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 418
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 419
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 420
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 421
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 422
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 423
    iget-object v1, v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 387
    .end local v4    # "year_s":Ljava/lang/String;
    .end local v6    # "day_s":Ljava/lang/String;
    .end local v7    # "timezoneh_s":Ljava/lang/String;
    .end local v8    # "usec":I
    .end local v9    # "sec_s":I
    .end local v10    # "month_s":Ljava/lang/String;
    .end local v11    # "hour_s":Ljava/lang/String;
    .end local v12    # "min_s":Ljava/lang/String;
    .end local v13    # "seconds":Ljava/lang/String;
    .end local v14    # "millis":Ljava/lang/String;
    .end local v15    # "timezonem_s":Ljava/lang/String;
    .end local v16    # "fractions":D
    .end local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .end local v22    # "timeZone":Ljava/util/TimeZone;
    .local v1, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :cond_160
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    .end local v1    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v3    # "match":Ljava/util/regex/Matcher;
    .restart local v20    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .line 365
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->calendar:Ljava/util/Calendar;

    return-object v0
.end method
