.class public Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
.super Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;
.source "VMessBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alterId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean$1;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->clone()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .registers 3

    .line 30
    new-instance v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;-><init>()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->clone()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v0

    return-object v0
.end method

.method public initializeDefaultValues()V
    .registers 3

    .line 16
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;->initializeDefaultValues()V

    .line 18
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->alterId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 21
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    goto :goto_2b

    :cond_29
    const-string v0, ""

    :goto_2b
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    goto :goto_3d

    .line 23
    :cond_2e
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    goto :goto_3b

    :cond_39
    const-string v0, "auto"

    :goto_3b
    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->encryption:Ljava/lang/String;

    .line 25
    :goto_3d
    return-void
.end method
