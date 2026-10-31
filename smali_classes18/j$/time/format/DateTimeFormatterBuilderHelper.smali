.class final Lj$/time/format/DateTimeFormatterBuilderHelper;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilderHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rewriteIcuDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    .line 80
    .local v1, "prev":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 82
    .local v3, "curr":C
    sparse-switch v3, :sswitch_data_4a

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 86
    :sswitch_1d
    goto :goto_2d

    .line 91
    :sswitch_1e
    if-eqz v2, :cond_29

    const/16 v4, 0x42

    if-eq v1, v4, :cond_28

    const/16 v4, 0x62

    if-ne v1, v4, :cond_29

    :cond_28
    goto :goto_2d

    .line 95
    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    nop

    .line 102
    :goto_2d
    move v1, v3

    .line 80
    .end local v3    # "curr":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 107
    .end local v2    # "i":I
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 108
    .local v2, "lastIndex":I
    if-ltz v2, :cond_44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_44

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 111
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_4a
    .sparse-switch
        0x20 -> :sswitch_1e
        0x42 -> :sswitch_1d
        0x62 -> :sswitch_1d
    .end sparse-switch
.end method

.method static transformAndroidJavaTextDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 55
    .local v0, "containsCharB":Z
    :goto_12
    const/16 v4, 0x62

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 62
    .local v1, "containsCharb":Z
    :goto_1c
    if-nez v0, :cond_20

    if-eqz v1, :cond_24

    .line 63
    :cond_20
    invoke-static {p0}, Lj$/time/format/DateTimeFormatterBuilderHelper;->rewriteIcuDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    :cond_24
    return-object p0
.end method
