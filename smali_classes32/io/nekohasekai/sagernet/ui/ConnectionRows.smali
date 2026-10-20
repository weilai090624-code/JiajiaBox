.class final Lio/nekohasekai/sagernet/ui/ConnectionRows;
.super Ljava/lang/Object;
.source "ConnectionRows.java"


# static fields
.field static final LIMIT:I = 0x96


# instance fields
.field final counts:[I

.field final pages:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 10

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->counts:[I

    .line 10
    new-array v1, v0, [Ljava/util/List;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 11
    :cond_1c
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->ordered(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 12
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 13
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_57

    .line 14
    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v0, :cond_57

    const-string v5, ""

    invoke-static {v3, p2, v4, v5}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->matches(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 15
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->counts:[I

    aget v6, v5, v4

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v4

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x96

    if-ge v5, v6, :cond_54

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    aget-object v5, v5, v4

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 12
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 18
    :cond_5a
    nop

    :goto_5b
    if-ge v1, v0, :cond_6c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 19
    :cond_6c
    return-void
.end method
