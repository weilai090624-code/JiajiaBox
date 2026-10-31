.class final Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;
.super Ljava/lang/Object;
.source "IpQualityCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/IpQualityCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Result"
.end annotation


# instance fields
.field abuser:Z

.field asn:Ljava/lang/String;

.field city:Ljava/lang/String;

.field country:Ljava/lang/String;

.field countryCode:Ljava/lang/String;

.field crawler:Z

.field datacenter:Z

.field ip:Ljava/lang/String;

.field isp:Ljava/lang/String;

.field mobile:Z

.field proxy:Z

.field tor:Z

.field trust:I

.field vpn:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const-string v0, ""

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->ip:Ljava/lang/String;

    .line 475
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->country:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->countryCode:Ljava/lang/String;

    .line 477
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->city:Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->asn:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/IpQualityCard$1;)V
    .registers 2

    .line 473
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;-><init>()V

    return-void
.end method
