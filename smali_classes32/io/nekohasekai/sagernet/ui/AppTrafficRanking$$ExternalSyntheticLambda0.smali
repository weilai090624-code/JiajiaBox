.class public final synthetic Lio/nekohasekai/sagernet/ui/AppTrafficRanking$$ExternalSyntheticLambda0;
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
    check-cast p1, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;

    check-cast p2, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->lambda$topFive$0(Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;)I

    move-result p1

    return p1
.end method
