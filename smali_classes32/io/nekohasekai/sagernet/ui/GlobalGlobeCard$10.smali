.class public final synthetic Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/nekohasekai/sagernet/ui/GlobeTopology$CountryLookup;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ContinentGeoIp;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ContinentGeoIp;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$10;->f$0:Lio/nekohasekai/sagernet/ui/ContinentGeoIp;

    return-void
.end method


# virtual methods
.method public final country(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$10;->f$0:Lio/nekohasekai/sagernet/ui/ContinentGeoIp;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lambda$request$4(Lio/nekohasekai/sagernet/ui/ContinentGeoIp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
