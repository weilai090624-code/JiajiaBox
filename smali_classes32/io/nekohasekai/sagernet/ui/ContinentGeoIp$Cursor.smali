.class final Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;
.super Ljava/lang/Object;
.source "ContinentGeoIp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ContinentGeoIp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cursor"
.end annotation


# instance fields
.field at:I

.field final base:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->at:I

    iput p2, p0, Lio/nekohasekai/sagernet/ui/ContinentGeoIp$Cursor;->base:I

    return-void
.end method
