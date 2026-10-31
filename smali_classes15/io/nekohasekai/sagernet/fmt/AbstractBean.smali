.class public abstract Lio/nekohasekai/sagernet/fmt/AbstractBean;
.super Lio/nekohasekai/sagernet/fmt/Serializable;
.source "AbstractBean.java"


# instance fields
.field public customConfigJson:Ljava/lang/String;

.field public customOutboundJson:Ljava/lang/String;

.field public transient finalAddress:Ljava/lang/String;

.field public transient finalPort:I

.field public name:Ljava/lang/String;

.field private transient serializeWithoutName:Z

.field public serverAddress:Ljava/lang/String;

.field public serverPort:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lio/nekohasekai/sagernet/fmt/Serializable;-><init>()V

    return-void
.end method


# virtual methods
.method public canICMPing()Z
    .registers 2

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public canMapping()Z
    .registers 2

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public canTCPing()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public abstract clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->clone()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
    .registers 3
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    .line 112
    return-void
.end method

.method public deserializeFromBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
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

    .line 95
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 97
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 99
    .local v0, "extraVersion":I
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->name:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customOutboundJson:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customConfigJson:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public displayAddress()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/NetsKt;->wrapIPV6Host(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->name:Ljava/lang/String;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->name:Ljava/lang/String;

    return-object v0

    .line 35
    :cond_b
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->displayAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 121
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 123
    :cond_12
    :try_start_12
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 124
    move-object v2, p1

    check-cast v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    iput-boolean v0, v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 125
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_30

    .line 127
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 128
    move-object v2, p1

    check-cast v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    iput-boolean v1, v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 125
    return v0

    .line 127
    :catchall_30
    move-exception v0

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 128
    move-object v2, p1

    check-cast v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    iput-boolean v1, v2, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 129
    throw v0

    .line 121
    :cond_39
    :goto_39
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 136
    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_f

    .line 138
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 136
    return v0

    .line 138
    :catchall_f
    move-exception v0

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    .line 139
    throw v0
.end method

.method public initializeDefaultValues()V
    .registers 3

    .line 61
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    invoke-static {v0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 62
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    goto :goto_29

    .line 63
    :cond_d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 64
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/NetsKt;->unwrapIPV6Host(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    .line 66
    :cond_29
    :goto_29
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    if-nez v0, :cond_35

    .line 67
    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    .line 69
    :cond_35
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->name:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_3d

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->name:Ljava/lang/String;

    .line 71
    :cond_3d
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->finalAddress:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->finalPort:I

    .line 74
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customOutboundJson:Ljava/lang/String;

    if-nez v0, :cond_4f

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customOutboundJson:Ljava/lang/String;

    .line 75
    :cond_4f
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customConfigJson:Ljava/lang/String;

    if-nez v0, :cond_55

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customConfigJson:Ljava/lang/String;

    .line 76
    :cond_55
    return-void
.end method

.method public network()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "tcp,udp"

    return-object v0
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

    .line 105
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 107
    return-void
.end method

.method public serializeToBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V
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

    .line 83
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serializeWithoutName:Z

    if-nez v0, :cond_10

    .line 87
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 89
    :cond_10
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customOutboundJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/AbstractBean;->customConfigJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmoe/matsuri/nb4a/utils/JavaUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
