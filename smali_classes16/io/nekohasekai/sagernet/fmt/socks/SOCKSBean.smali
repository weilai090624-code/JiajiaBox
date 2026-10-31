.class public Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
.super Lio/nekohasekai/sagernet/fmt/AbstractBean;
.source "SOCKSBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_SOCKS4:I = 0x0

.field public static final PROTOCOL_SOCKS4A:I = 0x1

.field public static final PROTOCOL_SOCKS5:I = 0x2


# instance fields
.field public password:Ljava/lang/String;

.field public protocol:Ljava/lang/Integer;

.field public sUoT:Ljava/lang/Boolean;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean$1;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->clone()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .registers 3

    .line 101
    new-instance v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;-><init>()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

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
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->clone()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

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

    .line 86
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 87
    .local v0, "version":I
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 88
    const/4 v1, 0x1

    if-lt v0, v1, :cond_14

    .line 89
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    .line 91
    :cond_14
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    .line 93
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 94
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->sUoT:Ljava/lang/Boolean;

    .line 96
    :cond_2d
    return-void
.end method

.method public initializeDefaultValues()V
    .registers 3

    .line 66
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->initializeDefaultValues()V

    .line 68
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    .line 69
    :cond_e
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_16

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    .line 70
    :cond_16
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    if-nez v0, :cond_1c

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    .line 71
    :cond_1c
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->sUoT:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->sUoT:Ljava/lang/Boolean;

    .line 72
    :cond_27
    return-void
.end method

.method public network()Ljava/lang/String;
    .registers 3

    .line 60
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    const-string v0, "tcp"

    return-object v0

    .line 61
    :cond_c
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->network()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public protocolName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 36
    const-string v0, "SOCKS5"

    return-object v0

    .line 34
    :pswitch_c
    const-string v0, "SOCKS4A"

    return-object v0

    .line 32
    :pswitch_f
    const-string v0, "SOCKS4"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public protocolVersion()I
    .registers 2

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 25
    const/4 v0, 0x5

    return v0

    .line 23
    :pswitch_b
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public protocolVersionName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 47
    const-string v0, "5"

    return-object v0

    .line 45
    :pswitch_c
    const-string v0, "4a"

    return-object v0

    .line 43
    :pswitch_f
    const-string v0, "4"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
    .end packed-switch
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

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 77
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 78
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->sUoT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 82
    return-void
.end method
