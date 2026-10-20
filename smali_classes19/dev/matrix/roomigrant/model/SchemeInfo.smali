.class public final Ldev/matrix/roomigrant/model/SchemeInfo;
.super Ljava/lang/Object;
.source "SchemeInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0003J)\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0006H\u00d6\u0001R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Ldev/matrix/roomigrant/model/SchemeInfo;",
        "",
        "version",
        "",
        "tables",
        "",
        "",
        "Ldev/matrix/roomigrant/model/TableInfo;",
        "(ILjava/util/Map;)V",
        "getTables",
        "()Ljava/util/Map;",
        "getVersion",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final tables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "tables"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/TableInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    iput-object p2, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Ldev/matrix/roomigrant/model/SchemeInfo;ILjava/util/Map;ILjava/lang/Object;)Ldev/matrix/roomigrant/model/SchemeInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ldev/matrix/roomigrant/model/SchemeInfo;->copy(ILjava/util/Map;)Ldev/matrix/roomigrant/model/SchemeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    return v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/TableInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(ILjava/util/Map;)Ldev/matrix/roomigrant/model/SchemeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/TableInfo;",
            ">;)",
            "Ldev/matrix/roomigrant/model/SchemeInfo;"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldev/matrix/roomigrant/model/SchemeInfo;

    invoke-direct {v0, p1, p2}, Ldev/matrix/roomigrant/model/SchemeInfo;-><init>(ILjava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ldev/matrix/roomigrant/model/SchemeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ldev/matrix/roomigrant/model/SchemeInfo;

    iget v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    iget v1, p1, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    iget-object p1, p1, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

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

.method public final getTables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/matrix/roomigrant/model/TableInfo;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 7
    iget v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SchemeInfo(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/matrix/roomigrant/model/SchemeInfo;->tables:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
