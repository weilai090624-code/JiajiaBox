.class public abstract Lio/nekohasekai/sagernet/fmt/internal/InternalBean;
.super Lio/nekohasekai/sagernet/fmt/AbstractBean;
.source "InternalBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;-><init>()V

    return-void
.end method


# virtual methods
.method public canICMPing()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public canMapping()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public canTCPing()Z
    .locals 1

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public displayAddress()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, ""

    return-object v0
.end method
