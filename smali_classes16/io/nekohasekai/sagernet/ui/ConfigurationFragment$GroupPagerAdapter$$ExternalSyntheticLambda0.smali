.class public final synthetic Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/nekohasekai/sagernet/database/ProxyGroup;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;ILio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;->f$2:Lio/nekohasekai/sagernet/database/ProxyGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;->f$2:Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->$r8$lambda$kGXxum3orm_y4Vj5Ro7JOWp4-_E(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;ILio/nekohasekai/sagernet/database/ProxyGroup;)V

    return-void
.end method
