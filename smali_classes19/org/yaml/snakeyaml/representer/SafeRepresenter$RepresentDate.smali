.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;
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
    name = "RepresentDate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 18
    .param p1, "data"    # Ljava/lang/Object;

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Ljava/util/Calendar;

    if-eqz v2, :cond_c

    .line 343
    move-object v2, v1

    check-cast v2, Ljava/util/Calendar;

    .local v2, "calendar":Ljava/util/Calendar;
    goto :goto_29

    .line 345
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_c
    iget-object v2, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_1f

    :cond_1b
    iget-object v2, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v2, v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    :goto_1f
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 347
    .restart local v2    # "calendar":Ljava/util/Calendar;
    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 349
    :goto_29
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 350
    .local v4, "years":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    .line 351
    .local v5, "months":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 352
    .local v3, "days":I
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 353
    .local v6, "hour24":I
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 354
    .local v7, "minutes":I
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 355
    .local v8, "seconds":I
    const/16 v9, 0xe

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 356
    .local v9, "millis":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .local v10, "buffer":Ljava/lang/StringBuilder;
    :goto_5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x4

    const-string v13, "0"

    if-ge v11, v12, :cond_68

    .line 359
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 361
    :cond_68
    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/16 v12, 0xa

    if-ge v5, v12, :cond_74

    .line 363
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_74
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    if-ge v3, v12, :cond_83

    .line 368
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_83
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v11, "T"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    if-ge v6, v12, :cond_94

    .line 373
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_94
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    if-ge v7, v12, :cond_a5

    .line 378
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_a5
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    if-ge v8, v12, :cond_b4

    .line 383
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_b4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    if-lez v9, :cond_db

    .line 387
    if-ge v9, v12, :cond_c5

    .line 388
    const-string v11, ".00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    .line 389
    :cond_c5
    const/16 v11, 0x64

    if-ge v9, v11, :cond_cf

    .line 390
    const-string v11, ".0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    .line 392
    :cond_cf
    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :goto_d4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_db
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    .line 399
    .local v11, "gmtOffset":I
    if-nez v11, :cond_f3

    .line 400
    const/16 v12, 0x5a

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_124

    .line 402
    :cond_f3
    if-gez v11, :cond_fd

    .line 403
    const/16 v13, 0x2d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    mul-int/lit8 v11, v11, -0x1

    goto :goto_102

    .line 406
    :cond_fd
    const/16 v13, 0x2b

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :goto_102
    const v13, 0xea60

    div-int v13, v11, v13

    .line 409
    .local v13, "minutesOffset":I
    div-int/lit8 v14, v13, 0x3c

    .line 410
    .local v14, "hoursOffset":I
    rem-int/lit8 v15, v13, 0x3c

    .line 412
    .local v15, "partOfHour":I
    const/16 v1, 0x30

    if-ge v14, v12, :cond_112

    .line 413
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    :cond_112
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const/16 v1, 0x3a

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    if-ge v15, v12, :cond_121

    .line 418
    const/16 v1, 0x30

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    :cond_121
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .end local v13    # "minutesOffset":I
    .end local v14    # "hoursOffset":I
    .end local v15    # "partOfHour":I
    :goto_124
    iget-object v1, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v12, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v12, v13, v14}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-virtual {v1, v12, v13, v14}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method
