.class public final Lio/nekohasekai/sagernet/utils/Subnet$Companion;
.super Ljava/lang/Object;
.source "Subnet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/utils/Subnet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/Subnet$Companion;",
        "",
        "<init>",
        "()V",
        "fromString",
        "Lio/nekohasekai/sagernet/utils/Subnet;",
        "value",
        "",
        "lengthCheck",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/Subnet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromString$default(Lio/nekohasekai/sagernet/utils/Subnet$Companion;Ljava/lang/String;IILjava/lang/Object;)Lio/nekohasekai/sagernet/utils/Subnet;
    .locals 0

    .line 9
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/utils/Subnet$Companion;->fromString(Ljava/lang/String;I)Lio/nekohasekai/sagernet/utils/Subnet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;I)Lio/nekohasekai/sagernet/utils/Subnet;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "lengthCheck"    # I

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v7, 0x0

    const/16 v3, 0x2f

    aput-char v3, v2, v7

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 11
    .local v1, "parts":Ljava/util/List;
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 12
    .local v2, "addr":Ljava/net/InetAddress;
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    array-length v4, v4

    if-ne v4, p2, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    if-eqz v7, :cond_6

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 14
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 15
    .local v0, "prefixSize":I
    if-ltz v0, :cond_4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x3

    if-le v0, v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lio/nekohasekai/sagernet/utils/Subnet;

    .line 16
    nop

    .line 15
    invoke-direct {v4, v2, v0}, Lio/nekohasekai/sagernet/utils/Subnet;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 17
    .end local v0    # "prefixSize":I
    :catch_0
    move-exception v0

    .line 18
    .local v0, "<unused var>":Ljava/lang/NumberFormatException;
    nop

    .end local v0    # "<unused var>":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_0
    goto :goto_1

    .line 19
    :cond_5
    new-instance v3, Lio/nekohasekai/sagernet/utils/Subnet;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {v3, v2, v0}, Lio/nekohasekai/sagernet/utils/Subnet;-><init>(Ljava/net/InetAddress;I)V

    .line 13
    :goto_1
    return-object v3

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
