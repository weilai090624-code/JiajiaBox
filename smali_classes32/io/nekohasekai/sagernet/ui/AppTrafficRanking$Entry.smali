.class public final Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;
.super Ljava/lang/Object;
.source "AppTrafficRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppTrafficRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final download:J

.field public final packageName:Ljava/lang/String;

.field public final total:J

.field public final upload:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->upload:J

    iput-wide p4, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->download:J

    # invokes: Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->add(JJ)J
    invoke-static {p2, p3, p4, p5}, Lio/nekohasekai/sagernet/ui/AppTrafficRanking;->access$000(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRanking$Entry;->total:J

    return-void
.end method
