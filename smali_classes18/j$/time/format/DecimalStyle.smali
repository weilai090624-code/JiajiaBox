.class public final Lj$/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lj$/time/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD:Lj$/time/format/DecimalStyle;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 91
    new-instance v0, Lj$/time/format/DecimalStyle;

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    const/16 v3, 0x30

    const/16 v4, 0x2b

    invoke-direct {v0, v3, v4, v1, v2}, Lj$/time/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Lj$/time/format/DecimalStyle;->STANDARD:Lj$/time/format/DecimalStyle;

    .line 95
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(CCCC)V
    .locals 0
    .param p1, "zeroChar"    # C
    .param p2, "positiveSignChar"    # C
    .param p3, "negativeSignChar"    # C
    .param p4, "decimalPointChar"    # C

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-char p1, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    .line 196
    iput-char p2, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    .line 197
    iput-char p3, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    .line 198
    iput-char p4, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    .line 199
    return-void
.end method

.method private static create(Ljava/util/Locale;)Lj$/time/format/DecimalStyle;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 174
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 175
    .local v0, "oldSymbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    .line 176
    .local v1, "zeroDigit":C
    const/16 v2, 0x2b

    .line 177
    .local v2, "positiveSign":C
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    .line 178
    .local v3, "negativeSign":C
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    .line 179
    .local v4, "decimalSeparator":C
    const/16 v5, 0x30

    if-ne v1, v5, :cond_0

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    .line 180
    sget-object v5, Lj$/time/format/DecimalStyle;->STANDARD:Lj$/time/format/DecimalStyle;

    return-object v5

    .line 182
    :cond_0
    new-instance v5, Lj$/time/format/DecimalStyle;

    invoke-direct {v5, v1, v2, v3, v4}, Lj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v5
.end method

.method public static getAvailableLocales()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 124
    .local v0, "l":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 125
    .local v1, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    return-object v1
.end method

.method public static of(Ljava/util/Locale;)Lj$/time/format/DecimalStyle;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 163
    const-string v0, "locale"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/DecimalStyle;

    .line 165
    .local v0, "info":Lj$/time/format/DecimalStyle;
    if-nez v0, :cond_0

    .line 166
    invoke-static {p0}, Lj$/time/format/DecimalStyle;->create(Ljava/util/Locale;)Lj$/time/format/DecimalStyle;

    move-result-object v0

    .line 167
    sget-object v1, Lj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lj$/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lj$/time/format/DecimalStyle;

    .line 170
    :cond_0
    return-object v0
.end method

.method public static ofDefaultLocale()Lj$/time/format/DecimalStyle;
    .locals 1

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lj$/time/format/DecimalStyle;->of(Ljava/util/Locale;)Lj$/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "numericText"    # Ljava/lang/String;

    .line 336
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 337
    return-object p1

    .line 339
    :cond_0
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    sub-int/2addr v0, v1

    .line 340
    .local v0, "diff":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 341
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 342
    aget-char v3, v1, v2

    add-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method convertToDigit(C)I
    .locals 2
    .param p1, "ch"    # C

    .line 325
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v0

    .line 326
    .local v0, "val":I
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 356
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 357
    return v0

    .line 359
    :cond_0
    instance-of v1, p1, Lj$/time/format/DecimalStyle;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 360
    move-object v1, p1

    check-cast v1, Lj$/time/format/DecimalStyle;

    .line 361
    .local v1, "other":Lj$/time/format/DecimalStyle;
    iget-char v3, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v4, v1, Lj$/time/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_1

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v4, v1, Lj$/time/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_1

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v4, v1, Lj$/time/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_1

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    iget-char v4, v1, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 364
    .end local v1    # "other":Lj$/time/format/DecimalStyle;
    :cond_2
    return v2
.end method

.method public getDecimalSeparator()C
    .locals 1

    .line 298
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public getNegativeSign()C
    .locals 1

    .line 269
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public getPositiveSign()C
    .locals 1

    .line 240
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    .line 211
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 374
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 385
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DecimalStyle["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecimalSeparator(C)Lj$/time/format/DecimalStyle;
    .locals 4
    .param p1, "decimalSeparator"    # C

    .line 311
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    if-ne p1, v0, :cond_0

    .line 312
    return-object p0

    .line 314
    :cond_0
    new-instance v0, Lj$/time/format/DecimalStyle;

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    invoke-direct {v0, v1, v2, v3, p1}, Lj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withNegativeSign(C)Lj$/time/format/DecimalStyle;
    .locals 4
    .param p1, "negativeSign"    # C

    .line 282
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    if-ne p1, v0, :cond_0

    .line 283
    return-object p0

    .line 285
    :cond_0
    new-instance v0, Lj$/time/format/DecimalStyle;

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, v2, p1, v3}, Lj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withPositiveSign(C)Lj$/time/format/DecimalStyle;
    .locals 4
    .param p1, "positiveSign"    # C

    .line 253
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    if-ne p1, v0, :cond_0

    .line 254
    return-object p0

    .line 256
    :cond_0
    new-instance v0, Lj$/time/format/DecimalStyle;

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, p1, v2, v3}, Lj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public withZeroDigit(C)Lj$/time/format/DecimalStyle;
    .locals 4
    .param p1, "zeroDigit"    # C

    .line 224
    iget-char v0, p0, Lj$/time/format/DecimalStyle;->zeroDigit:C

    if-ne p1, v0, :cond_0

    .line 225
    return-object p0

    .line 227
    :cond_0
    new-instance v0, Lj$/time/format/DecimalStyle;

    iget-char v1, p0, Lj$/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Lj$/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Lj$/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, p1, v1, v2, v3}, Lj$/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method
