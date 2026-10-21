.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONArray;

.field public final synthetic f$3:Lorg/json/JSONObject;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$2:Lorg/json/JSONArray;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$3:Lorg/json/JSONObject;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$2:Lorg/json/JSONArray;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$3:Lorg/json/JSONObject;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;->f$4:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->lambda$refresh$3$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/util/Map;)V

    return-void
.end method
