.class public final Lio/nekohasekai/sagernet/utils/Subnet$Immutable;
.super Ljava/lang/Object;
.source "Subnet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/utils/Subnet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Immutable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/Subnet$Immutable;",
        "",
        "a",
        "",
        "prefixSize",
        "",
        "<init>",
        "([BI)V",
        "matches",
        "",
        "b",
        "Companion",
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
.field public static final Companion:Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;


# instance fields
.field private final a:[B

.field private final prefixSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->Companion:Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "a"    # [B
    .param p2, "prefixSize"    # I

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->a:[B

    iput p2, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->prefixSize:I

    return-void
.end method

.method public synthetic constructor <init>([BIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 29
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;-><init>([BI)V

    return-void
.end method

.method public static final synthetic access$getA$p(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)[B
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/utils/Subnet$Immutable;

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->a:[B

    return-object v0
.end method


# virtual methods
.method public final matches(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)Z
    .locals 1
    .param p1, "b"    # Lio/nekohasekai/sagernet/utils/Subnet$Immutable;

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p1, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->a:[B

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->matches([B)Z

    move-result v0

    return v0
.end method

.method public final matches([B)Z
    .locals 7
    .param p1, "b"    # [B

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->a:[B

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, v0, 0x8

    iget v3, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->prefixSize:I

    if-ge v1, v3, :cond_2

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x8

    iget v3, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->prefixSize:I

    if-gt v1, v3, :cond_2

    .line 46
    iget-object v1, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->a:[B

    aget-byte v1, v1, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    mul-int/lit8 v1, v0, 0x8

    iget v3, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->prefixSize:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->a:[B

    aget-byte v1, v1, v0

    aget-byte v3, p1, v0

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x8

    iget v6, p0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->prefixSize:I

    sub-int/2addr v5, v6

    shl-int v5, v4, v5

    neg-int v5, v5

    and-int/2addr v3, v5

    int-to-byte v3, v3

    if-ne v1, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method
