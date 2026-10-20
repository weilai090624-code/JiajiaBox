.class public final Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;
.super Ljava/lang/Object;
.source "Subnet.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/utils/Subnet$Immutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/nekohasekai/sagernet/utils/Subnet$Immutable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;",
        "Ljava/util/Comparator;",
        "Lio/nekohasekai/sagernet/utils/Subnet$Immutable;",
        "<init>",
        "()V",
        "compare",
        "",
        "a",
        "b",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)I
    .locals 5
    .param p1, "a"    # Lio/nekohasekai/sagernet/utils/Subnet$Immutable;
    .param p2, "b"    # Lio/nekohasekai/sagernet/utils/Subnet$Immutable;

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->access$getA$p(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p2}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->access$getA$p(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p1}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->access$getA$p(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)[B

    move-result-object v1

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 34
    invoke-static {p1}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->access$getA$p(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)[B

    move-result-object v3

    aget-byte v3, v3, v0

    invoke-static {p2}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;->access$getA$p(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)[B

    move-result-object v4

    aget-byte v4, v4, v0

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    .line 35
    .local v3, "result":I
    if-eqz v3, :cond_1

    return v3

    .line 33
    .end local v3    # "result":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "i":I
    :cond_2
    return v2

    .line 32
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 30
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;

    move-object v1, p2

    check-cast v1, Lio/nekohasekai/sagernet/utils/Subnet$Immutable;

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/utils/Subnet$Immutable$Companion;->compare(Lio/nekohasekai/sagernet/utils/Subnet$Immutable;Lio/nekohasekai/sagernet/utils/Subnet$Immutable;)I

    move-result v0

    return v0
.end method
