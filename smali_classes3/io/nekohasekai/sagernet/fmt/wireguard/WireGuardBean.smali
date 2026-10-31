.class public Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
.super Lio/nekohasekai/sagernet/fmt/AbstractBean;
.source "WireGuardBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public localAddress:Ljava/lang/String;

.field public mtu:Ljava/lang/Integer;

.field public peerPreSharedKey:Ljava/lang/String;

.field public peerPublicKey:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public reserved:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean$1;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;-><init>()V

    return-void
.end method


# virtual methods
.method public canTCPing()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->clone()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .registers 3

    .line 65
    new-instance v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;-><init>()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->clone()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
    .registers 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 48
    .local v0, "version":I
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 49
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->localAddress:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->privateKey:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPublicKey:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPreSharedKey:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->mtu:Ljava/lang/Integer;

    .line 54
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->reserved:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public initializeDefaultValues()V
    .registers 3

    .line 24
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->initializeDefaultValues()V

    .line 25
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->localAddress:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->localAddress:Ljava/lang/String;

    .line 26
    :cond_b
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->privateKey:Ljava/lang/String;

    if-nez v0, :cond_11

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->privateKey:Ljava/lang/String;

    .line 27
    :cond_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPublicKey:Ljava/lang/String;

    if-nez v0, :cond_17

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPublicKey:Ljava/lang/String;

    .line 28
    :cond_17
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPreSharedKey:Ljava/lang/String;

    if-nez v0, :cond_1d

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPreSharedKey:Ljava/lang/String;

    .line 29
    :cond_1d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->mtu:Ljava/lang/Integer;

    if-nez v0, :cond_29

    const/16 v0, 0x58c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->mtu:Ljava/lang/Integer;

    .line 30
    :cond_29
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->reserved:Ljava/lang/String;

    if-nez v0, :cond_2f

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->reserved:Ljava/lang/String;

    .line 31
    :cond_2f
    return-void
.end method

.method public serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V
    .registers 3
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 36
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 37
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->localAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->privateKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPublicKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->peerPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->mtu:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->reserved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
