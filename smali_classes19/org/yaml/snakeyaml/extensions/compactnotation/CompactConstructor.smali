.class public Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;
.super Lorg/yaml/snakeyaml/constructor/Constructor;
.source "CompactConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;
    }
.end annotation


# static fields
.field private static final FIRST_PATTERN:Ljava/util/regex/Pattern;

.field private static final GUESS_COMPACT:Ljava/util/regex/Pattern;

.field private static final PROPERTY_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private compactConstruct:Lorg/yaml/snakeyaml/constructor/Construct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "\\p{Alpha}.*\\s*\\((?:,?\\s*(?:(?:\\w*)|(?:\\p{Alpha}\\w*\\s*=.+))\\s*)+\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->GUESS_COMPACT:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "(\\p{Alpha}.*)(\\s*)\\((.*?)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->FIRST_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "\\s*(\\p{Alpha}\\w*)\\s*=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->PROPERTY_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 39
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 39
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCompactConstruct()Lorg/yaml/snakeyaml/constructor/Construct;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->compactConstruct:Lorg/yaml/snakeyaml/constructor/Construct;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->createCompactConstruct()Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->compactConstruct:Lorg/yaml/snakeyaml/constructor/Construct;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->compactConstruct:Lorg/yaml/snakeyaml/constructor/Construct;

    return-object v0
.end method


# virtual methods
.method protected applySequence(Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 203
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getSequencePropertyName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    .line 205
    .local v0, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    nop

    .line 209
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructCompactFormat(Lorg/yaml/snakeyaml/nodes/ScalarNode;Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .param p2, "data"    # Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;

    .line 49
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->createInstance(Lorg/yaml/snakeyaml/nodes/ScalarNode;Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "obj":Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 51
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->setProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object v0

    .line 53
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createCompactConstruct()Lorg/yaml/snakeyaml/constructor/Construct;
    .locals 1

    .line 130
    new-instance v0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;-><init>(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;)V

    return-object v0
.end method

.method protected createInstance(Lorg/yaml/snakeyaml/nodes/ScalarNode;Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .param p2, "data"    # Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 61
    .local v1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 63
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 66
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 67
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getCompactData(Ljava/lang/String;)Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;
    .locals 13
    .param p1, "scalar"    # Ljava/lang/String;

    .line 88
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 91
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 92
    return-object v1

    .line 94
    :cond_1
    sget-object v0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->FIRST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "content":Ljava/lang/String;
    new-instance v5, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;

    invoke-direct {v5, v3}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "data":Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 100
    return-object v5

    .line 101
    :cond_2
    const-string v6, "\\s*,\\s*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "names":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_5

    .line 103
    aget-object v8, v6, v7

    .line 104
    .local v8, "section":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_3

    .line 105
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;->getArguments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_3
    sget-object v9, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->PROPERTY_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 108
    .local v9, "sm":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 109
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;->getProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    nop

    .line 102
    .end local v8    # "section":Ljava/lang/String;
    .end local v9    # "sm":Ljava/util/regex/Matcher;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 113
    .restart local v8    # "section":Ljava/lang/String;
    .restart local v9    # "sm":Ljava/util/regex/Matcher;
    :cond_4
    return-object v1

    .line 117
    .end local v7    # "i":I
    .end local v8    # "section":Ljava/lang/String;
    .end local v9    # "sm":Ljava/util/regex/Matcher;
    :cond_5
    return-object v5

    .line 119
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "data":Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;
    .end local v6    # "names":[Ljava/lang/String;
    :cond_6
    return-object v1
.end method

.method protected getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;
    .locals 7
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 135
    instance-of v0, p1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    if-eqz v0, :cond_0

    .line 136
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 137
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 139
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 140
    .local v2, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v3

    .line 141
    .local v3, "key":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v4, v3, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v4, :cond_1

    .line 142
    move-object v4, v3

    check-cast v4, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 143
    .local v4, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    sget-object v5, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->GUESS_COMPACT:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-direct {p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getCompactConstruct()Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v5

    return-object v5

    .line 148
    .end local v0    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v2    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v3    # "key":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v4    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :cond_0
    instance-of v0, p1, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v0, :cond_1

    .line 149
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 150
    .local v0, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    sget-object v1, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->GUESS_COMPACT:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    invoke-direct {p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getCompactConstruct()Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v1

    return-object v1

    .line 148
    .end local v0    # "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :cond_1
    nop

    .line 154
    :cond_2
    invoke-super {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v0

    return-object v0
.end method

.method protected getSequencePropertyName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 218
    .local p1, "bean":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 219
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/introspector/Property;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/introspector/Property;

    .line 221
    .local v2, "property":Lorg/yaml/snakeyaml/introspector/Property;
    const-class v3, Ljava/util/List;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 224
    .end local v2    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_0
    goto :goto_0

    .line 225
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/introspector/Property;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 233
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 228
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Many list properties found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Please override getSequencePropertyName() to specify which property to use."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_3
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No list property found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setProperties(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v3

    .line 79
    .local v3, "property":Lorg/yaml/snakeyaml/introspector/Property;
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    nop

    .line 84
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    goto :goto_0

    .line 80
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot set property=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with value=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data for Compact Object Notation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
