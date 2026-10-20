.class final Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final INSTANCE_ID_Z:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final INSTANCE_ID_ZERO:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final style:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 3538
    const-string v20, "+Hmmss"

    const-string v21, "+H:mm:ss"

    const-string v0, "+HH"

    const-string v1, "+HHmm"

    const-string v2, "+HH:mm"

    const-string v3, "+HHMM"

    const-string v4, "+HH:MM"

    const-string v5, "+HHMMss"

    const-string v6, "+HH:MM:ss"

    const-string v7, "+HHMMSS"

    const-string v8, "+HH:MM:SS"

    const-string v9, "+HHmmss"

    const-string v10, "+HH:mm:ss"

    const-string v11, "+H"

    const-string v12, "+Hmm"

    const-string v13, "+H:mm"

    const-string v14, "+HMM"

    const-string v15, "+H:MM"

    const-string v16, "+HMMss"

    const-string v17, "+H:MM:ss"

    const-string v18, "+HMMSS"

    const-string v19, "+H:MM:SS"

    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3542
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "Z"

    const-string v2, "+HH:MM:ss"

    invoke-direct {v0, v2, v1}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 3543
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "0"

    invoke-direct {v0, v2, v1}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 3555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3556
    const-string v0, "pattern"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3557
    const-string v0, "noOffsetText"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3558
    invoke-direct {p0, p1}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3559
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v0, v0, 0xb

    iput v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    .line 3560
    iput-object p2, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 3561
    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 3564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3565
    sget-object v1, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3566
    return v0

    .line 3564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3569
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zone offset pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatZeroPad(ZILjava/lang/StringBuilder;)V
    .locals 2
    .param p1, "colon"    # Z
    .param p2, "value"    # I
    .param p3, "buf"    # Ljava/lang/StringBuilder;

    .line 3618
    if-eqz p1, :cond_0

    const-string v0, ":"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 3620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3621
    return-void
.end method

.method private isColon()Z
    .locals 1

    .line 3577
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-lez v0, :cond_0

    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPaddedHour()Z
    .locals 2

    .line 3573
    iget v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseDigits(Ljava/lang/CharSequence;ZI[I)Z
    .locals 7
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "arrayIndex"    # I
    .param p4, "array"    # [I

    .line 3772
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 3773
    .local v1, "pos":I
    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 3774
    return v2

    .line 3776
    :cond_0
    if-eqz p2, :cond_3

    if-eq p3, v2, :cond_3

    .line 3777
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 3780
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3778
    :cond_2
    :goto_0
    return v0

    .line 3782
    :cond_3
    :goto_1
    add-int/lit8 v3, v1, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 3783
    return v0

    .line 3785
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3786
    .local v1, "ch1":C
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3787
    .local v3, "ch2":C
    const/16 v5, 0x30

    if-lt v1, v5, :cond_8

    const/16 v6, 0x39

    if-gt v1, v6, :cond_8

    if-lt v3, v5, :cond_8

    if-le v3, v6, :cond_5

    goto :goto_3

    .line 3790
    :cond_5
    add-int/lit8 v5, v1, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v3, -0x30

    add-int/2addr v5, v6

    .line 3791
    .local v5, "value":I
    if-ltz v5, :cond_7

    const/16 v6, 0x3b

    if-le v5, v6, :cond_6

    goto :goto_2

    .line 3794
    :cond_6
    aput v5, p4, p3

    .line 3795
    aput v4, p4, v0

    .line 3796
    return v2

    .line 3792
    :cond_7
    :goto_2
    return v0

    .line 3788
    .end local v5    # "value":I
    :cond_8
    :goto_3
    return v0
.end method

.method private parseHour(Ljava/lang/CharSequence;Z[I)V
    .locals 2
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "paddedHour"    # Z
    .param p3, "array"    # [I

    .line 3738
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3740
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3741
    aget v0, p3, v1

    not-int v0, v0

    aput v0, p3, v1

    goto :goto_0

    .line 3745
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, p3}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3747
    :cond_1
    :goto_0
    return-void
.end method

.method private parseMinute(Ljava/lang/CharSequence;ZZ[I)V
    .locals 2
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "mandatory"    # Z
    .param p4, "array"    # [I

    .line 3750
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p4}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3751
    if-eqz p3, :cond_0

    .line 3752
    const/4 v0, 0x0

    aget v1, p4, v0

    not-int v1, v1

    aput v1, p4, v0

    .line 3755
    :cond_0
    return-void
.end method

.method private parseOptionalMinuteSecond(Ljava/lang/CharSequence;Z[I)V
    .locals 1
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "array"    # [I

    .line 3766
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3767
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    .line 3769
    :cond_0
    return-void
.end method

.method private parseSecond(Ljava/lang/CharSequence;ZZ[I)V
    .locals 2
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "isColon"    # Z
    .param p3, "mandatory"    # Z
    .param p4, "array"    # [I

    .line 3758
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p4}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3759
    if-eqz p3, :cond_0

    .line 3760
    const/4 v0, 0x0

    aget v1, p4, v0

    not-int v1, v1

    aput v1, p4, v0

    .line 3763
    :cond_0
    return-void
.end method

.method private parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V
    .locals 11
    .param p1, "parseText"    # Ljava/lang/CharSequence;
    .param p2, "minDigits"    # I
    .param p3, "maxDigits"    # I
    .param p4, "array"    # [I

    .line 3803
    const/4 v0, 0x0

    aget v1, p4, v0

    .line 3804
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 3805
    .local v2, "available":I
    new-array v3, p3, [C

    .line 3806
    .local v3, "chars":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x30

    if-ge v4, p3, :cond_3

    .line 3807
    add-int/lit8 v6, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 3808
    goto :goto_2

    .line 3810
    :cond_0
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "pos":I
    .local v6, "pos":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3811
    .local v1, "ch":C
    if-lt v1, v5, :cond_2

    const/16 v7, 0x39

    if-le v1, v7, :cond_1

    goto :goto_1

    .line 3815
    :cond_1
    aput-char v1, v3, v4

    .line 3816
    nop

    .end local v1    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 3806
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_0

    .line 3812
    .restart local v1    # "ch":C
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 3813
    move v1, v6

    .line 3818
    .end local v4    # "i":I
    .end local v6    # "pos":I
    .local v1, "pos":I
    :cond_3
    :goto_2
    if-ge v2, p2, :cond_4

    .line 3819
    aget v4, p4, v0

    not-int v4, v4

    aput v4, p4, v0

    .line 3820
    return-void

    .line 3822
    :cond_4
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 3843
    :pswitch_0
    aget-char v9, v3, v0

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    aget-char v10, v3, v8

    sub-int/2addr v10, v5

    add-int/2addr v9, v10

    aput v9, p4, v8

    .line 3844
    aget-char v8, v3, v7

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    aget-char v9, v3, v6

    sub-int/2addr v9, v5

    add-int/2addr v8, v9

    aput v8, p4, v7

    .line 3845
    aget-char v4, v3, v4

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    const/4 v7, 0x5

    aget-char v7, v3, v7

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    aput v4, p4, v6

    goto :goto_3

    .line 3838
    :pswitch_1
    aget-char v9, v3, v0

    sub-int/2addr v9, v5

    aput v9, p4, v8

    .line 3839
    aget-char v8, v3, v8

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    aget-char v9, v3, v7

    sub-int/2addr v9, v5

    add-int/2addr v8, v9

    aput v8, p4, v7

    .line 3840
    aget-char v7, v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    aget-char v4, v3, v4

    sub-int/2addr v4, v5

    add-int/2addr v7, v4

    aput v7, p4, v6

    .line 3841
    goto :goto_3

    .line 3834
    :pswitch_2
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v9, v3, v8

    sub-int/2addr v9, v5

    add-int/2addr v4, v9

    aput v4, p4, v8

    .line 3835
    aget-char v4, v3, v7

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v6

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v7

    .line 3836
    goto :goto_3

    .line 3830
    :pswitch_3
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    aput v4, p4, v8

    .line 3831
    aget-char v4, v3, v8

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v7

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v7

    .line 3832
    goto :goto_3

    .line 3827
    :pswitch_4
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v8

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v8

    .line 3828
    goto :goto_3

    .line 3824
    :pswitch_5
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    aput v4, p4, v8

    .line 3825
    nop

    .line 3848
    :goto_3
    aput v1, p4, v0

    .line 3849
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public format(Lj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 11
    .param p1, "context"    # Lj$/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3582
    sget-object v0, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Lj$/time/format/DateTimePrintContext;->getValue(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3583
    .local v0, "offsetSecs":Ljava/lang/Long;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3584
    return v1

    .line 3586
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v2

    .line 3587
    .local v2, "totalSecs":I
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 3588
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 3590
    :cond_1
    div-int/lit16 v4, v2, 0xe10

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3591
    .local v4, "absHours":I
    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3592
    .local v5, "absMinutes":I
    rem-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3593
    .local v6, "absSeconds":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 3594
    .local v7, "bufPos":I
    move v8, v4

    .line 3595
    .local v8, "output":I
    if-gez v2, :cond_2

    const-string v9, "-"

    goto :goto_0

    :cond_2
    const-string v9, "+"

    :goto_0
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isPaddedHour()Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0xa

    if-lt v4, v9, :cond_3

    goto :goto_1

    .line 3599
    :cond_3
    add-int/lit8 v1, v4, 0x30

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3597
    :cond_4
    :goto_1
    invoke-direct {p0, v1, v4, p2}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    .line 3601
    :goto_2
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x3

    const/16 v10, 0x8

    if-lt v1, v9, :cond_5

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-le v1, v10, :cond_7

    :cond_5
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/16 v9, 0x9

    if-lt v1, v9, :cond_6

    if-gtz v6, :cond_7

    :cond_6
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-lt v1, v3, :cond_9

    if-lez v5, :cond_9

    .line 3602
    :cond_7
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v1

    invoke-direct {p0, v1, v5, p2}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    .line 3603
    add-int/2addr v8, v5

    .line 3604
    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x7

    if-eq v1, v9, :cond_8

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-eq v1, v10, :cond_8

    iget v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x5

    if-lt v1, v9, :cond_9

    if-lez v6, :cond_9

    .line 3605
    :cond_8
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v1

    invoke-direct {p0, v1, v6, p2}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    .line 3606
    add-int/2addr v8, v6

    .line 3609
    :cond_9
    if-nez v8, :cond_a

    .line 3610
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3611
    iget-object v1, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    .end local v4    # "absHours":I
    .end local v5    # "absMinutes":I
    .end local v6    # "absSeconds":I
    .end local v7    # "bufPos":I
    .end local v8    # "output":I
    :cond_a
    :goto_3
    return v3
.end method

.method public parse(Lj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 19
    .param p1, "context"    # Lj$/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3625
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 3626
    .local v9, "length":I
    iget-object v1, v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 3627
    .local v10, "noOffsetLen":I
    if-nez v10, :cond_0

    .line 3628
    if-ne v8, v9, :cond_2

    .line 3629
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3632
    :cond_0
    if-ne v8, v9, :cond_1

    .line 3633
    not-int v1, v8

    return v1

    .line 3635
    :cond_1
    iget-object v4, v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3636
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    add-int v6, v8, v10

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3641
    :cond_2
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 3642
    .local v11, "sign":C
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v11, v1, :cond_3

    if-ne v11, v2, :cond_c

    .line 3644
    :cond_3
    const/4 v1, 0x1

    if-ne v11, v2, :cond_4

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    move v12, v2

    .line 3645
    .local v12, "negative":I
    invoke-direct/range {p0 .. p0}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v2

    .line 3646
    .local v2, "isColon":Z
    invoke-direct/range {p0 .. p0}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isPaddedHour()Z

    move-result v13

    .line 3647
    .local v13, "paddedHour":Z
    const/4 v3, 0x4

    new-array v14, v3, [I

    .line 3648
    .local v14, "array":[I
    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    aput v4, v14, v5

    .line 3649
    iget v4, v0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3651
    .local v4, "parseType":I
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3652
    const/16 v6, 0x3a

    if-eqz v13, :cond_7

    .line 3653
    if-nez v2, :cond_6

    if-nez v4, :cond_5

    add-int/lit8 v15, v8, 0x3

    if-le v9, v15, :cond_5

    add-int/lit8 v15, v8, 0x3

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ne v15, v6, :cond_5

    goto :goto_1

    .line 3657
    :cond_5
    const/16 v4, 0x9

    move v15, v2

    move/from16 v16, v4

    goto :goto_3

    .line 3654
    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 3655
    const/16 v4, 0xa

    move v15, v2

    move/from16 v16, v4

    goto :goto_3

    .line 3660
    :cond_7
    if-nez v2, :cond_9

    const/16 v15, 0xb

    if-ne v4, v15, :cond_8

    add-int/lit8 v15, v8, 0x3

    if-le v9, v15, :cond_8

    add-int/lit8 v15, v8, 0x2

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-eq v15, v6, :cond_9

    add-int/lit8 v15, v8, 0x3

    invoke-interface {v7, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ne v15, v6, :cond_8

    goto :goto_2

    .line 3664
    :cond_8
    const/16 v4, 0x14

    move v15, v2

    move/from16 v16, v4

    goto :goto_3

    .line 3661
    :cond_9
    :goto_2
    const/4 v2, 0x1

    .line 3662
    const/16 v4, 0x15

    move v15, v2

    move/from16 v16, v4

    goto :goto_3

    .line 3651
    :cond_a
    move v15, v2

    move/from16 v16, v4

    .line 3669
    .end local v2    # "isColon":Z
    .end local v4    # "parseType":I
    .local v15, "isColon":Z
    .local v16, "parseType":I
    :goto_3
    const/4 v2, 0x6

    const/4 v4, 0x3

    packed-switch v16, :pswitch_data_0

    goto :goto_4

    .line 3719
    :pswitch_0
    invoke-direct {v0, v7, v1, v2, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_4

    .line 3716
    :pswitch_1
    const/4 v3, 0x5

    invoke-direct {v0, v7, v3, v2, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3717
    goto :goto_4

    .line 3713
    :pswitch_2
    invoke-direct {v0, v7, v4, v2, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3714
    goto :goto_4

    .line 3710
    :pswitch_3
    invoke-direct {v0, v7, v4, v3, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3711
    goto :goto_4

    .line 3707
    :pswitch_4
    invoke-direct {v0, v7, v1, v3, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    .line 3708
    goto :goto_4

    .line 3703
    :pswitch_5
    invoke-direct {v0, v7, v13, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3704
    invoke-direct {v0, v7, v15, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseOptionalMinuteSecond(Ljava/lang/CharSequence;Z[I)V

    .line 3705
    goto :goto_4

    .line 3696
    :pswitch_6
    invoke-direct {v0, v7, v13, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3697
    invoke-direct {v0, v7, v15, v1, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3698
    invoke-direct {v0, v7, v15, v1, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseSecond(Ljava/lang/CharSequence;ZZ[I)V

    .line 3699
    goto :goto_4

    .line 3689
    :pswitch_7
    invoke-direct {v0, v7, v13, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3690
    invoke-direct {v0, v7, v15, v1, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3691
    invoke-direct {v0, v7, v15, v5, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseSecond(Ljava/lang/CharSequence;ZZ[I)V

    .line 3692
    goto :goto_4

    .line 3683
    :pswitch_8
    invoke-direct {v0, v7, v13, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3684
    invoke-direct {v0, v7, v15, v1, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3685
    goto :goto_4

    .line 3677
    :pswitch_9
    invoke-direct {v0, v7, v13, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3678
    invoke-direct {v0, v7, v15, v5, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    .line 3679
    goto :goto_4

    .line 3672
    :pswitch_a
    invoke-direct {v0, v7, v13, v14}, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    .line 3673
    nop

    .line 3722
    :goto_4
    aget v2, v14, v5

    if-lez v2, :cond_c

    .line 3723
    aget v2, v14, v1

    const/16 v3, 0x17

    if-gt v2, v3, :cond_b

    const/4 v2, 0x2

    aget v3, v14, v2

    const/16 v6, 0x3b

    if-gt v3, v6, :cond_b

    aget v3, v14, v4

    if-gt v3, v6, :cond_b

    .line 3726
    int-to-long v5, v12

    aget v1, v14, v1

    int-to-long v3, v1

    const-wide/16 v17, 0xe10

    mul-long v3, v3, v17

    aget v1, v14, v2

    int-to-long v1, v1

    const-wide/16 v17, 0x3c

    mul-long v1, v1, v17

    add-long/2addr v3, v1

    const/4 v1, 0x3

    aget v1, v14, v1

    int-to-long v1, v1

    add-long/2addr v3, v1

    mul-long v17, v5, v3

    .line 3727
    .local v17, "offsetSecs":J
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    const/4 v1, 0x0

    aget v6, v14, v1

    move-object/from16 v1, p1

    move-wide/from16 v3, v17

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3724
    .end local v17    # "offsetSecs":J
    :cond_b
    new-instance v1, Lj$/time/DateTimeException;

    const-string v2, "Value out of range: Hour[0-23], Minute[0-59], Second[0-59]"

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3731
    .end local v12    # "negative":I
    .end local v13    # "paddedHour":Z
    .end local v14    # "array":[I
    .end local v15    # "isColon":Z
    .end local v16    # "parseType":I
    :cond_c
    if-nez v10, :cond_d

    .line 3732
    sget-object v2, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/DateTimeParseContext;->setParsedField(Lj$/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3734
    :cond_d
    not-int v1, v8

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3853
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3854
    .local v0, "converted":Ljava/lang/String;
    sget-object v1, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v2, p0, Lj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
