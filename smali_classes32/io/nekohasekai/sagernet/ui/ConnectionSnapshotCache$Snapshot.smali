.class final Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;
.super Ljava/lang/Object;
.source "ConnectionSnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# instance fields
.field final connections:Lorg/json/JSONArray;

.field final root:Lorg/json/JSONObject;

.field final types:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    .line 45
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_a
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;->root:Lorg/json/JSONObject;

    .line 46
    const-string v0, "connections"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_19

    .line 47
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :cond_19
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;->connections:Lorg/json/JSONArray;

    if-nez p2, :cond_22

    .line 48
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_22
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;->types:Lorg/json/JSONObject;

    return-void
.end method
