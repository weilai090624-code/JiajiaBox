.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;"
    method = "lambda$refresh$3"
    proto = "(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$3:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;->f$3:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->lambda$refresh$3$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method
