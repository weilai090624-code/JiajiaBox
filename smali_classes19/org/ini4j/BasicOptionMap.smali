.class public Lorg/ini4j/BasicOptionMap;
.super Lorg/ini4j/CommonMultiMap;
.source "BasicOptionMap.java"

# interfaces
.implements Lorg/ini4j/OptionMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ini4j/BasicOptionMap$Access;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ini4j/CommonMultiMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lorg/ini4j/OptionMap;"
    }
.end annotation


# static fields
.field private static final ENVIRONMENT_PREFIX:Ljava/lang/String; = "@env/"

.field private static final ENVIRONMENT_PREFIX_LEN:I

.field private static final EXPRESSION:Ljava/util/regex/Pattern;

.field private static final G_INDEX:I = 0x4

.field private static final G_OPTION:I = 0x2

.field private static final SUBST_CHAR:C = '$'

.field private static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "@prop/"

.field private static final SYSTEM_PROPERTY_PREFIX_LEN:I

.field private static final serialVersionUID:J = 0x4844cfa9a6a3f40L


# instance fields
.field private _defaultBeanAccess:Lorg/ini4j/spi/BeanAccess;

.field private final _propertyFirstUpper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "@prop/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/ini4j/BasicOptionMap;->SYSTEM_PROPERTY_PREFIX_LEN:I

    .line 33
    const-string v0, "@env/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/ini4j/BasicOptionMap;->ENVIRONMENT_PREFIX_LEN:I

    .line 34
    const-string v0, "(?<!\\\\)\\$\\{(([^\\[\\}]+)(\\[([0-9]+)\\])?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/ini4j/BasicOptionMap;->EXPRESSION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ini4j/BasicOptionMap;-><init>(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "propertyFirstUpper"    # Z

    .line 47
    invoke-direct {p0}, Lorg/ini4j/CommonMultiMap;-><init>()V

    .line 48
    iput-boolean p1, p0, Lorg/ini4j/BasicOptionMap;->_propertyFirstUpper:Z

    .line 49
    return-void
.end method

.method private requireArray(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 280
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    return-void

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 69
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-super {p0, p1, v0}, Lorg/ini4j/CommonMultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 74
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-super {p0, p1, v0, p3}, Lorg/ini4j/CommonMultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    return-void
.end method

.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 79
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ini4j/BasicOptionMap;->getDefaultBeanAccess()Lorg/ini4j/spi/BeanAccess;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ini4j/spi/BeanTool;->proxy(Ljava/lang/Class;Lorg/ini4j/spi/BeanAccess;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public as(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p2, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 84
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/ini4j/BasicOptionMap;->newBeanAccess(Ljava/lang/String;)Lorg/ini4j/spi/BeanAccess;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ini4j/spi/BeanTool;->proxy(Ljava/lang/Class;Lorg/ini4j/spi/BeanAccess;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 130
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 118
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 123
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public fetch(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->length(Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "len":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, p1, v1}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public fetch(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lorg/ini4j/BasicOptionMap;->resolve(Ljava/lang/StringBuilder;)V

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-object v0
.end method

.method public fetch(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public fetchAll(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 137
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lorg/ini4j/BasicOptionMap;->requireArray(Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->length(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->length(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v2

    invoke-virtual {p0, p1, v1}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public from(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;

    .line 151
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ini4j/BasicOptionMap;->getDefaultBeanAccess()Lorg/ini4j/spi/BeanAccess;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/ini4j/spi/BeanTool;->inject(Lorg/ini4j/spi/BeanAccess;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public from(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .line 156
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/ini4j/BasicOptionMap;->newBeanAccess(Ljava/lang/String;)Lorg/ini4j/spi/BeanAccess;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/ini4j/spi/BeanTool;->inject(Lorg/ini4j/spi/BeanAccess;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public get(Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 180
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 161
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 173
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 166
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getAll(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 55
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lorg/ini4j/BasicOptionMap;->requireArray(Ljava/lang/Class;)V

    .line 58
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->length(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->length(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v2

    invoke-virtual {p0, p1, v1}, Lorg/ini4j/BasicOptionMap;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method declared-synchronized getDefaultBeanAccess()Lorg/ini4j/spi/BeanAccess;
    .locals 1

    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap;->_defaultBeanAccess:Lorg/ini4j/spi/BeanAccess;

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/ini4j/BasicOptionMap;->newBeanAccess()Lorg/ini4j/spi/BeanAccess;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/BasicOptionMap;->_defaultBeanAccess:Lorg/ini4j/spi/BeanAccess;

    .line 229
    .end local p0    # "this":Lorg/ini4j/BasicOptionMap;
    :cond_0
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap;->_defaultBeanAccess:Lorg/ini4j/spi/BeanAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isPropertyFirstUpper()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/ini4j/BasicOptionMap;->_propertyFirstUpper:Z

    return v0
.end method

.method newBeanAccess()Lorg/ini4j/spi/BeanAccess;
    .locals 1

    .line 239
    new-instance v0, Lorg/ini4j/BasicOptionMap$Access;

    invoke-direct {v0, p0}, Lorg/ini4j/BasicOptionMap$Access;-><init>(Lorg/ini4j/BasicOptionMap;)V

    return-object v0
.end method

.method newBeanAccess(Ljava/lang/String;)Lorg/ini4j/spi/BeanAccess;
    .locals 1
    .param p1, "propertyNamePrefix"    # Ljava/lang/String;

    .line 244
    new-instance v0, Lorg/ini4j/BasicOptionMap$Access;

    invoke-direct {v0, p0, p1}, Lorg/ini4j/BasicOptionMap$Access;-><init>(Lorg/ini4j/BasicOptionMap;Ljava/lang/String;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 185
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-super {p0, p1, v0}, Lorg/ini4j/CommonMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 190
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-super {p0, p1, v0, p3}, Lorg/ini4j/CommonMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putAll(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 195
    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ini4j/BasicOptionMap;->requireArray(Ljava/lang/Class;)V

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicOptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    if-eqz p2, :cond_1

    .line 203
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 207
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/ini4j/BasicOptionMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method resolve(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 249
    sget-object v0, Lorg/ini4j/BasicOptionMap;->EXPRESSION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 251
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 257
    .local v2, "index":I
    :goto_1
    const-string v3, "@env/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    sget v3, Lorg/ini4j/BasicOptionMap;->ENVIRONMENT_PREFIX_LEN:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/ini4j/Config;->getEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_2

    .line 261
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string v3, "@prop/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    sget v3, Lorg/ini4j/BasicOptionMap;->SYSTEM_PROPERTY_PREFIX_LEN:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_2

    .line 267
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v1}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1, v2}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    .line 270
    .restart local v3    # "value":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_4

    .line 272
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p1, v4, v5, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 275
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 276
    :cond_5
    return-void
.end method

.method public to(Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;

    .line 214
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ini4j/BasicOptionMap;->getDefaultBeanAccess()Lorg/ini4j/spi/BeanAccess;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ini4j/spi/BeanTool;->inject(Ljava/lang/Object;Lorg/ini4j/spi/BeanAccess;)V

    .line 215
    return-void
.end method

.method public to(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .line 219
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/ini4j/BasicOptionMap;->newBeanAccess(Ljava/lang/String;)Lorg/ini4j/spi/BeanAccess;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/ini4j/spi/BeanTool;->inject(Ljava/lang/Object;Lorg/ini4j/spi/BeanAccess;)V

    .line 220
    return-void
.end method
