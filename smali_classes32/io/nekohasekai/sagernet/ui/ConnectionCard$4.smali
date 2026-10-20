.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionCard$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;Landroid/content/Context;Ljava/util/Map;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$2:Ljava/util/Map;

    iput p4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$2:Ljava/util/Map;

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->lambda$request$3$io-nekohasekai-sagernet-ui-ConnectionCard(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method
