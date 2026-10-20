.class Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;
.super Lorg/ini4j/spi/AbstractBeanInvocationHandler;
.source "BeanTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/spi/BeanTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeanInvocationHandler"
.end annotation


# instance fields
.field private final _backend:Lorg/ini4j/spi/BeanAccess;


# direct methods
.method constructor <init>(Lorg/ini4j/spi/BeanAccess;)V
    .locals 0
    .param p1, "backend"    # Lorg/ini4j/spi/BeanAccess;

    .line 318
    invoke-direct {p0}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;-><init>()V

    .line 319
    iput-object p1, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    .line 320
    return-void
.end method


# virtual methods
.method protected getPropertySpi(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 324
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 326
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-interface {v1, p1}, Lorg/ini4j/spi/BeanAccess;->propLength(Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 332
    new-array v2, v1, [Ljava/lang/String;

    .line 334
    .local v2, "all":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 336
    iget-object v4, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-interface {v4, p1, v3}, Lorg/ini4j/spi/BeanAccess;->propGet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "i":I
    :cond_0
    move-object v0, v2

    .line 341
    .end local v1    # "length":I
    .end local v2    # "all":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 344
    :cond_2
    iget-object v1, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-interface {v1, p1}, Lorg/ini4j/spi/BeanAccess;->propGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_1
    return-object v0
.end method

.method protected hasPropertySpi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-interface {v0, p1}, Lorg/ini4j/spi/BeanAccess;->propLength(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setPropertySpi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 352
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-interface {v0, p1}, Lorg/ini4j/spi/BeanAccess;->propDel(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v1, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/ini4j/spi/BeanAccess;->propAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/ini4j/spi/BeanTool$BeanInvocationHandler;->_backend:Lorg/ini4j/spi/BeanAccess;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ini4j/spi/BeanAccess;->propSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    :goto_1
    return-void
.end method
