.class public final synthetic Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Landroid/content/Context;ZI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$1:Landroid/content/Context;

    iput-boolean p3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$2:Z

    iput p4, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$1:Landroid/content/Context;

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$2:Z

    iget v3, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$17;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lambda$request$10$io-nekohasekai-sagernet-ui-GlobalGlobeCard(Landroid/content/Context;ZI)V

    return-void
.end method
