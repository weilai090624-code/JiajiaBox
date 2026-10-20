.class public Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "TimeSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TimeSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTimeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "Lj$/time/LocalTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    return-void
.end method

.method static read(Lcom/esotericsoftware/kryo/io/Input;)Lj$/time/LocalTime;
    .locals 5
    .param p0, "in"    # Lcom/esotericsoftware/kryo/io/Input;

    .line 164
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v0

    .line 165
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 166
    .local v1, "minute":I
    const/4 v2, 0x0

    .line 167
    .local v2, "second":I
    const/4 v3, 0x0

    .line 168
    .local v3, "nano":I
    if-gez v0, :cond_0

    .line 169
    not-int v0, v0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v1

    .line 172
    if-gez v1, :cond_1

    .line 173
    not-int v1, v1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v2

    .line 176
    if-gez v2, :cond_2

    .line 177
    not-int v2, v2

    goto :goto_0

    .line 179
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v3

    .line 183
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lj$/time/LocalTime;->of(IIII)Lj$/time/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method static write(Lcom/esotericsoftware/kryo/io/Output;Lj$/time/LocalTime;)V
    .locals 2
    .param p0, "out"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p1, "time"    # Lj$/time/LocalTime;

    .line 138
    invoke-virtual {p1}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p1}, Lj$/time/LocalTime;->getSecond()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p1}, Lj$/time/LocalTime;->getMinute()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    not-int v0, v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 144
    invoke-virtual {p1}, Lj$/time/LocalTime;->getMinute()I

    move-result v0

    not-int v0, v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 148
    invoke-virtual {p1}, Lj$/time/LocalTime;->getMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 149
    invoke-virtual {p1}, Lj$/time/LocalTime;->getSecond()I

    move-result v0

    not-int v0, v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Lj$/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 153
    invoke-virtual {p1}, Lj$/time/LocalTime;->getMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 154
    invoke-virtual {p1}, Lj$/time/LocalTime;->getSecond()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    .line 155
    invoke-virtual {p1}, Lj$/time/LocalTime;->getNano()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    .line 157
    :goto_0
    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lj$/time/LocalTime;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "in"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .line 160
    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->read(Lcom/esotericsoftware/kryo/io/Input;)Lj$/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lj$/time/LocalTime;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "out"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "time"    # Lj$/time/LocalTime;

    .line 134
    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->write(Lcom/esotericsoftware/kryo/io/Output;Lj$/time/LocalTime;)V

    .line 135
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p3, Lj$/time/LocalTime;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lj$/time/LocalTime;)V

    return-void
.end method
