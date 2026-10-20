.class Lio/nekohasekai/sagernet/fmt/tuic/TuicBean$1;
.super Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;
.source "TuicBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR<",
        "Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public newArray(I)[Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
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

    .line 121
    new-array v0, p1, [Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    return-object v0
.end method

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

    .line 112
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean$1;->newArray(I)[Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newInstance()Lio/nekohasekai/sagernet/fmt/Serializable;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean$1;->newInstance()Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .locals 1

    .line 116
    new-instance v0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;-><init>()V

    return-object v0
.end method
