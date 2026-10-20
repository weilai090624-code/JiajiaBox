.class public final Ldev/matrix/roomigrant/model/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u0015\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J=\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Ldev/matrix/roomigrant/model/TableInfo;",
        "",
        "scheme",
        "Ldev/matrix/roomigrant/model/SchemeInfo;",
        "name",
        "",
        "createSql",
        "indices",
        "",
        "Ldev/matrix/roomigrant/model/IndexInfo;",
        "(Ldev/matrix/roomigrant/model/SchemeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
        "getCreateSql",
        "()Ljava/lang/String;",
        "getIndices",
        "()Ljava/util/Map;",
        "getName",
        "getScheme",
        "()Ldev/matrix/roomigrant/model/SchemeInfo;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "RoomigrantLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final createSql:Ljava/lang/String;

.field private final indices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/IndexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final scheme:Ldev/matrix/roomigrant/model/SchemeInfo;


# direct methods
.method public constructor <init>(Ldev/matrix/roomigrant/model/SchemeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "scheme"    # Ldev/matrix/roomigrant/model/SchemeInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "createSql"    # Ljava/lang/String;
    .param p4, "indices"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/matrix/roomigrant/model/SchemeInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/IndexInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createSql"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    iput-object p2, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    iput-object p4, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Ldev/matrix/roomigrant/model/TableInfo;Ldev/matrix/roomigrant/model/SchemeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ldev/matrix/roomigrant/model/TableInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ldev/matrix/roomigrant/model/TableInfo;->copy(Ldev/matrix/roomigrant/model/SchemeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ldev/matrix/roomigrant/model/TableInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ldev/matrix/roomigrant/model/SchemeInfo;
    .locals 1

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/IndexInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ldev/matrix/roomigrant/model/SchemeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ldev/matrix/roomigrant/model/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/matrix/roomigrant/model/SchemeInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/IndexInfo;",
            ">;)",
            "Ldev/matrix/roomigrant/model/TableInfo;"
        }
    .end annotation

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createSql"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldev/matrix/roomigrant/model/TableInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Ldev/matrix/roomigrant/model/TableInfo;-><init>(Ldev/matrix/roomigrant/model/SchemeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ldev/matrix/roomigrant/model/TableInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/matrix/roomigrant/model/TableInfo;

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    iget-object v1, p1, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    iget-object v1, p1, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    iget-object p1, p1, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCreateSql()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/IndexInfo;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getScheme()Ldev/matrix/roomigrant/model/SchemeInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableInfo(scheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/matrix/roomigrant/model/TableInfo;->scheme:Ldev/matrix/roomigrant/model/SchemeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/matrix/roomigrant/model/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createSql="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/matrix/roomigrant/model/TableInfo;->createSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/matrix/roomigrant/model/TableInfo;->indices:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
