.class Lio/nekohasekai/sagernet/ui/ContinentGeoIp$1;
.super Ljava/util/LinkedHashMap;
.source "ContinentGeoIp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ContinentGeoIp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ContinentGeoIp;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ContinentGeoIp;IFZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$1;->this$0:Lio/nekohasekai/sagernet/ui/ContinentGeoIp;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$1;->size()I

    move-result p1

    const/16 v0, 0x1000

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
