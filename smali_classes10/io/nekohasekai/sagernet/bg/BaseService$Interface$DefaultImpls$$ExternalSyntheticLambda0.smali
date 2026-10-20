.class public final synthetic Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls$$ExternalSyntheticLambda0;->f$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls$$ExternalSyntheticLambda0;->f$0:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    check-cast p1, Landroid/net/Network;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/bg/BaseService$Interface$DefaultImpls;->$r8$lambda$1eJASEZL67nvrxm2XUJ2PGF2ILw(Lio/nekohasekai/sagernet/bg/BaseService$Interface;Landroid/net/Network;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
