.class public final Lcom/google/common/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static final ACK:B = 0x6t

.field public static final BEL:B = 0x7t

.field public static final BS:B = 0x8t

.field public static final CAN:B = 0x18t

.field private static final CASE_MASK:C = ' '

.field public static final CR:B = 0xdt

.field public static final DC1:B = 0x11t

.field public static final DC2:B = 0x12t

.field public static final DC3:B = 0x13t

.field public static final DC4:B = 0x14t

.field public static final DEL:B = 0x7ft

.field public static final DLE:B = 0x10t

.field public static final EM:B = 0x19t

.field public static final ENQ:B = 0x5t

.field public static final EOT:B = 0x4t

.field public static final ESC:B = 0x1bt

.field public static final ETB:B = 0x17t

.field public static final ETX:B = 0x3t

.field public static final FF:B = 0xct

.field public static final FS:B = 0x1ct

.field public static final GS:B = 0x1dt

.field public static final HT:B = 0x9t

.field public static final LF:B = 0xat

.field public static final MAX:C = '\u007f'

.field public static final MIN:C = '\u0000'

.field public static final NAK:B = 0x15t

.field public static final NL:B = 0xat

.field public static final NUL:B = 0x0t

.field public static final RS:B = 0x1et

.field public static final SI:B = 0xft

.field public static final SO:B = 0xet

.field public static final SOH:B = 0x1t

.field public static final SP:B = 0x20t

.field public static final SPACE:B = 0x20t

.field public static final STX:B = 0x2t

.field public static final SUB:B = 0x1at

.field public static final SYN:B = 0x16t

.field public static final US:B = 0x1ft

.field public static final VT:B = 0xbt

.field public static final XOFF:B = 0x13t

.field public static final XON:B = 0x11t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .line 603
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 604
    .local v0, "length":I
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 605
    return v1

    .line 607
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_10

    .line 608
    return v3

    .line 610
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_31

    .line 611
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 612
    .local v4, "c1":C
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 613
    .local v5, "c2":C
    if-ne v4, v5, :cond_1e

    .line 614
    goto :goto_2d

    .line 616
    :cond_1e
    invoke-static {v4}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v6

    .line 619
    .local v6, "alphaIndex":I
    const/16 v7, 0x1a

    if-ge v6, v7, :cond_30

    invoke-static {v5}, Lcom/google/common/base/Ascii;->getAlphaIndex(C)I

    move-result v7

    if-ne v6, v7, :cond_30

    .line 620
    nop

    .line 610
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "alphaIndex":I
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 622
    .restart local v4    # "c1":C
    .restart local v5    # "c2":C
    .restart local v6    # "alphaIndex":I
    :cond_30
    return v3

    .line 624
    .end local v2    # "i":I
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "alphaIndex":I
    :cond_31
    return v1
.end method

.method private static getAlphaIndex(C)I
    .registers 2
    .param p0, "c"    # C

    .line 633
    or-int/lit8 v0, p0, 0x20

    add-int/lit8 v0, v0, -0x61

    int-to-char v0, v0

    return v0
.end method

.method public static isLowerCase(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 506
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isUpperCase(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 515
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static toLowerCase(C)C
    .registers 2
    .param p0, "c"    # C

    .line 447
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_a

    xor-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    goto :goto_b

    :cond_a
    move v0, p0

    :goto_b
    return v0
.end method

.method public static toLowerCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .line 432
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 433
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 436
    .local v0, "newChars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 437
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 439
    .end local v1    # "i":I
    :cond_23
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 409
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2f

    .line 410
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 412
    .local v2, "chars":[C
    :goto_15
    if-ge v1, v0, :cond_27

    .line 413
    aget-char v3, v2, v1

    .line 414
    .local v3, "c":C
    invoke-static {v3}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 415
    xor-int/lit8 v4, v3, 0x20

    int-to-char v4, v4

    aput-char v4, v2, v1

    .line 412
    .end local v3    # "c":C
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 418
    :cond_27
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 409
    .end local v2    # "chars":[C
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 421
    .end local v1    # "i":I
    :cond_2f
    return-object p0
.end method

.method public static toUpperCase(C)C
    .registers 2
    .param p0, "c"    # C

    .line 495
    invoke-static {p0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_a

    xor-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    goto :goto_b

    :cond_a
    move v0, p0

    :goto_b
    return v0
.end method

.method public static toUpperCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .line 480
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 481
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 483
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 484
    .local v0, "newChars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 485
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 487
    .end local v1    # "i":I
    :cond_23
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 457
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2f

    .line 458
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 459
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 460
    .local v2, "chars":[C
    :goto_15
    if-ge v1, v0, :cond_27

    .line 461
    aget-char v3, v2, v1

    .line 462
    .local v3, "c":C
    invoke-static {v3}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 463
    xor-int/lit8 v4, v3, 0x20

    int-to-char v4, v4

    aput-char v4, v2, v1

    .line 460
    .end local v3    # "c":C
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 466
    :cond_27
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 457
    .end local v2    # "chars":[C
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 469
    .end local v1    # "i":I
    :cond_2f
    return-object p0
.end method

.method public static truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "maxLength"    # I
    .param p2, "truncationIndicator"    # Ljava/lang/String;

    .line 551
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 558
    .local v0, "truncationLength":I
    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 562
    :goto_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 558
    const-string v4, "maxLength (%s) must be >= length of the truncation indicator (%s)"

    invoke-static {v2, v4, p1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 564
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v2, p1, :cond_2a

    .line 565
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, p1, :cond_29

    .line 567
    return-object v2

    .line 570
    :cond_29
    move-object p0, v2

    .line 573
    .end local v2    # "string":Ljava/lang/String;
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 574
    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    return-object v1
.end method
