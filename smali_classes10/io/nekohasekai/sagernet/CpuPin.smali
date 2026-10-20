.class public final Lio/nekohasekai/sagernet/CpuPin;
.super Ljava/lang/Object;
.source "CpuPin.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCpuPin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CpuPin.kt\nio/nekohasekai/sagernet/CpuPin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,140:1\n1#2:141\n1#2:152\n11483#3,9:142\n13409#3:151\n13410#3:153\n11492#3:154\n13409#3,2:155\n*S KotlinDebug\n*F\n+ 1 CpuPin.kt\nio/nekohasekai/sagernet/CpuPin\n*L\n119#1:152\n119#1:142,9\n119#1:151\n119#1:153\n119#1:154\n128#1:155,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0082 J\u0019\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000eH\u0082 J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\u0007J\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001eH\u0002J\u0017\u0010\u001f\u001a\u0004\u0018\u00010\u00142\u0006\u0010 \u001a\u00020\u0005H\u0002\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lio/nekohasekai/sagernet/CpuPin;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "value",
        "",
        "available",
        "getAvailable",
        "()Z",
        "separated",
        "getSeparated",
        "littleMask",
        "",
        "bigMask",
        "nativeClusters",
        "",
        "nativeSetAffinity",
        "tid",
        "",
        "mask",
        "apply",
        "pinCurrentToBig",
        "pinCurrentToLittle",
        "pinAllCurrentToLittle",
        "pinRenderThreadNow",
        "scheduleRenderThreadPin",
        "",
        "listThreadIds",
        "",
        "findThreadId",
        "name",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

.field private static final TAG:Ljava/lang/String; = "CpuPin"

.field private static volatile available:Z

.field private static bigMask:J

.field private static littleMask:J

.field private static volatile separated:Z


# direct methods
.method public static synthetic $r8$lambda$-sD95Engc3WbCsY7JncJGeVQxTo(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/CpuPin;->scheduleRenderThreadPin$lambda$2(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SExbsk0lHpJ_SOtwn_CRWqZfVG4(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/CpuPin;->scheduleRenderThreadPin$attempt$lambda$1(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    const-string v0, "toString(...)"

    const-string v1, "CpuPin"

    new-instance v2, Lio/nekohasekai/sagernet/CpuPin;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/CpuPin;-><init>()V

    sput-object v2, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    .line 39
    nop

    .line 40
    nop

    .line 41
    :try_start_0
    const-string v2, "cpupin"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    sget-object v2, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/CpuPin;->nativeClusters()[J

    move-result-object v2

    .line 43
    .local v2, "clusters":[J
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 44
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    sput-wide v4, Lio/nekohasekai/sagernet/CpuPin;->littleMask:J

    .line 45
    const/4 v4, 0x1

    aget-wide v5, v2, v4

    sput-wide v5, Lio/nekohasekai/sagernet/CpuPin;->bigMask:J

    .line 46
    sget-wide v5, Lio/nekohasekai/sagernet/CpuPin;->littleMask:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    sget-wide v5, Lio/nekohasekai/sagernet/CpuPin;->bigMask:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v3, 0x1

    :cond_0
    sput-boolean v3, Lio/nekohasekai/sagernet/CpuPin;->separated:Z

    .line 47
    sput-boolean v4, Lio/nekohasekai/sagernet/CpuPin;->available:Z

    .line 49
    nop

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clusters little=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lio/nekohasekai/sagernet/CpuPin;->littleMask:J

    const/16 v6, 0x10

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " big=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    sget-wide v4, Lio/nekohasekai/sagernet/CpuPin;->bigMask:J

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v2    # "clusters":[J
    :catchall_0
    move-exception v0

    .line 55
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "cpupin unavailable on this device/ABI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final apply(IJ)Z
    .locals 4
    .param p1, "tid"    # I
    .param p2, "mask"    # J

    .line 63
    sget-boolean v0, Lio/nekohasekai/sagernet/CpuPin;->available:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/CpuPin;

    .line 141
    .local v0, "$this$apply_u24lambda_u240":Lio/nekohasekai/sagernet/CpuPin;
    const/4 v2, 0x0

    .line 64
    .local v2, "$i$a$-runCatching-CpuPin$apply$1":I
    invoke-direct {v0, p1, p2, p3}, Lio/nekohasekai/sagernet/CpuPin;->nativeSetAffinity(IJ)Z

    move-result v3

    .end local v0    # "$this$apply_u24lambda_u240":Lio/nekohasekai/sagernet/CpuPin;
    .end local v2    # "$i$a$-runCatching-CpuPin$apply$1":I
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 63
    :cond_2
    :goto_1
    return v1
.end method

.method private final findThreadId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    nop

    .line 128
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/task"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 155
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 129
    .local v7, "$i$a$-forEach-CpuPin$findThreadId$1":I
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getName(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 131
    .local v8, "tid":I
    nop

    .line 130
    new-instance v9, Ljava/io/File;

    const-string v10, "comm"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v9

    .line 141
    .local v10, "it":Ljava/io/File;
    const/4 v11, 0x0

    .line 130
    .local v11, "$i$a$-takeIf-CpuPin$findThreadId$1$comm$1":I
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v12

    .end local v10    # "it":Ljava/io/File;
    .end local v11    # "$i$a$-takeIf-CpuPin$findThreadId$1$comm$1":I
    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    move-object v9, v0

    .line 131
    :goto_1
    if-eqz v9, :cond_1

    .line 130
    nop

    .line 131
    const/4 v10, 0x1

    invoke-static {v9, v0, v10, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 130
    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 131
    :cond_1
    move-object v9, v0

    :goto_2
    if-nez v9, :cond_2

    const-string v9, ""

    .line 130
    :cond_2
    nop

    .line 132
    .local v9, "comm":Ljava/lang/String;
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 133
    :cond_3
    nop

    .line 155
    .end local v6    # "dir":Ljava/io/File;
    .end local v7    # "$i$a$-forEach-CpuPin$findThreadId$1":I
    .end local v8    # "tid":I
    .end local v9    # "comm":Ljava/lang/String;
    :cond_4
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_5
    nop

    .line 134
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    :cond_6
    goto :goto_3

    .line 135
    :catchall_0
    move-exception v1

    .line 136
    .local v1, "<unused var>":Ljava/lang/Throwable;
    nop

    .line 127
    .end local v1    # "<unused var>":Ljava/lang/Throwable;
    :goto_3
    return-object v0
.end method

.method private final listThreadIds()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 117
    nop

    .line 118
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    .line 118
    nop

    .line 119
    nop

    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 150
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 151
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 150
    .local v11, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v12, v10

    .local v12, "it":Ljava/io/File;
    const/4 v13, 0x0

    .line 119
    .local v13, "$i$a$-mapNotNull-CpuPin$listThreadIds$1":I
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "getName(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 150
    .end local v12    # "it":Ljava/io/File;
    .end local v13    # "$i$a$-mapNotNull-CpuPin$listThreadIds$1":I
    if-eqz v14, :cond_0

    move-object v12, v14

    .line 152
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 150
    .local v13, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 153
    :cond_1
    nop

    .line 154
    .end local v5    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;

    .line 142
    nop

    .line 119
    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$mapNotNull":I
    nop

    .line 118
    goto :goto_1

    .line 120
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto :goto_2

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    .local v0, "<unused var>":Ljava/lang/Throwable;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 117
    .end local v0    # "<unused var>":Ljava/lang/Throwable;
    :goto_2
    return-object v2
.end method

.method private final native nativeClusters()[J
.end method

.method private final native nativeSetAffinity(IJ)Z
.end method

.method private static final scheduleRenderThreadPin$attempt(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V
    .locals 3
    .param p0, "tries"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 109
    sget-object v0, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/CpuPin;->pinRenderThreadNow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 111
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    new-instance v0, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_1
    return-void
.end method

.method private static final scheduleRenderThreadPin$attempt$lambda$1(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V
    .locals 0
    .param p0, "$tries"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "$handler"    # Landroid/os/Handler;

    .line 111
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/CpuPin;->scheduleRenderThreadPin$attempt(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    return-void
.end method

.method private static final scheduleRenderThreadPin$lambda$2(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V
    .locals 0
    .param p0, "$tries"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "$handler"    # Landroid/os/Handler;

    .line 113
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/CpuPin;->scheduleRenderThreadPin$attempt(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final getAvailable()Z
    .locals 1

    .line 28
    sget-boolean v0, Lio/nekohasekai/sagernet/CpuPin;->available:Z

    return v0
.end method

.method public final getSeparated()Z
    .locals 1

    .line 32
    sget-boolean v0, Lio/nekohasekai/sagernet/CpuPin;->separated:Z

    return v0
.end method

.method public final pinAllCurrentToLittle()Z
    .locals 5

    .line 83
    sget-boolean v0, Lio/nekohasekai/sagernet/CpuPin;->separated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    const/4 v0, 0x1

    .line 85
    .local v0, "ok":Z
    invoke-direct {p0}, Lio/nekohasekai/sagernet/CpuPin;->listThreadIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 86
    .local v2, "tid":I
    sget-wide v3, Lio/nekohasekai/sagernet/CpuPin;->littleMask:J

    invoke-direct {p0, v2, v3, v4}, Lio/nekohasekai/sagernet/CpuPin;->apply(IJ)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .end local v2    # "tid":I
    goto :goto_0

    .line 88
    :cond_2
    return v0
.end method

.method public final pinCurrentToBig()Z
    .locals 3

    .line 69
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget-wide v1, Lio/nekohasekai/sagernet/CpuPin;->bigMask:J

    invoke-direct {p0, v0, v1, v2}, Lio/nekohasekai/sagernet/CpuPin;->apply(IJ)Z

    move-result v0

    .line 70
    .local v0, "ok":Z
    sget-boolean v1, Lio/nekohasekai/sagernet/CpuPin;->available:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI main thread -> performance cores: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CpuPin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return v0
.end method

.method public final pinCurrentToLittle()Z
    .locals 3

    .line 76
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sget-wide v1, Lio/nekohasekai/sagernet/CpuPin;->littleMask:J

    invoke-direct {p0, v0, v1, v2}, Lio/nekohasekai/sagernet/CpuPin;->apply(IJ)Z

    move-result v0

    .line 77
    .local v0, "ok":Z
    sget-boolean v1, Lio/nekohasekai/sagernet/CpuPin;->available:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bg main thread -> efficiency cores: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CpuPin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return v0
.end method

.method public final pinRenderThreadNow()Z
    .locals 4

    .line 93
    sget-boolean v0, Lio/nekohasekai/sagernet/CpuPin;->separated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    const-string v0, "RenderThread"

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/CpuPin;->findThreadId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    .local v0, "tid":I
    sget-wide v1, Lio/nekohasekai/sagernet/CpuPin;->bigMask:J

    invoke-direct {p0, v0, v1, v2}, Lio/nekohasekai/sagernet/CpuPin;->apply(IJ)Z

    move-result v1

    .line 96
    .local v1, "ok":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RenderThread(tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -> performance cores: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CpuPin"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v1

    .line 94
    .end local v0    # "tid":I
    .end local v1    # "ok":Z
    :cond_1
    return v1
.end method

.method public final scheduleRenderThreadPin()V
    .locals 5

    .line 105
    sget-boolean v0, Lio/nekohasekai/sagernet/CpuPin;->separated:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 113
    .local v1, "tries":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v2, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method
