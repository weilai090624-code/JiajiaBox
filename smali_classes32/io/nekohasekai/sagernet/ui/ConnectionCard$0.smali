.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionCard$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/nekohasekai/sagernet/ui/ConnectionRows;

.field public final synthetic f$3:Lorg/json/JSONObject;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;J)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$1:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$2:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$3:Lorg/json/JSONObject;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$1:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$2:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$3:Lorg/json/JSONObject;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$4:Ljava/util/Map;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;->f$6:J

    invoke-virtual/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->lambda$request$2$io-nekohasekai-sagernet-ui-ConnectionCard(ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method
