.class public Lorg/yaml/snakeyaml/Yaml;
.super Ljava/lang/Object;
.source "Yaml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/Yaml$EventIterable;,
        Lorg/yaml/snakeyaml/Yaml$NodeIterable;,
        Lorg/yaml/snakeyaml/Yaml$YamlIterable;,
        Lorg/yaml/snakeyaml/Yaml$SilentEmitter;
    }
.end annotation


# instance fields
.field protected constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

.field protected dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

.field protected loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

.field private name:Ljava/lang/String;

.field protected representer:Lorg/yaml/snakeyaml/representer/Representer;

.field protected final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 66
    new-instance v1, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v2, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v3, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v3}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    new-instance v4, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v4}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    new-instance v5, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v5}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 2
    .param p1, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 75
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>(Lorg/yaml/snakeyaml/DumperOptions;)V

    invoke-direct {p0, v0, v1, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 3
    .param p1, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 84
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/LoaderOptions;)V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v2, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;)V
    .locals 1
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 102
    new-instance v0, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V
    .locals 1
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 112
    invoke-static {p2}, Lorg/yaml/snakeyaml/Yaml;->initDumperOptions(Lorg/yaml/snakeyaml/representer/Representer;)Lorg/yaml/snakeyaml/DumperOptions;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 6
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 145
    new-instance v4, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v4}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    new-instance v5, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v5}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 6
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 159
    new-instance v5, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v5}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .locals 2
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;
    .param p5, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->isExplicitPropertyUtils()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->isExplicitPropertyUtils()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    .line 193
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 194
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {p4}, Lorg/yaml/snakeyaml/LoaderOptions;->isAllowDuplicateKeys()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setAllowDuplicateKeys(Z)V

    .line 195
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {p4}, Lorg/yaml/snakeyaml/LoaderOptions;->isWrappedToRootException()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setWrappedToRootException(Z)V

    .line 196
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getIndentWithIndicator()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v0

    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getIndicatorIndent()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    .line 197
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be smaller then indent."

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 200
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 201
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowReadOnlyProperties()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setAllowReadOnlyProperties(Z)V

    .line 203
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setTimeZone(Ljava/util/TimeZone;)V

    .line 204
    iput-object p2, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    .line 205
    iput-object p3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    .line 206
    iput-object p4, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    .line 207
    iput-object p5, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yaml:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .locals 6
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 173
    new-instance v4, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v4}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;)V
    .locals 1
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 93
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 6
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p2, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 132
    new-instance v1, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v4, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v4}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    new-instance v5, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v5}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/LoaderOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 134
    return-void
.end method

.method private dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 4
    .param p2, "output"    # Ljava/io/Writer;
    .param p3, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Writer;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")V"
        }
    .end annotation

    .line 270
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/serializer/Serializer;

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v1, p2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;-><init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 273
    .local v0, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 274
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/representer/Representer;->represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 276
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 277
    .end local v1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    nop

    .line 282
    return-void

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static initDumperOptions(Lorg/yaml/snakeyaml/representer/Representer;)Lorg/yaml/snakeyaml/DumperOptions;
    .locals 2
    .param p0, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 116
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    .line 117
    .local v0, "dumperOptions":Lorg/yaml/snakeyaml/DumperOptions;
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 118
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 119
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->isAllowReadOnlyProperties()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setAllowReadOnlyProperties(Z)V

    .line 120
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/DumperOptions;->setTimeZone(Ljava/util/TimeZone;)V

    .line 121
    return-object v0
.end method

.method private loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "sreader"    # Lorg/yaml/snakeyaml/reader/StreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/reader/StreamReader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 488
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/LoaderOptions;->isProcessComments()Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;Z)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 490
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 491
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getSingleData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;
    .param p3, "first"    # Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)V
    .locals 1
    .param p1, "td"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 717
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;

    .line 718
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/representer/Representer;->addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;

    .line 719
    return-void
.end method

.method public compose(Ljava/io/Reader;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 4
    .param p1, "yaml"    # Ljava/io/Reader;

    .line 573
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/LoaderOptions;->isProcessComments()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;Z)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 575
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method

.method public composeAll(Ljava/io/Reader;)Ljava/lang/Iterable;
    .locals 4
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/LoaderOptions;->isProcessComments()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;Z)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 589
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$2;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/Yaml$2;-><init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 610
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$NodeIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$NodeIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public dump(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/io/Writer;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 257
    return-void
.end method

.method public dumpAll(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 242
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 243
    .local v0, "buffer":Ljava/io/StringWriter;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dumpAll(Ljava/util/Iterator;Ljava/io/Writer;)V
    .locals 1
    .param p2, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .line 266
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 267
    return-void
.end method

.method public dumpAs(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 321
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/representer/Representer;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    .line 322
    .local v0, "oldStyle":Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    if-eqz p3, :cond_0

    .line 323
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v1, p3}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 325
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 328
    .local v2, "buffer":Ljava/io/StringWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 329
    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 330
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public dumpAsMap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAs(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "io"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 429
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "io"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .line 442
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 416
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "yaml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;
    .locals 4
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/LoaderOptions;->isProcessComments()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;Z)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 505
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 506
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$1;

    invoke-direct {v1, p0}, Lorg/yaml/snakeyaml/Yaml$1;-><init>(Lorg/yaml/snakeyaml/Yaml;)V

    .line 522
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$YamlIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$YamlIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public loadAll(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 548
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 484
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "io"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 456
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "yaml"    # Ljava/lang/String;
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

    .line 470
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 672
    new-instance v0, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v1, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/LoaderOptions;->isProcessComments()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;Z)V

    .line 674
    .local v0, "parser":Lorg/yaml/snakeyaml/parser/Parser;
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$3;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/Yaml$3;-><init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/parser/Parser;)V

    .line 695
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$EventIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$EventIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/representer/Representer;->represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/util/List;
    .locals 5
    .param p1, "data"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;-><init>(Lorg/yaml/snakeyaml/Yaml$1;)V

    .line 382
    .local v0, "emitter":Lorg/yaml/snakeyaml/Yaml$SilentEmitter;
    new-instance v2, Lorg/yaml/snakeyaml/serializer/Serializer;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v4, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v2, v0, v3, v4, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    move-object v1, v2

    .line 384
    .local v1, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_0
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 385
    invoke-virtual {v1, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 386
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    nop

    .line 390
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;->getEvents()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v3, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;Ljava/io/Writer;)V
    .locals 5
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "output"    # Ljava/io/Writer;

    .line 362
    new-instance v0, Lorg/yaml/snakeyaml/serializer/Serializer;

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v1, p2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;-><init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 365
    .local v0, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 366
    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 367
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    nop

    .line 371
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .locals 1
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 712
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 713
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 714
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 661
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    return-object v0
.end method
