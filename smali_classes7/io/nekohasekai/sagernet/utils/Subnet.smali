.class public final Lio/nekohasekai/sagernet/utils/Subnet;
.super Ljava/lang/Object;
.source "Subnet.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/utils/Subnet$Companion;,
        Lio/nekohasekai/sagernet/utils/Subnet$Immutable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/nekohasekai/sagernet/utils/Subnet;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubnet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Subnet.kt\nio/nekohasekai/sagernet/utils/Subnet\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u001a\u001bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000c\u0010\u0012\u001a\u00020\u0005*\u00020\u0013H\u0002J\u0011\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/Subnet;",
        "",
        "address",
        "Ljava/net/InetAddress;",
        "prefixSize",
        "",
        "<init>",
        "(Ljava/net/InetAddress;I)V",
        "getAddress",
        "()Ljava/net/InetAddress;",
        "getPrefixSize",
        "()I",
        "addressLength",
        "getAddressLength",
        "toImmutable",
        "Lio/nekohasekai/sagernet/utils/Subnet$Immutable;",
        "toString",
        "",
        "unsigned",
        "",
        "compareTo",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "Companion",
        "Immutable",
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
.field public static final Companion:Lio/nekohasekai/sagernet/utils/Subnet$Companion;


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final prefixSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/utils/Subnet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/utils/Subnet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/utils/Subnet;->Companion:Lio/nekohasekai/sagernet/utils/Subnet$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixSize"    # I

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    iput p2, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    .line 25
    nop

    .line 26
    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/Subnet;->getAddressLength()I

    move-result v0

    iget v1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    if-gt v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 27
    nop

    .line 7
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 26
    .local v0, "$i$a$-require-Subnet$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefixSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/Subnet;->getAddressLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Subnet$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getAddressLength()I
    .locals 1

    .line 23
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private final unsigned(B)I
    .locals 1
    .param p1, "$this$unsigned"    # B

    .line 65
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public compareTo(Lio/nekohasekai/sagernet/utils/Subnet;)I
    .locals 7
    .param p1, "other"    # Lio/nekohasekai/sagernet/utils/Subnet;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 68
    .local v0, "addrThis":[B
    iget-object v1, p1, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 70
    .local v1, "addrThat":[B
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    .line 69
    nop

    .line 71
    .local v2, "result":I
    if-eqz v2, :cond_0

    return v2

    .line 72
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 74
    nop

    .line 73
    aget-byte v5, v0, v3

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/utils/Subnet;->unsigned(B)I

    move-result v5

    .line 74
    aget-byte v6, v1, v3

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/utils/Subnet;->unsigned(B)I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    .line 73
    move v2, v5

    .line 75
    if-eqz v2, :cond_1

    return v2

    .line 72
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "i":I
    :cond_2
    iget v3, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    iget v4, p1, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 7
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/utils/Subnet;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/utils/Subnet;->compareTo(Lio/nekohasekai/sagernet/utils/Subnet;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 81
    instance-of v0, p1, Lio/nekohasekai/sagernet/utils/Subnet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/utils/Subnet;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 82
    .local v0, "that":Lio/nekohasekai/sagernet/utils/Subnet;
    :goto_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    :cond_1
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    iget v2, v0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPrefixSize()I
    .locals 1

    .line 7
    iget v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 85
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    iget v1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toImmutable()Lio/nekohasekai/sagernet/utils/Subnet$Immutable;
    .locals 7

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    move-object v1, v0

    .local v1, "it":[B
    const/4 v2, 0x0

    .line 54
    .local v2, "$i$a$-also-Subnet$toImmutable$1":I
    iget v3, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    div-int/lit8 v3, v3, 0x8

    .line 55
    .local v3, "i":I
    iget v4, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    rem-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_0

    .line 56
    aget-byte v4, v1, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/lit8 v5, v5, 0x8

    iget v6, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    shl-int v5, v6, v5

    neg-int v5, v5

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 59
    :cond_0
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/4 v5, 0x0

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_0

    .line 60
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_1
    nop

    .line 53
    .end local v1    # "it":[B
    .end local v2    # "$i$a$-also-Subnet$toImmutable$1":I
    .end local v3    # "i":I
    const-string v1, "also(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget v1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    .line 53
    new-instance v2, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;

    invoke-direct {v2, v0, v1}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;-><init>([BI)V

    .line 60
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    iget v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/Subnet;->getAddressLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getHostAddress(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/utils/Subnet;->prefixSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
