.class public final synthetic Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$1:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$1:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$9;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lambda$request$5$io-nekohasekai-sagernet-ui-GlobalGlobeCard(ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
