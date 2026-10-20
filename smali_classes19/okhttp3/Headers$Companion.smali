.class public final Lokhttp3/Headers$Companion;
.super Ljava/lang/Object;
.source "Headers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n1#2:459\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\t\u001a\u0004\u0018\u00010\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\u000cJ#\u0010\r\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J!\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007\u00a2\u0006\u0002\u0008\u0011J\u001d\u0010\u0014\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007\u00a2\u0006\u0002\u0008\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/Headers$Companion;",
        "",
        "()V",
        "checkName",
        "",
        "name",
        "",
        "checkValue",
        "value",
        "get",
        "namesAndValues",
        "",
        "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "headersOf",
        "Lokhttp3/Headers;",
        "of",
        "([Ljava/lang/String;)Lokhttp3/Headers;",
        "-deprecated_of",
        "headers",
        "",
        "toHeaders",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/Headers$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkName(Lokhttp3/Headers$Companion;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/Headers$Companion;
    .param p1, "name"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0, p1}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$checkValue(Lokhttp3/Headers$Companion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/Headers$Companion;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get(Lokhttp3/Headers$Companion;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lokhttp3/Headers$Companion;
    .param p1, "namesAndValues"    # [Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Companion;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final checkName(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 438
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    const/4 v3, 0x0

    :cond_1
    move v4, v3

    .local v4, "i":I
    add-int/2addr v3, v1

    .line 440
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 441
    .local v5, "c":C
    const/16 v6, 0x21

    if-gt v6, v5, :cond_2

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 439
    .end local v5    # "c":C
    if-le v3, v0, :cond_1

    goto :goto_2

    .line 441
    .restart local v5    # "c":C
    :cond_3
    const/4 v0, 0x0

    .line 442
    .local v0, "$i$a$-require-Headers$Companion$checkName$2":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v6, v7, v1

    const/4 v1, 0x2

    aput-object p1, v7, v1

    const-string v1, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {v1, v7}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .end local v0    # "$i$a$-require-Headers$Companion$checkName$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 445
    .end local v4    # "i":I
    .end local v5    # "c":C
    :cond_4
    :goto_2
    return-void

    .line 459
    :cond_5
    const/4 v0, 0x0

    .line 438
    .local v0, "$i$a$-require-Headers$Companion$checkName$1":I
    nop

    .end local v0    # "$i$a$-require-Headers$Companion$checkName$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final checkValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 449
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 450
    .local v5, "c":C
    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-gt v6, v5, :cond_1

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 451
    .local v0, "$i$a$-require-Headers$Companion$checkValue$1":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    aput-object v6, v7, v4

    const/4 v1, 0x2

    aput-object p2, v7, v1

    const-string v1, "Unexpected char %#04x at %d in %s value"

    invoke-static {v1, v7}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {p2}, Lokhttp3/internal/Util;->isSensitiveHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_3

    :cond_4
    const-string v2, ": "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 451
    :goto_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .end local v0    # "$i$a$-require-Headers$Companion$checkValue$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 448
    .end local v5    # "c":C
    :cond_5
    if-le v2, v0, :cond_0

    .line 455
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method private final get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "namesAndValues"    # [Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 364
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v1

    if-gt v1, v0, :cond_2

    :cond_0
    move v3, v0

    .local v3, "i":I
    add-int/2addr v0, v2

    .line 365
    aget-object v4, p1, v3

    const/4 v5, 0x1

    invoke-static {p2, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    add-int/lit8 v0, v3, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 364
    :cond_1
    if-ne v3, v1, :cond_0

    .line 369
    .end local v3    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final -deprecated_of(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 1
    .param p1, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "function moved to extension"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "headers.toHeaders()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final varargs -deprecated_of([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 1
    .param p1, "namesAndValues"    # [Ljava/lang/String;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "function name changed"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "headersOf(*namesAndValues)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "namesAndValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final of(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 8
    .param p1, "$this$toHeaders"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 414
    .local v0, "namesAndValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 415
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "k":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 416
    .local v3, "v":Ljava/lang/String;
    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v4, :cond_1

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "value":Ljava/lang/String;
    invoke-direct {p0, v6}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v5, v6}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    aput-object v6, v0, v1

    .line 421
    add-int/lit8 v7, v1, 0x1

    aput-object v5, v0, v7

    .line 422
    nop

    .end local v3    # "v":Ljava/lang/String;
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 417
    .restart local v3    # "v":Ljava/lang/String;
    .restart local v4    # "k":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    .end local v3    # "v":Ljava/lang/String;
    .end local v4    # "k":Ljava/lang/String;
    :cond_2
    new-instance v2, Lokhttp3/Headers;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 8
    .param p1, "namesAndValues"    # [Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "namesAndValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    array-length v0, p1

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 383
    .local v0, "namesAndValues":[Ljava/lang/String;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    const/4 v5, 0x0

    :cond_1
    move v6, v5

    .local v6, "i":I
    add-int/2addr v5, v2

    .line 384
    aget-object v7, v0, v6

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 385
    aget-object v7, v0, v6

    if-eqz v7, :cond_3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 383
    if-le v5, v4, :cond_1

    goto :goto_2

    .line 385
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_4
    const/4 v1, 0x0

    .line 384
    .local v1, "$i$a$-require-Headers$Companion$headersOf$2":I
    nop

    .end local v1    # "$i$a$-require-Headers$Companion$headersOf$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Headers cannot be null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 389
    .end local v6    # "i":I
    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2, v1}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v2

    if-ltz v2, :cond_7

    :cond_6
    move v4, v3

    .local v4, "i":I
    add-int/2addr v3, v1

    .line 390
    aget-object v5, v0, v4

    .line 391
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v0, v6

    .line 392
    .local v6, "value":Ljava/lang/String;
    invoke-direct {p0, v5}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, v6, v5}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    if-ne v4, v2, :cond_6

    .line 396
    .end local v4    # "i":I
    :cond_7
    new-instance v1, Lokhttp3/Headers;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 459
    .end local v0    # "namesAndValues":[Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    .line 379
    .local v0, "$i$a$-require-Headers$Companion$headersOf$1":I
    nop

    .end local v0    # "$i$a$-require-Headers$Companion$headersOf$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected alternating header names and values"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
