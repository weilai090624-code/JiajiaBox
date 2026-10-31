.class public Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
.super Lio/nekohasekai/sagernet/fmt/AbstractBean;
.source "HysteriaBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FAKETCP:I = 0x1

.field public static final PROTOCOL_UDP:I = 0x0

.field public static final PROTOCOL_WECHAT_VIDEO:I = 0x2

.field public static final TYPE_BASE64:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STRING:I = 0x1


# instance fields
.field public allowInsecure:Ljava/lang/Boolean;

.field public alpn:Ljava/lang/String;

.field public authPayload:Ljava/lang/String;

.field public authPayloadType:Ljava/lang/Integer;

.field public caText:Ljava/lang/String;

.field public connectionReceiveWindow:Ljava/lang/Integer;

.field public disableMtuDiscovery:Ljava/lang/Boolean;

.field public downloadMbps:Ljava/lang/Integer;

.field public hopInterval:Ljava/lang/Integer;

.field public obfuscation:Ljava/lang/String;

.field public protocol:Ljava/lang/Integer;

.field public protocolVersion:Ljava/lang/Integer;

.field public serverPorts:Ljava/lang/String;

.field public sni:Ljava/lang/String;

.field public streamReceiveWindow:Ljava/lang/Integer;

.field public uploadMbps:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean$1;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;-><init>()V

    return-void
.end method


# virtual methods
.method public canMapping()Z
    .registers 3

    .line 51
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public canTCPing()Z
    .registers 2

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->clone()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .registers 3

    .line 166
    new-instance v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;-><init>()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->clone()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
    .registers 6
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 112
    .local v0, "version":I
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 113
    const/4 v1, 0x7

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    .line 114
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    goto :goto_1c

    .line 116
    :cond_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    .line 118
    :goto_1c
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 119
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 120
    const/4 v1, 0x3

    if-lt v0, v1, :cond_39

    .line 121
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    .line 123
    :cond_39
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 125
    const/4 v1, 0x2

    if-lt v0, v1, :cond_4e

    .line 126
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    .line 128
    :cond_4e
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    .line 129
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    .line 130
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    .line 131
    if-lt v0, v2, :cond_95

    .line 132
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    .line 135
    const/4 v1, 0x4

    if-eq v0, v1, :cond_95

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    .line 137
    :cond_95
    const/4 v1, 0x5

    if-lt v0, v1, :cond_a2

    .line 138
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    .line 140
    :cond_a2
    const/4 v1, 0x6

    if-lt v0, v1, :cond_ac

    .line 141
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    goto :goto_d3

    .line 144
    :cond_ac
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    invoke-static {v1}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->isMultiPort(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 145
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    const-string v3, ":"

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    goto :goto_d3

    .line 148
    :cond_cb
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 151
    :goto_d3
    return-void
.end method

.method public displayAddress()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverAddress:Ljava/lang/String;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/NetsKt;->wrapIPV6Host(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeDefaultValues()V
    .registers 5

    .line 56
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->initializeDefaultValues()V

    .line 57
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    .line 59
    :cond_e
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    .line 60
    :cond_19
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_21

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    .line 61
    :cond_21
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    if-nez v0, :cond_2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    .line 62
    :cond_2b
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    if-nez v0, :cond_31

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    .line 63
    :cond_31
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    if-nez v0, :cond_37

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    .line 64
    :cond_37
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    if-nez v0, :cond_3d

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    .line 65
    :cond_3d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    if-nez v0, :cond_43

    iput-object v2, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    .line 66
    :cond_43
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    if-nez v0, :cond_4d

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    .line 68
    :cond_4d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-ne v0, v2, :cond_6f

    .line 69
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    if-nez v0, :cond_62

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    .line 70
    :cond_62
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    if-nez v0, :cond_83

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    goto :goto_83

    .line 72
    :cond_6f
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    if-nez v0, :cond_79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    .line 73
    :cond_79
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    if-nez v0, :cond_83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    .line 76
    :cond_83
    :goto_83
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    if-nez v0, :cond_8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    .line 77
    :cond_8d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    if-nez v0, :cond_97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    .line 78
    :cond_97
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    if-nez v0, :cond_a1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    .line 79
    :cond_a1
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    if-nez v0, :cond_ab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    .line 80
    :cond_ab
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    if-nez v0, :cond_b3

    const-string v0, "443"

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    .line 81
    :cond_b3
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

    .line 85
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 86
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 88
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayloadType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->authPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->obfuscation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->sni:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->alpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->uploadMbps:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->downloadMbps:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 101
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->caText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->streamReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->connectionReceiveWindow:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->disableMtuDiscovery:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 105
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hopInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->serverPorts:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 107
    return-void
.end method
