.class public Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
.super Lio/nekohasekai/sagernet/fmt/AbstractBean;
.source "NaiveBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public certificates:Ljava/lang/String;

.field public extraHeaders:Ljava/lang/String;

.field public insecureConcurrency:Ljava/lang/Integer;

.field public password:Ljava/lang/String;

.field public proto:Ljava/lang/String;

.field public sUoT:Ljava/lang/Boolean;

.field public sni:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean$1;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->clone()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .registers 3

    .line 81
    new-instance v0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;-><init>()V

    invoke-static {p0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

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
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->clone()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

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

    .line 60
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 61
    .local v0, "version":I
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->deserialize(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V

    .line 62
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->proto:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->username:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->password:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->extraHeaders:Ljava/lang/String;

    .line 66
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2e

    .line 67
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->certificates:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sni:Ljava/lang/String;

    .line 70
    :cond_2e
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3b

    .line 71
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->insecureConcurrency:Ljava/lang/Integer;

    .line 73
    :cond_3b
    const/4 v1, 0x3

    if-lt v0, v1, :cond_48

    .line 74
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sUoT:Ljava/lang/Boolean;

    .line 76
    :cond_48
    return-void
.end method

.method public initializeDefaultValues()V
    .registers 3

    .line 31
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->serverPort:Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/16 v0, 0x1bb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->serverPort:Ljava/lang/Integer;

    .line 32
    :cond_c
    invoke-super {p0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->initializeDefaultValues()V

    .line 33
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->proto:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "https"

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->proto:Ljava/lang/String;

    .line 34
    :cond_17
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->username:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1f

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->username:Ljava/lang/String;

    .line 35
    :cond_1f
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->password:Ljava/lang/String;

    if-nez v0, :cond_25

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->password:Ljava/lang/String;

    .line 36
    :cond_25
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->extraHeaders:Ljava/lang/String;

    if-nez v0, :cond_2b

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->extraHeaders:Ljava/lang/String;

    .line 37
    :cond_2b
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->certificates:Ljava/lang/String;

    if-nez v0, :cond_31

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->certificates:Ljava/lang/String;

    .line 38
    :cond_31
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sni:Ljava/lang/String;

    if-nez v0, :cond_37

    iput-object v1, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sni:Ljava/lang/String;

    .line 39
    :cond_37
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->insecureConcurrency:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->insecureConcurrency:Ljava/lang/Integer;

    .line 40
    :cond_42
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sUoT:Ljava/lang/Boolean;

    if-nez v0, :cond_4c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sUoT:Ljava/lang/Boolean;

    .line 41
    :cond_4c
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

    .line 45
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 46
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serialize(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V

    .line 47
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->proto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->extraHeaders:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->certificates:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sni:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->insecureConcurrency:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->sUoT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 56
    return-void
.end method
