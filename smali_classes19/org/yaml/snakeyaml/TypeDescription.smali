.class public Lorg/yaml/snakeyaml/TypeDescription;
.super Ljava/lang/Object;
.source "TypeDescription.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field private transient delegatesChecked:Z

.field private transient dumpProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation
.end field

.field protected excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private impl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected includes:[Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/PropertySubstitute;",
            ">;"
        }
    .end annotation
.end field

.field private transient propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field private tag:Lorg/yaml/snakeyaml/nodes/Tag;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/TypeDescription;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {p0, p1, v0, v0}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 89
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p2, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p2}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 1
    .param p2, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")V"
        }
    .end annotation

    .line 70
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Class;)V
    .locals 1
    .param p2, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p3, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    .line 75
    iput-object p2, p0, Lorg/yaml/snakeyaml/TypeDescription;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 76
    iput-object p3, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    .line 77
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 78
    return-void
.end method

.method private checkDelegates()V
    .locals 4

    .line 241
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 242
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/introspector/PropertySubstitute;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    .line 244
    .local v2, "p":Lorg/yaml/snakeyaml/introspector/PropertySubstitute;
    :try_start_0
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/TypeDescription;->discoverProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setDelegate(Lorg/yaml/snakeyaml/introspector/Property;)V
    :try_end_0
    .catch Lorg/yaml/snakeyaml/error/YAMLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_1

    .line 245
    :catch_0
    move-exception v3

    .line 247
    .end local v2    # "p":Lorg/yaml/snakeyaml/introspector/PropertySubstitute;
    :goto_1
    goto :goto_0

    .line 248
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->delegatesChecked:Z

    .line 249
    return-void
.end method

.method private discoverProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {v0, v1, p1, v2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public varargs addPropertyParameters(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 226
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/yaml/snakeyaml/TypeDescription;->substituteProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    .line 230
    .local v0, "pr":Lorg/yaml/snakeyaml/introspector/PropertySubstitute;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setActualTypeArguments([Ljava/lang/Class;)V

    .line 233
    .end local v0    # "pr":Lorg/yaml/snakeyaml/introspector/PropertySubstitute;
    :goto_0
    return-void
.end method

.method public finalizeConstruction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 416
    return-object p1
.end method

.method public getListPropertyType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    .line 157
    .local v0, "typeArguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 161
    .end local v0    # "typeArguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapKeyType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "typeArguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 192
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 195
    .end local v0    # "typeArguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapValueType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, "typeArguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 210
    aget-object v1, v0, v2

    return-object v1

    .line 213
    .end local v0    # "typeArguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperties()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-eqz v0, :cond_e

    .line 321
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 322
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    .line 323
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 324
    .local v3, "propertyName":Ljava/lang/String;
    iget-object v4, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    iget-object v4, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-virtual {p0, v3}, Lorg/yaml/snakeyaml/TypeDescription;->getProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    .line 331
    :cond_3
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    iget-object v2, p0, Lorg/yaml/snakeyaml/TypeDescription;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    .line 335
    .local v0, "readableProps":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 336
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v0

    .line 339
    :cond_5
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    .line 340
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/introspector/Property;

    .line 341
    .local v2, "property":Lorg/yaml/snakeyaml/introspector/Property;
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 342
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v2    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_6
    goto :goto_2

    .line 345
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v1

    .line 348
    :cond_8
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->delegatesChecked:Z

    if-nez v1, :cond_9

    .line 349
    invoke-direct {p0}, Lorg/yaml/snakeyaml/TypeDescription;->checkDelegates()V

    .line 352
    :cond_9
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    .line 354
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/introspector/Property;

    .line 355
    .restart local v2    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 356
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v2    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_a
    goto :goto_3

    .line 360
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/introspector/Property;

    .line 361
    .restart local v2    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 362
    iget-object v3, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v2    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_c
    goto :goto_4

    .line 366
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_d
    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->dumpProperties:Ljava/util/Set;

    return-object v1

    .line 368
    .end local v0    # "readableProps":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 262
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->delegatesChecked:Z

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lorg/yaml/snakeyaml/TypeDescription;->checkDelegates()V

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/introspector/Property;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/TypeDescription;->discoverProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTag()Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public newInstance(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 393
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 396
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 397
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 398
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/yaml/snakeyaml/TypeDescription;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 400
    iput-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->impl:Ljava/lang/Class;

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public putListPropertyType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/TypeDescription;->addPropertyParameters(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 144
    return-void
.end method

.method public putMapPropertyType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    .local p2, "key":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p3, "value":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/TypeDescription;->addPropertyParameters(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 178
    return-void
.end method

.method public varargs setExcludes([Ljava/lang/String;)V
    .locals 5
    .param p1, "propNames"    # [Ljava/lang/String;

    .line 305
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    .line 307
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 308
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    goto :goto_1

    .line 311
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->excludes:Ljava/util/Set;

    .line 313
    :goto_1
    return-void
.end method

.method public varargs setIncludes([Ljava/lang/String;)V
    .locals 1
    .param p1, "propNames"    # [Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->includes:[Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "targetBean"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .locals 0
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 296
    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 297
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/TypeDescription;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 122
    return-void
.end method

.method public setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 0
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/yaml/snakeyaml/TypeDescription;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 111
    return-void
.end method

.method public setupPropertyType(Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueNode"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public varargs substituteProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;
    .param p3, "getter"    # Ljava/lang/String;
    .param p4, "setter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 284
    .local p2, "pType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "argParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v6, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lorg/yaml/snakeyaml/TypeDescription;->substituteProperty(Lorg/yaml/snakeyaml/introspector/PropertySubstitute;)V

    .line 285
    return-void
.end method

.method public substituteProperty(Lorg/yaml/snakeyaml/introspector/PropertySubstitute;)V
    .locals 2
    .param p1, "substitute"    # Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    .line 288
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 289
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setTargetType(Ljava/lang/Class;)V

    .line 292
    iget-object v0, p0, Lorg/yaml/snakeyaml/TypeDescription;->properties:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeDescription for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/TypeDescription;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
