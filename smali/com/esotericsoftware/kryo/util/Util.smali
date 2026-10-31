.class public Lcom/esotericsoftware/kryo/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final isAndroid:Z

.field public static final maxArraySize:I = 0x7ffffff7

.field private static final primitiveWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final unsafe:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 37
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "found":Z
    const-string v1, "kryo.unsafe"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "kryo"

    if-eqz v1, :cond_29

    .line 44
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_52

    const-string v1, "Unsafe is disabled."

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 47
    :cond_29
    :try_start_29
    const-string v1, "com.esotericsoftware.kryo.unsafe.UnsafeUtil"

    const-class v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "unsafe"

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_48

    if-eqz v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    move v0, v4

    .line 51
    goto :goto_52

    .line 49
    :catchall_48
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v3, :cond_52

    const-string v3, "Unsafe is unavailable."

    invoke-static {v2, v3, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_52
    :goto_52
    sput-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->unsafe:Z

    .line 59
    .end local v0    # "found":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    .line 61
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Ljava/lang/Class;

    .line 186
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 187
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "canonicalName":Ljava/lang/String;
    if-eqz v0, :cond_d

    move-object v1, v0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1
.end method

.method public static className(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .param p0, "type"    # Ljava/lang/Class;

    .line 157
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 158
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 159
    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, "elementClass":Ljava/lang/Class;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getDimensionCount(Ljava/lang/Class;)I

    move-result v3

    .local v3, "n":I
    :goto_1b
    if-ge v2, v3, :cond_25

    .line 162
    const-string v4, "[]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 163
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    .end local v0    # "elementClass":Ljava/lang/Class;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    :cond_3b
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_6f

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_6f

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_6a

    goto :goto_6f

    .line 170
    :cond_6a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_6f
    :goto_6f
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static classNames([Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .param p0, "types"    # [Ljava/lang/Class;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "n":I
    :goto_9
    if-ge v1, v2, :cond_1e

    .line 177
    if-lez v1, :cond_12

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_12
    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 180
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDimensionCount(Ljava/lang/Class;)I
    .registers 3
    .param p0, "arrayClass"    # Ljava/lang/Class;

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "depth":I
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 218
    .local v1, "nextClass":Ljava/lang/Class;
    :goto_5
    if-eqz v1, :cond_e

    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_5

    .line 222
    :cond_e
    return v0
.end method

.method public static getElementClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .param p0, "arrayClass"    # Ljava/lang/Class;

    .line 227
    move-object v0, p0

    .line 228
    .local v0, "elementClass":Ljava/lang/Class;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 229
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 230
    :cond_c
    return-object v0
.end method

.method public static getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 97
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 98
    :cond_7
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_e

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 99
    :cond_e
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 100
    :cond_15
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_1c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 101
    :cond_1c
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_23

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 102
    :cond_23
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_2a

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 103
    :cond_2a
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_31

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 104
    :cond_31
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_38

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 105
    :cond_38
    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_3f

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 106
    :cond_3f
    return-object p0
.end method

.method private static getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 247
    .local p0, "primitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 248
    sget-object v0, Lcom/esotericsoftware/kryo/util/Util;->primitiveWrappers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 247
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument has to be primitive type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 83
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 84
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 85
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 86
    :cond_15
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 87
    :cond_1c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 88
    :cond_23
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 89
    :cond_2a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 90
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 91
    :cond_38
    return-object p0
.end method

.method public static isAscii(Ljava/lang/String;)Z
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_11

    const/4 v2, 0x0

    return v2

    .line 252
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 254
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public static isAssignableTo(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 234
    .local p0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 235
    :cond_6
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 236
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    invoke-static {p1, p0}, Lcom/esotericsoftware/kryo/util/Util;->isPrimitiveWrapperOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_26
    return v1

    .line 237
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p0, p1}, Lcom/esotericsoftware/kryo/util/Util;->isPrimitiveWrapperOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 238
    :cond_32
    const-class v0, Lcom/esotericsoftware/kryo/serializers/ClosureSerializer$Closure;

    if-ne p0, v0, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0

    .line 239
    :cond_3b
    return v2
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "className"    # Ljava/lang/String;

    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 74
    const/4 v0, 0x1

    return v0

    .line 75
    :catch_5
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kryo"

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    return v1
.end method

.method public static isEnum(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 116
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-class v0, Ljava/lang/Enum;

    if-eq p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isPrimitiveWrapperOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 243
    .local p0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "primitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isWrapperClass(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 110
    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_23

    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .line 121
    const-string v0, "kryo"

    if-nez p1, :cond_27

    .line 122
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_26
    return-void

    .line 125
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 126
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const-string v3, ": "

    if-nez v2, :cond_63

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->isWrapperClass(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_63

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_3e

    goto :goto_63

    .line 129
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 127
    :cond_63
    :goto_63
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_8b
    :goto_8b
    return-void
.end method

.method public static newFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/SerializerFactory;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/esotericsoftware/kryo/SerializerFactory;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)TT;"
        }
    .end annotation

    .line 261
    .local p0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    if-eqz p1, :cond_1a

    .line 263
    const/4 v0, 0x1

    :try_start_3
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/SerializerFactory;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_21

    return-object v0

    .line 264
    :catch_19
    move-exception v0

    .line 267
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/SerializerFactory;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_21

    return-object v0

    .line 268
    :catch_21
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/lang/Exception;
    if-nez p1, :cond_41

    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create serializer factory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 272
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create serializer factory \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for serializer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static pos(I)Ljava/lang/String;
    .registers 3
    .param p0, "position"    # I

    .line 133
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, ""

    goto :goto_1f

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0
.end method

.method public static simpleName(Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Ljava/lang/String;
    .registers 6
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "genericType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_13

    :cond_12
    move-object v1, p0

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    if-eqz v1, :cond_43

    .line 200
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v2, v2

    .local v2, "n":I
    :goto_27
    if-ge v1, v2, :cond_3e

    .line 202
    if-lez v1, :cond_30

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_30
    iget-object v3, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 205
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_3e
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 208
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-static {p0}, Lcom/esotericsoftware/kryo/util/Util;->getDimensionCount(Ljava/lang/Class;)I

    move-result v2

    .restart local v2    # "n":I
    :goto_4e
    if-ge v1, v2, :cond_58

    .line 209
    const-string v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 211
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static simpleName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 192
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;

    .line 139
    const-string v0, ")"

    if-nez p0, :cond_7

    const-string v0, "null"

    return-object v0

    .line 140
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 141
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_16
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_1f

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "className":Ljava/lang/String;
    :goto_23
    const/4 v3, 0x0

    :try_start_24
    const-string/jumbo v4, "toString"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_37

    if-ne v4, v5, :cond_36

    return-object v2

    .line 146
    :cond_36
    goto :goto_38

    .line 145
    :catch_37
    move-exception v4

    .line 148
    :goto_38
    :try_start_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x61

    if-le v5, v6, :cond_77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_76
    .catchall {:try_start_38 .. :try_end_76} :catchall_79

    goto :goto_78

    :cond_77
    move-object v0, v4

    :goto_78
    return-object v0

    .line 150
    .end local v4    # "value":Ljava/lang/String;
    :catchall_79
    move-exception v3

    .line 151
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (toString exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
