.class public final synthetic Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    check-cast p2, Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-static {p1, p2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->lambda$sortResults$0(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/database/ProxyEntity;)I

    move-result p1

    return p1
.end method
