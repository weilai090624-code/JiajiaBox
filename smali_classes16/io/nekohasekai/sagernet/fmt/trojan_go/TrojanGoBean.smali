.class public Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
.super Lio/nekohasekai/sagernet/fmt/AbstractBean;
.source "TrojanGoBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowInsecure:Ljava/lang/Boolean;

.field public encryption:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public plugin:Ljava/lang/String;

.field public sni:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean$1;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->clone()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .registers 3

    .line 152
    new-instance v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;-><init>()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->clone()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
    .registers 5
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 129
    .local v0, "version":I
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 131
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_58

    :cond_22
    goto :goto_2d

    :pswitch_23
    const-string v2, "ws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto :goto_2e

    :goto_2d
    const/4 v1, -0x1

    :goto_2e
    packed-switch v1, :pswitch_data_5e

    goto :goto_3e

    .line 137
    :pswitch_32
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    .line 142
    :goto_3e
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    .line 144
    const/4 v1, 0x1

    if-lt v0, v1, :cond_57

    .line 145
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->allowInsecure:Ljava/lang/Boolean;

    .line 147
    :cond_57
    return-void

    :pswitch_data_58
    .packed-switch 0xedc
        :pswitch_23
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_32
    .end packed-switch
.end method

.method public initializeDefaultValues()V
    .registers 3

    .line 94
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->initializeDefaultValues()V

    .line 96
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    .line 97
    :cond_b
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    if-nez v0, :cond_11

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    .line 98
    :cond_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "original"

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    .line 99
    :cond_1d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    if-nez v0, :cond_23

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    .line 100
    :cond_23
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    if-nez v0, :cond_29

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    .line 101
    :cond_29
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "none"

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    .line 102
    :cond_35
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    if-nez v0, :cond_3b

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    .line 103
    :cond_3b
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->allowInsecure:Ljava/lang/Boolean;

    if-nez v0, :cond_46

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->allowInsecure:Ljava/lang/Boolean;

    .line 104
    :cond_46
    return-void
.end method

.method public serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V
    .registers 4
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 109
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->sni:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    :cond_1f
    goto :goto_2a

    :pswitch_20
    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_2b

    :goto_2a
    const/4 v0, -0x1

    :goto_2b
    packed-switch v0, :pswitch_data_54

    goto :goto_39

    .line 116
    :pswitch_2f
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 121
    :goto_39
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->encryption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->plugin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->allowInsecure:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 124
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0xedc
        :pswitch_20
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_2f
    .end packed-switch
.end method
