.class public Lorg/ini4j/spi/BeanTool;
.super Ljava/lang/Object;
.source "BeanTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/ini4j/spi/BeanTool;

.field private static final PARSE_METHOD:Ljava/lang/String; = "valueOf"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lorg/ini4j/spi/BeanTool;

    invoke-static {v0}, Lorg/ini4j/spi/ServiceFinder;->findService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/spi/BeanTool;

    sput-object v0, Lorg/ini4j/spi/BeanTool;->INSTANCE:Lorg/ini4j/spi/BeanTool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method public static final getInstance()Lorg/ini4j/spi/BeanTool;
    .registers 1

    .line 40
    sget-object v0, Lorg/ini4j/spi/BeanTool;->INSTANCE:Lorg/ini4j/spi/BeanTool;

    return-object v0
.end method

.method private getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .registers 4
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 258
    :try_start_0
    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0
    :try_end_8
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 260
    :catch_9
    move-exception v0

    .line 262
    .local v0, "x":Ljava/beans/IntrospectionException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parsePrimitiveValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    .line 272
    .local v0, "o":Ljava/lang/Object;
    :try_start_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_b

    .line 274
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    goto :goto_56

    .line 276
    :cond_b
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_15

    .line 278
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    move-object v0, v1

    goto :goto_56

    .line 280
    :cond_15
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_25

    .line 282
    new-instance v1, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v1

    goto :goto_56

    .line 284
    :cond_25
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2f

    .line 286
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    goto :goto_56

    .line 288
    :cond_2f
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_39

    .line 290
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    goto :goto_56

    .line 292
    :cond_39
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_43

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_56

    .line 296
    :cond_43
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4d

    .line 298
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    goto :goto_56

    .line 300
    :cond_4d
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_56

    .line 302
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_58

    move-object v0, v1

    .line 308
    :cond_56
    :goto_56
    nop

    .line 310
    return-object v0

    .line 305
    :catch_58
    move-exception v1

    .line 307
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalArgumentException;

    throw v2
.end method


# virtual methods
.method public inject(Ljava/lang/Object;Lorg/ini4j/spi/BeanAccess;)V
    .registers 13
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "props"    # Lorg/ini4j/spi/BeanAccess;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ini4j/spi/BeanTool;->getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .local v0, "arr$":[Ljava/beans/PropertyDescriptor;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v1, :cond_96

    aget-object v3, v0, v2

    .line 49
    .local v3, "pd":Ljava/beans/PropertyDescriptor;
    :try_start_e
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 50
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "name":Ljava/lang/String;
    if-eqz v4, :cond_6b

    invoke-interface {p2, v5}, Lorg/ini4j/spi/BeanAccess;->propLength(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_6b

    .line 56
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 58
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {p2, v5}, Lorg/ini4j/spi/BeanAccess;->propLength(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 59
    .local v6, "value":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_39
    invoke-interface {p2, v5}, Lorg/ini4j/spi/BeanAccess;->propLength(Ljava/lang/String;)I

    move-result v8

    if-ge v7, v8, :cond_55

    .line 61
    invoke-interface {p2, v5, v7}, Lorg/ini4j/spi/BeanAccess;->propGet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 59
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .end local v7    # "i":I
    :cond_55
    goto :goto_62

    .line 66
    .end local v6    # "value":Ljava/lang/Object;
    :cond_56
    invoke-interface {p2, v5}, Lorg/ini4j/spi/BeanAccess;->propGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    .restart local v6    # "value":Ljava/lang/Object;
    :goto_62
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_6b} :catch_6f

    .line 76
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_6b
    nop

    .line 45
    .end local v3    # "pd":Ljava/beans/PropertyDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 72
    .restart local v3    # "pd":Ljava/beans/PropertyDescriptor;
    :catch_6f
    move-exception v4

    .line 74
    .local v4, "x":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/lang/IllegalArgumentException;

    move-object v6, v5

    check-cast v6, Ljava/lang/IllegalArgumentException;

    throw v5

    .line 78
    .end local v0    # "arr$":[Ljava/beans/PropertyDescriptor;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "pd":Ljava/beans/PropertyDescriptor;
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_96
    return-void
.end method

.method public inject(Lorg/ini4j/spi/BeanAccess;Ljava/lang/Object;)V
    .registers 13
    .param p1, "props"    # Lorg/ini4j/spi/BeanAccess;
    .param p2, "bean"    # Ljava/lang/Object;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ini4j/spi/BeanTool;->getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .local v0, "arr$":[Ljava/beans/PropertyDescriptor;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v1, :cond_8d

    aget-object v3, v0, v2

    .line 86
    .local v3, "pd":Ljava/beans/PropertyDescriptor;
    :try_start_e
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_6b

    const-string v5, "class"

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 90
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 92
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_6b

    .line 94
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 96
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    if-ge v6, v7, :cond_5f

    .line 98
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 100
    .local v7, "v":Ljava/lang/Object;
    if-eqz v7, :cond_52

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 102
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 105
    :cond_52
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-interface {p1, v8, v9}, Lorg/ini4j/spi/BeanAccess;->propAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v7    # "v":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .end local v6    # "i":I
    :cond_5f
    goto :goto_6b

    .line 110
    :cond_60
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Lorg/ini4j/spi/BeanAccess;->propSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_6b} :catch_6f

    .line 118
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_6b
    :goto_6b
    nop

    .line 82
    .end local v3    # "pd":Ljava/beans/PropertyDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 115
    .restart local v3    # "pd":Ljava/beans/PropertyDescriptor;
    :catch_6f
    move-exception v4

    .line 117
    .local v4, "x":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 120
    .end local v0    # "arr$":[Ljava/beans/PropertyDescriptor;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "pd":Ljava/beans/PropertyDescriptor;
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_8d
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_30

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "o":Ljava/lang/Object;
    if-nez p1, :cond_a

    .line 134
    invoke-virtual {p0, p2}, Lorg/ini4j/spi/BeanTool;->zero(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f

    .line 136
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 138
    invoke-direct {p0, p1, p2}, Lorg/ini4j/spi/BeanTool;->parsePrimitiveValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f

    .line 142
    :cond_15
    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_1b

    .line 144
    move-object v0, p1

    goto :goto_2f

    .line 146
    :cond_1b
    const-class v1, Ljava/lang/Character;

    if-ne p2, v1, :cond_2b

    .line 148
    new-instance v1, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v1

    goto :goto_2f

    .line 152
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lorg/ini4j/spi/BeanTool;->parseSpecialValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    :goto_2f
    return-object v0

    .line 127
    .end local v0    # "o":Ljava/lang/Object;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseSpecialValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Ljava/io/File;

    if-ne p2, v1, :cond_c

    .line 218
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .local v0, "o":Ljava/lang/Object;
    goto :goto_4b

    .line 220
    .end local v0    # "o":Ljava/lang/Object;
    :cond_c
    const-class v1, Ljava/net/URL;

    if-ne p2, v1, :cond_17

    .line 222
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .restart local v0    # "o":Ljava/lang/Object;
    goto :goto_4b

    .line 224
    .end local v0    # "o":Ljava/lang/Object;
    :cond_17
    const-class v1, Ljava/net/URI;

    if-ne p2, v1, :cond_22

    .line 226
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .restart local v0    # "o":Ljava/lang/Object;
    goto :goto_4b

    .line 228
    .end local v0    # "o":Ljava/lang/Object;
    :cond_22
    const-class v1, Ljava/lang/Class;

    if-ne p2, v1, :cond_2b

    .line 230
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    goto :goto_4b

    .line 232
    .end local v0    # "o":Ljava/lang/Object;
    :cond_2b
    const-class v1, Ljava/util/TimeZone;

    if-ne p2, v1, :cond_34

    .line 234
    invoke-static {p1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    goto :goto_4b

    .line 241
    .end local v0    # "o":Ljava/lang/Object;
    :cond_34
    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 243
    .local v1, "parser":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4d

    .line 249
    .end local v1    # "parser":Ljava/lang/reflect/Method;
    .restart local v0    # "o":Ljava/lang/Object;
    :goto_4b
    nop

    .line 251
    return-object v0

    .line 246
    .end local v0    # "o":Ljava/lang/Object;
    :catch_4d
    move-exception v1

    .line 248
    .restart local v0    # "o":Ljava/lang/Object;
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalArgumentException;

    throw v2
.end method

.method public proxy(Ljava/lang/Class;Lorg/ini4j/spi/BeanAccess;)Ljava/lang/Object;
    .registers 6
    .param p2, "props"    # Lorg/ini4j/spi/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/ini4j/spi/BeanAccess;",
            ")TT;"
        }
    .end annotation

    .line 161
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;

    invoke-direct {v2, p2}, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;-><init>(Lorg/ini4j/spi/BeanAccess;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zero(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 168
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 172
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_e

    .line 174
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_58

    .line 176
    :cond_e
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_18

    .line 178
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_58

    .line 180
    :cond_18
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_23

    .line 182
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v1

    goto :goto_58

    .line 184
    :cond_23
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_30

    .line 186
    new-instance v1, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_58

    .line 188
    :cond_30
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3c

    .line 190
    new-instance v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v1

    goto :goto_58

    .line 192
    :cond_3c
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_45

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_58

    .line 196
    :cond_45
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_50

    .line 198
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_58

    .line 200
    :cond_50
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_58

    .line 202
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 206
    :cond_58
    :goto_58
    return-object v0
.end method
