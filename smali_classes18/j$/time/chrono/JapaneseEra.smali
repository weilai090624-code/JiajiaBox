.class public final Lj$/time/chrono/JapaneseEra;
.super Ljava/lang/Object;
.source "JapaneseEra.java"

# interfaces
.implements Lj$/time/chrono/Era;
.implements Ljava/io/Serializable;


# static fields
.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Lj$/time/chrono/JapaneseEra;

.field private static final KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

.field public static final MEIJI:Lj$/time/chrono/JapaneseEra;

.field private static final N_ERA_CONSTANTS:I

.field public static final REIWA:Lj$/time/chrono/JapaneseEra;

.field public static final SHOWA:Lj$/time/chrono/JapaneseEra;

.field public static final TAISHO:Lj$/time/chrono/JapaneseEra;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient abbreviation:Ljava/lang/String;

.field private final transient eraValue:I

.field private final transient name:Ljava/lang/String;

.field private final transient since:Lj$/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 139
    new-instance v0, Lj$/time/chrono/JapaneseEra;

    const/16 v1, 0x74c

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Meiji"

    const-string v4, "M"

    const/4 v5, -0x1

    invoke-direct {v0, v5, v1, v3, v4}, Lj$/time/chrono/JapaneseEra;-><init>(ILj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/JapaneseEra;->MEIJI:Lj$/time/chrono/JapaneseEra;

    .line 145
    new-instance v0, Lj$/time/chrono/JapaneseEra;

    const/4 v1, 0x7

    const/16 v3, 0x1e

    const/16 v4, 0x778

    invoke-static {v4, v1, v3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Taisho"

    const-string v4, "T"

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v3, v4}, Lj$/time/chrono/JapaneseEra;-><init>(ILj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/JapaneseEra;->TAISHO:Lj$/time/chrono/JapaneseEra;

    .line 151
    new-instance v0, Lj$/time/chrono/JapaneseEra;

    const/16 v1, 0xc

    const/16 v3, 0x19

    const/16 v4, 0x786

    invoke-static {v4, v1, v3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Showa"

    const-string v4, "S"

    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/chrono/JapaneseEra;-><init>(ILj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/JapaneseEra;->SHOWA:Lj$/time/chrono/JapaneseEra;

    .line 157
    new-instance v0, Lj$/time/chrono/JapaneseEra;

    const/16 v1, 0x7c5

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Heisei"

    const-string v4, "H"

    const/4 v6, 0x2

    invoke-direct {v0, v6, v1, v3, v4}, Lj$/time/chrono/JapaneseEra;-><init>(ILj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/JapaneseEra;->HEISEI:Lj$/time/chrono/JapaneseEra;

    .line 165
    new-instance v0, Lj$/time/chrono/JapaneseEra;

    const/16 v1, 0x7e3

    const/4 v3, 0x5

    invoke-static {v1, v3, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Reiwa"

    const-string v4, "R"

    const/4 v7, 0x3

    invoke-direct {v0, v7, v1, v3, v4}, Lj$/time/chrono/JapaneseEra;-><init>(ILj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/JapaneseEra;->REIWA:Lj$/time/chrono/JapaneseEra;

    .line 169
    sget-object v0, Lj$/time/chrono/JapaneseEra;->REIWA:Lj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Lj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    add-int/2addr v0, v6

    sput v0, Lj$/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .line 183
    sget v0, Lj$/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    new-array v0, v0, [Lj$/time/chrono/JapaneseEra;

    sput-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    .line 184
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    sget-object v1, Lj$/time/chrono/JapaneseEra;->MEIJI:Lj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v5

    .line 185
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    sget-object v1, Lj$/time/chrono/JapaneseEra;->TAISHO:Lj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v2

    .line 186
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    sget-object v1, Lj$/time/chrono/JapaneseEra;->SHOWA:Lj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v6

    .line 187
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    sget-object v1, Lj$/time/chrono/JapaneseEra;->HEISEI:Lj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v7

    .line 188
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    const/4 v1, 0x4

    sget-object v2, Lj$/time/chrono/JapaneseEra;->REIWA:Lj$/time/chrono/JapaneseEra;

    aput-object v2, v0, v1

    .line 194
    return-void
.end method

.method private constructor <init>(ILj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eraValue"    # I
    .param p2, "since"    # Lj$/time/LocalDate;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "abbreviation"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p1, p0, Lj$/time/chrono/JapaneseEra;->eraValue:I

    .line 257
    iput-object p2, p0, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    .line 258
    iput-object p3, p0, Lj$/time/chrono/JapaneseEra;->name:Ljava/lang/String;

    .line 259
    iput-object p4, p0, Lj$/time/chrono/JapaneseEra;->abbreviation:Ljava/lang/String;

    .line 260
    return-void
.end method

.method static from(Lj$/time/LocalDate;)Lj$/time/chrono/JapaneseEra;
    .locals 3
    .param p0, "date"    # Lj$/time/LocalDate;

    .line 368
    sget-object v0, Lj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Lj$/time/LocalDate;

    invoke-virtual {p0, v0}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 372
    sget-object v1, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    .line 373
    .local v1, "era":Lj$/time/chrono/JapaneseEra;
    iget-object v2, v1, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {p0, v2}, Lj$/time/LocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 374
    return-object v1

    .line 371
    .end local v1    # "era":Lj$/time/chrono/JapaneseEra;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 377
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_2
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getCurrentEra()Lj$/time/chrono/JapaneseEra;
    .locals 2

    .line 199
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    sget-object v1, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static of(I)Lj$/time/chrono/JapaneseEra;
    .locals 4
    .param p0, "japaneseEra"    # I

    .line 296
    invoke-static {p0}, Lj$/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v0

    .line 297
    .local v0, "i":I
    if-ltz v0, :cond_0

    sget-object v1, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 300
    sget-object v1, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    return-object v1

    .line 298
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid era: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static ordinal(I)I
    .locals 1
    .param p0, "eraValue"    # I

    .line 407
    add-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/chrono/JapaneseEra;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;

    .line 512
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 513
    .local v0, "eraValue":B
    invoke-static {v0}, Lj$/time/chrono/JapaneseEra;->of(I)Lj$/time/chrono/JapaneseEra;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 488
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static shortestDaysOfYear()J
    .locals 8

    .line 226
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/ValueRange;->getSmallestMaximum()J

    move-result-wide v0

    .line 227
    .local v0, "min":J
    sget-object v2, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 228
    .local v5, "era":Lj$/time/chrono/JapaneseEra;
    iget-object v6, v5, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v6}, Lj$/time/LocalDate;->lengthOfYear()I

    move-result v6

    iget-object v7, v5, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v7}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 229
    invoke-virtual {v5}, Lj$/time/chrono/JapaneseEra;->next()Lj$/time/chrono/JapaneseEra;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 230
    invoke-virtual {v5}, Lj$/time/chrono/JapaneseEra;->next()Lj$/time/chrono/JapaneseEra;

    move-result-object v6

    iget-object v6, v6, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v6}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 227
    .end local v5    # "era":Lj$/time/chrono/JapaneseEra;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-wide v0
.end method

.method static shortestYearsOfEra()J
    .locals 6

    .line 208
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->getCurrentEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    iget-object v0, v0, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    const v1, 0x3b9ac9ff

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 209
    .local v1, "min":I
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    .line 210
    .local v0, "lastStartYear":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    sget-object v3, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 211
    sget-object v3, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    aget-object v3, v3, v2

    .line 212
    .local v3, "era":Lj$/time/chrono/JapaneseEra;
    iget-object v4, v3, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v4}, Lj$/time/LocalDate;->getYear()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    .line 213
    .local v4, "lastYearsOfEra":I
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 214
    iget-object v5, v3, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    invoke-virtual {v5}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    .line 210
    .end local v3    # "era":Lj$/time/chrono/JapaneseEra;
    .end local v4    # "lastYearsOfEra":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_0
    int-to-long v2, v1

    return-wide v2
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/JapaneseEra;
    .locals 5
    .param p0, "japaneseEra"    # Ljava/lang/String;

    .line 314
    const-string v0, "japaneseEra"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 316
    .local v3, "era":Lj$/time/chrono/JapaneseEra;
    invoke-virtual {v3}, Lj$/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    return-object v3

    .line 315
    .end local v3    # "era":Lj$/time/chrono/JapaneseEra;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "japaneseEra is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lj$/time/chrono/JapaneseEra;
    .locals 2

    .line 335
    sget-object v0, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    sget-object v1, Lj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Lj$/time/chrono/JapaneseEra;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/JapaneseEra;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 504
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$adjustInto(Lj$/time/chrono/Era;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Lj$/time/temporal/TemporalField;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$get(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method getAbbreviation()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lj$/time/chrono/JapaneseEra;->abbreviation:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "style"    # Lj$/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 348
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    sget v1, Lj$/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_1

    .line 349
    const-string v0, "locale"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Lj$/time/format/TextStyle;->asNormal()Lj$/time/format/TextStyle;

    move-result-object v0

    sget-object v1, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 353
    :cond_1
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    .line 354
    invoke-virtual {v0, v1, p1}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Lj$/time/format/TextStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p2}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    .line 356
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->withChronology(Lj$/time/chrono/Chronology;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 357
    sget-object v1, Lj$/time/chrono/JapaneseEra;->MEIJI:Lj$/time/chrono/JapaneseEra;

    if-ne p0, v1, :cond_2

    sget-object v1, Lj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Lj$/time/LocalDate;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    :goto_1
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method public synthetic getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$getLong(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lj$/time/chrono/JapaneseEra;->name:Ljava/lang/String;

    return-object v0
.end method

.method getSince()Lj$/time/LocalDate;
    .locals 1

    .line 272
    iget-object v0, p0, Lj$/time/chrono/JapaneseEra;->since:Lj$/time/LocalDate;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 422
    iget v0, p0, Lj$/time/chrono/JapaneseEra;->eraValue:I

    return v0
.end method

.method public synthetic isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$isSupported(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method next()Lj$/time/chrono/JapaneseEra;
    .locals 1

    .line 472
    invoke-static {}, Lj$/time/chrono/JapaneseEra;->getCurrentEra()Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lj$/time/chrono/JapaneseEra;->eraValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/time/chrono/JapaneseEra;->of(I)Lj$/time/chrono/JapaneseEra;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$query(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 2
    .param p1, "field"    # Lj$/time/temporal/TemporalField;

    .line 453
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 454
    sget-object v0, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lj$/time/chrono/JapaneseChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$range(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 508
    invoke-virtual {p0}, Lj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 509
    return-void
.end method
