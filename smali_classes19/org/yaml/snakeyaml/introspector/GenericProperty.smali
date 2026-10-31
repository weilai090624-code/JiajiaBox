.class public abstract Lorg/yaml/snakeyaml/introspector/GenericProperty;
.super Lorg/yaml/snakeyaml/introspector/Property;
.source "GenericProperty.java"


# instance fields
.field private actualClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private actualClassesChecked:Z

.field private genType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "aType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 28
    .local p2, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    iput-object p3, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    .line 30
    if-nez p3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClassesChecked:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClassesChecked:Z

    if-nez v0, :cond_b1

    .line 38
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_71

    .line 39
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 40
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 41
    .local v3, "actualTypeArguments":[Ljava/lang/reflect/Type;
    array-length v4, v3

    if-lez v4, :cond_70

    .line 42
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Class;

    iput-object v4, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    .line 43
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    array-length v5, v3

    if-ge v4, v5, :cond_70

    .line 44
    aget-object v5, v3, v4

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_2f

    .line 45
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    aget-object v6, v3, v4

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v5, v4

    goto :goto_67

    .line 46
    :cond_2f
    aget-object v5, v3, v4

    instance-of v5, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_44

    .line 47
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    aget-object v6, v3, v4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v5, v4

    goto :goto_67

    .line 49
    :cond_44
    aget-object v5, v3, v4

    instance-of v5, v5, Ljava/lang/reflect/GenericArrayType;

    const/4 v6, 0x0

    if-eqz v5, :cond_6d

    .line 50
    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v5}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 52
    .local v5, "componentType":Ljava/lang/reflect/Type;
    instance-of v7, v5, Ljava/lang/Class;

    if-eqz v7, :cond_6a

    .line 53
    iget-object v6, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    move-object v7, v5

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v4

    .line 59
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    nop

    .line 43
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 56
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    :cond_6a
    iput-object v6, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    .line 57
    goto :goto_70

    .line 60
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    :cond_6d
    iput-object v6, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    .line 61
    nop

    .line 65
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v4    # "i":I
    :cond_70
    :goto_70
    goto :goto_af

    :cond_71
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8d

    .line 66
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 67
    .local v0, "componentType":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_ae

    .line 68
    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v3, v4, v1

    iput-object v4, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    goto :goto_ae

    .line 70
    .end local v0    # "componentType":Ljava/lang/reflect/Type;
    :cond_8d
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_ae

    .line 72
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->genType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 73
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 74
    new-array v3, v2, [Ljava/lang/Class;

    iput-object v3, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    .line 75
    iget-object v3, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/GenericProperty;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_af

    .line 70
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_ae
    :goto_ae
    nop

    .line 78
    :cond_af
    :goto_af
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClassesChecked:Z

    .line 80
    :cond_b1
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/GenericProperty;->actualClasses:[Ljava/lang/Class;

    return-object v0
.end method
