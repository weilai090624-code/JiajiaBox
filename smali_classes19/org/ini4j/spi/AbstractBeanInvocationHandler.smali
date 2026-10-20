.class public abstract Lorg/ini4j/spi/AbstractBeanInvocationHandler;
.super Ljava/lang/Object;
.source "AbstractBeanInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    }
.end annotation


# static fields
.field private static final ADD_PREFIX:Ljava/lang/String; = "add"

.field private static final HAS_PREFIX:Ljava/lang/String; = "has"

.field private static final PROPERTY_CHANGE_LISTENER:Ljava/lang/String; = "PropertyChangeListener"

.field private static final READ_BOOLEAN_PREFIX:Ljava/lang/String; = "is"

.field private static final READ_PREFIX:Ljava/lang/String; = "get"

.field private static final REMOVE_PREFIX:Ljava/lang/String; = "remove"

.field private static final VETOABLE_CHANGE_LISTENER:Ljava/lang/String; = "VetoableChangeListener"

.field private static final WRITE_PREFIX:Ljava/lang/String; = "set"


# instance fields
.field private _pcSupport:Ljava/beans/PropertyChangeSupport;

.field private _proxy:Ljava/lang/Object;

.field private _vcSupport:Ljava/beans/VetoableChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private declared-synchronized updateProxy(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_proxy:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 295
    iput-object p1, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_proxy:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 292
    .end local p1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    iget-object v1, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_proxy:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    .line 220
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "listener":Ljava/beans/PropertyChangeListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized addVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/VetoableChangeListener;

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/beans/VetoableChangeSupport;

    iget-object v1, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_proxy:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/beans/VetoableChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    .line 230
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/VetoableChangeSupport;->addVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 224
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "listener":Ljava/beans/VetoableChangeListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "oldValue":Ljava/lang/Object;
    .end local p3    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/VetoableChangeSupport;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 242
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "oldValue":Ljava/lang/Object;
    .end local p3    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->getPropertySpi(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->zero(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 161
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_2

    const-class v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 165
    .local v1, "str":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 168
    aget-object v3, v1, v2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "str":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 171
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 179
    :cond_3
    :goto_1
    goto :goto_3

    .line 176
    :catch_0
    move-exception v1

    goto :goto_2

    .line 155
    .end local v0    # "o":Ljava/lang/Object;
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 176
    .restart local p1    # "property":Ljava/lang/String;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .line 178
    .restart local v0    # "o":Ljava/lang/Object;
    .local v1, "x":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {p0, p2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->zero(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 181
    .end local v1    # "x":Ljava/lang/Exception;
    :goto_3
    monitor-exit p0

    return-object v0

    .line 155
    .end local v0    # "o":Ljava/lang/Object;
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected abstract getPropertySpi(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected declared-synchronized getProxy()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_proxy:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 210
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized hasProperty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->hasPropertySpi(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .local v0, "ret":Z
    goto :goto_0

    .line 254
    .end local v0    # "ret":Z
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    .end local p1    # "property":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 257
    .restart local p1    # "property":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 259
    .local v0, "x":Ljava/lang/Exception;
    .local v1, "ret":Z
    const/4 v1, 0x0

    move v0, v1

    .line 262
    .end local v1    # "ret":Z
    .local v0, "ret":Z
    :goto_0
    monitor-exit p0

    return v0
.end method

.method protected abstract hasPropertySpi(Ljava/lang/String;)Z
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->parse(Ljava/lang/String;)Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    move-result-object v1

    .line 96
    .local v1, "prefix":Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->getTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "tail":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->updateProxy(Ljava/lang/Object;)V

    .line 101
    sget-object v3, Lorg/ini4j/spi/AbstractBeanInvocationHandler$1;->$SwitchMap$org$ini4j$spi$AbstractBeanInvocationHandler$Prefix:[I

    invoke-virtual {v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 133
    :pswitch_0
    aget-object v3, p3, v5

    check-cast v3, Ljava/lang/String;

    aget-object v4, p3, v4

    check-cast v4, Ljava/beans/VetoableChangeListener;

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->removeVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V

    .line 134
    goto :goto_0

    .line 129
    :pswitch_1
    aget-object v3, p3, v5

    check-cast v3, Ljava/lang/String;

    aget-object v4, p3, v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 130
    goto :goto_0

    .line 125
    :pswitch_2
    aget-object v3, p3, v5

    check-cast v3, Ljava/lang/String;

    aget-object v4, p3, v4

    check-cast v4, Ljava/beans/VetoableChangeListener;

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->addVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V

    .line 126
    goto :goto_0

    .line 121
    :pswitch_3
    aget-object v3, p3, v5

    check-cast v3, Ljava/lang/String;

    aget-object v4, p3, v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 122
    goto :goto_0

    .line 117
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->getTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    goto :goto_0

    .line 113
    :pswitch_5
    aget-object v3, p3, v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 114
    goto :goto_0

    .line 109
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->getTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    goto :goto_0

    .line 105
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->getTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    nop

    .line 141
    .end local v2    # "tail":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 267
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/ini4j/spi/BeanTool;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "listener":Ljava/beans/PropertyChangeListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized removeVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/VetoableChangeListener;

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/VetoableChangeSupport;->removeVetoableChangeListener(Ljava/lang/String;Ljava/beans/VetoableChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    monitor-exit p0

    return-void

    .line 279
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "listener":Ljava/beans/VetoableChangeListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_pcSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lorg/ini4j/spi/AbstractBeanInvocationHandler;
    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, "pc":Z
    :goto_0
    iget-object v3, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->_vcSupport:Ljava/beans/VetoableChangeSupport;

    invoke-virtual {v3, p1}, Ljava/beans/VetoableChangeSupport;->hasListeners(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 188
    .local v1, "vc":Z
    :goto_1
    const/4 v2, 0x0

    .line 189
    .local v2, "oldVal":Ljava/lang/Object;
    if-eqz p2, :cond_2

    const-class v3, Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p2

    .line 191
    .local v3, "newVal":Ljava/lang/Object;
    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 193
    :cond_3
    invoke-virtual {p0, p1, p3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 196
    :cond_4
    if-eqz v1, :cond_5

    .line 198
    invoke-virtual {p0, p1, v2, p2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->fireVetoableChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    :cond_5
    invoke-virtual {p0, p1, v3, p3}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->setPropertySpi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 202
    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p0, p1, v2, p2}, Lorg/ini4j/spi/AbstractBeanInvocationHandler;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_6
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "pc":Z
    .end local v1    # "vc":Z
    .end local v2    # "oldVal":Ljava/lang/Object;
    .end local v3    # "newVal":Ljava/lang/Object;
    .end local p1    # "property":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract setPropertySpi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method protected zero(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 288
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ini4j/spi/BeanTool;->zero(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
