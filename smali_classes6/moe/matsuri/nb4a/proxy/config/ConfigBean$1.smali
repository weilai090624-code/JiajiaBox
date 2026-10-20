.class Lmoe/matsuri/nb4a/proxy/config/ConfigBean$1;
.super Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;
.source "ConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR<",
        "Lmoe/matsuri/nb4a/proxy/config/ConfigBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lmoe/matsuri/nb4a/proxy/config/ConfigBean$1;->newArray(I)[Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 80
    new-array v0, p1, [Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    return-object v0
.end method

.method public bridge synthetic newInstance()Lio/nekohasekai/sagernet/fmt/Serializable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/config/ConfigBean$1;->newInstance()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .locals 1

    .line 75
    new-instance v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;-><init>()V

    return-object v0
.end method
