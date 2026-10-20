.class public Lorg/yaml/snakeyaml/introspector/PropertyUtils;
.super Ljava/lang/Object;
.source "PropertyUtils.java"


# static fields
.field private static final TRANSIENT:Ljava/lang/String; = "transient"


# instance fields
.field private allowReadOnlyProperties:Z

.field private beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field private platformFeatureDetector:Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;

.field private final propertiesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readableProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private skipMissingProperties:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;-><init>()V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;-><init>(Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;)V
    .locals 1
    .param p1, "platformFeatureDetector"    # Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    .line 39
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    .line 41
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    .line 50
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->platformFeatureDetector:Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;

    .line 56
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;->isRunningOnAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->FIELD:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 59
    :cond_0
    return-void
.end method

.method private isTransient(Ljava/beans/FeatureDescriptor;)Z
    .locals 2
    .param p1, "fd"    # Ljava/beans/FeatureDescriptor;

    .line 120
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "transient"

    invoke-virtual {p1, v1}, Ljava/beans/FeatureDescriptor;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createPropertySet(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;
    .locals 5
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 137
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 138
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 139
    .local v1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/introspector/Property;

    .line 140
    .local v3, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_1
    goto :goto_0

    .line 144
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 124
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;
    .locals 2
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 128
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->createPropertySet(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    .line 132
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v0
.end method

.method protected getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;
    .locals 10
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 62
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/Property;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "inaccessableFieldsExist":Z
    sget-object v2, Lorg/yaml/snakeyaml/introspector/PropertyUtils$1;->$SwitchMap$org$yaml$snakeyaml$introspector$BeanAccess:[I

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/introspector/BeanAccess;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 70
    :pswitch_0
    move-object v2, p1

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_3

    .line 71
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 72
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 73
    .local v7, "modifiers":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 75
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/yaml/snakeyaml/introspector/FieldProperty;

    invoke-direct {v9, v6}, Lorg/yaml/snakeyaml/introspector/FieldProperty;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "modifiers":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 79
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    goto/16 :goto_7

    .line 83
    :goto_2
    :try_start_1
    invoke-interface {v2}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    .local v2, "arr$":[Ljava/beans/PropertyDescriptor;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 85
    .local v5, "property":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    .line 86
    .local v6, "readMethod":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getClass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    invoke-direct {p0, v5}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->isTransient(Ljava/beans/FeatureDescriptor;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 88
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/yaml/snakeyaml/introspector/MethodProperty;

    invoke-direct {v8, v5}, Lorg/yaml/snakeyaml/introspector/MethodProperty;-><init>(Ljava/beans/PropertyDescriptor;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/beans/IntrospectionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .end local v5    # "property":Ljava/beans/PropertyDescriptor;
    .end local v6    # "readMethod":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 93
    .end local v2    # "arr$":[Ljava/beans/PropertyDescriptor;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_6
    nop

    .line 96
    move-object v2, p1

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v2, :cond_a

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 98
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 99
    .restart local v7    # "modifiers":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 100
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 101
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/yaml/snakeyaml/introspector/FieldProperty;

    invoke-direct {v9, v6}, Lorg/yaml/snakeyaml/introspector/FieldProperty;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 103
    :cond_7
    const/4 v1, 0x1

    .line 97
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "modifiers":I
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 96
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_4

    .line 110
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v1, :cond_b

    goto :goto_8

    .line 111
    :cond_b
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No JavaBean properties found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_c
    :goto_8
    iget-object v2, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/beans/IntrospectionException;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v3, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 148
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 152
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p3}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;

    move-result-object v0

    .line 153
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/Property;

    .line 154
    .local v1, "property":Lorg/yaml/snakeyaml/introspector/Property;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    if-eqz v2, :cond_0

    .line 155
    new-instance v2, Lorg/yaml/snakeyaml/introspector/MissingProperty;

    invoke-direct {v2, p2}, Lorg/yaml/snakeyaml/introspector/MissingProperty;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 157
    :cond_0
    if-eqz v1, :cond_1

    .line 161
    return-object v1

    .line 158
    :cond_1
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' on class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isAllowReadOnlyProperties()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    return v0
.end method

.method public isSkipMissingProperties()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    return v0
.end method

.method public setAllowReadOnlyProperties(Z)V
    .locals 1
    .param p1, "allowReadOnlyProperties"    # Z

    .line 178
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    .line 180
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    :cond_0
    return-void
.end method

.method public setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .locals 2
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 165
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->platformFeatureDetector:Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;->isRunningOnAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->FIELD:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JVM is Android - only BeanAccess.FIELD is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-eq v0, p1, :cond_2

    .line 171
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 172
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    :cond_2
    return-void
.end method

.method public setSkipMissingProperties(Z)V
    .locals 1
    .param p1, "skipMissingProperties"    # Z

    .line 196
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    if-eq v0, p1, :cond_0

    .line 197
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    .line 198
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 200
    :cond_0
    return-void
.end method
