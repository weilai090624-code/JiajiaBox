.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method

.method private create(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;J)Ljava/util/Date;
    .registers 9
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;J)",
            "Ljava/util/Date;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 304
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    const-class v0, Ljava/util/Date;

    if-eq p2, v0, :cond_56

    if-nez p2, :cond_7

    goto :goto_56

    .line 307
    :cond_7
    const-class v0, Ljava/sql/Timestamp;

    if-ne p2, v0, :cond_11

    .line 308
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p3, p4}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 310
    :cond_11
    const-class v0, Ljava/sql/Date;

    if-ne p2, v0, :cond_1b

    .line 311
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p3, p4}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 313
    :cond_1b
    const-class v0, Ljava/sql/Time;

    if-ne p2, v0, :cond_25

    .line 314
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p3, p4}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 320
    :cond_25
    const/4 v0, 0x1

    :try_start_26
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 321
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljava/util/Date;>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_35} :catch_4b

    if-nez v2, :cond_3c

    .line 323
    :try_start_37
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_4b

    .line 325
    goto :goto_3c

    .line 324
    :catch_3b
    move-exception v2

    .line 327
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4a} :catch_4b

    return-object v0

    .line 328
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljava/util/Date;>;"
    :catch_4b
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 331
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v1, p3, p4}, Ljava/util/Date;->setTime(J)V

    .line 332
    return-object v1

    .line 305
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "d":Ljava/util/Date;
    :cond_56
    :goto_56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 302
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Date;)Ljava/util/Date;
    .registers 6
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/util/Date;

    .line 345
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Date;
    .registers 6
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 341
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .registers 4

    .line 302
    check-cast p3, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Date;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Date;)V
    .registers 7
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/util/Date;

    .line 337
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    .line 338
    return-void
.end method
