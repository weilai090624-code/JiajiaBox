.class public Lorg/yaml/snakeyaml/introspector/MethodProperty;
.super Lorg/yaml/snakeyaml/introspector/GenericProperty;
.source "MethodProperty.java"


# instance fields
.field private final property:Ljava/beans/PropertyDescriptor;

.field private final readable:Z

.field private final writable:Z


# direct methods
.method public constructor <init>(Ljava/beans/PropertyDescriptor;)V
    .locals 3
    .param p1, "property"    # Ljava/beans/PropertyDescriptor;

    .line 64
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->discoverGenericType(Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/introspector/GenericProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 66
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    .line 67
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->readable:Z

    .line 68
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->writable:Z

    .line 69
    return-void
.end method

.method private static discoverGenericType(Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "property"    # Ljava/beans/PropertyDescriptor;

    .line 43
    invoke-virtual {p0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, "readMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, "writeMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 51
    .local v2, "paramTypes":[Ljava/lang/reflect/Type;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 52
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3

    .line 60
    .end local v2    # "paramTypes":[Ljava/lang/reflect/Type;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find getter for property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 119
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v0, 0x0

    .line 120
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 123
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 126
    :cond_1
    return-object v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayUtils;->toUnmodifiableCompositeList([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    goto :goto_0

    .line 102
    .end local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/util/ArrayUtils;->toUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    goto :goto_0

    .line 105
    .end local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/util/ArrayUtils;->toUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 107
    .restart local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    :goto_0
    return-object v0
.end method

.method public isReadable()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->readable:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->writable:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->writable:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/MethodProperty;->property:Ljava/beans/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void

    .line 74
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No writable property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/MethodProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
