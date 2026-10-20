.class public final Lokhttp3/internal/http/DatesKt;
.super Ljava/lang/Object;
.source "dates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\n\u001a\u000c\u0010\u000c\u001a\u0004\u0018\u00010\r*\u00020\u0005\u001a\n\u0010\u000e\u001a\u00020\u0005*\u00020\r\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "BROWSER_COMPATIBLE_DATE_FORMATS",
        "",
        "Ljava/text/DateFormat;",
        "[Ljava/text/DateFormat;",
        "BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS",
        "",
        "[Ljava/lang/String;",
        "MAX_DATE",
        "",
        "STANDARD_DATE_FORMAT",
        "okhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1",
        "Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;",
        "toHttpDateOrNull",
        "Ljava/util/Date;",
        "toHttpDateString",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public static final MAX_DATE:J = 0xe677d21fdbffL

.field private static final STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-direct {v0}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    .line 43
    nop

    .line 45
    nop

    .line 46
    nop

    .line 45
    nop

    .line 47
    nop

    .line 45
    nop

    .line 49
    nop

    .line 45
    nop

    .line 50
    nop

    .line 45
    nop

    .line 51
    nop

    .line 45
    nop

    .line 52
    nop

    .line 45
    nop

    .line 53
    nop

    .line 45
    nop

    .line 54
    nop

    .line 45
    nop

    .line 55
    nop

    .line 45
    nop

    .line 56
    nop

    .line 45
    nop

    .line 57
    nop

    .line 45
    nop

    .line 58
    nop

    .line 45
    nop

    .line 59
    nop

    .line 45
    nop

    .line 62
    const-string v15, "EEE MMM d yyyy HH:mm:ss z"

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    const-string v4, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v6, "EEE, dd MMM yy HH:mm:ss z"

    const-string v7, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v8, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v9, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v10, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v11, "EEE dd MMM yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v13, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v14, "EEE, dd-MM-yyyy HH:mm:ss z"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 45
    nop

    .line 43
    sput-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 66
    sget-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method public static final toHttpDateOrNull(Ljava/lang/String;)Ljava/util/Date;
    .locals 15
    .param p0, "$this$toHttpDateOrNull"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 72
    :cond_1
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 73
    .local v0, "position":Ljava/text/ParsePosition;
    const/4 v4, 0x0

    .local v4, "result":Ljava/lang/Object;
    sget-object v5, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-virtual {v5}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DateFormat;

    invoke-virtual {v5, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 74
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 77
    return-object v4

    .line 79
    :cond_2
    sget-object v5, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v5

    const/4 v6, 0x0

    .line 80
    .local v6, "$i$a$-synchronized-DatesKt$toHttpDateOrNull$1":I
    :try_start_0
    sget-object v7, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_6

    const/4 v8, 0x0

    :cond_3
    move v9, v8

    .local v9, "i":I
    add-int/2addr v8, v1

    .line 81
    sget-object v10, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v10, v10, v9

    .line 82
    .local v10, "format":Ljava/text/DateFormat;
    if-nez v10, :cond_4

    .line 83
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v12, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v12, v12, v9

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v12, v11

    .local v12, "$this$toHttpDateOrNull_u24lambda_u2d1_u24lambda_u2d0":Ljava/text/SimpleDateFormat;
    const/4 v13, 0x0

    .line 86
    .local v13, "$i$a$-apply-DatesKt$toHttpDateOrNull$1$1":I
    sget-object v14, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v12, v14}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    nop

    .line 83
    .end local v12    # "$this$toHttpDateOrNull_u24lambda_u2d1_u24lambda_u2d0":Ljava/text/SimpleDateFormat;
    .end local v13    # "$i$a$-apply-DatesKt$toHttpDateOrNull$1$1":I
    check-cast v11, Ljava/text/DateFormat;

    move-object v10, v11

    .line 88
    sget-object v11, Lokhttp3/internal/http/DatesKt;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v10, v11, v9

    .line 90
    :cond_4
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 91
    invoke-virtual {v10, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v11

    move-object v4, v11

    .line 92
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_5

    .line 98
    nop

    .end local v6    # "$i$a$-synchronized-DatesKt$toHttpDateOrNull$1":I
    .end local v9    # "i":I
    .end local v10    # "format":Ljava/text/DateFormat;
    monitor-exit v5

    return-object v4

    .line 80
    .restart local v6    # "$i$a$-synchronized-DatesKt$toHttpDateOrNull$1":I
    .restart local v9    # "i":I
    :cond_5
    if-lt v8, v7, :cond_3

    .line 101
    .end local v9    # "i":I
    :cond_6
    nop

    .end local v6    # "$i$a$-synchronized-DatesKt$toHttpDateOrNull$1":I
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit v5

    .line 102
    return-object v3

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1
.end method

.method public static final toHttpDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$toHttpDateString"    # Ljava/util/Date;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lokhttp3/internal/http/DatesKt;->STANDARD_DATE_FORMAT:Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;

    invoke-virtual {v0}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STANDARD_DATE_FORMAT.get().format(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
