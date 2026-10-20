.class public Lorg/yaml/snakeyaml/introspector/PropertySubstitute;
.super Lorg/yaml/snakeyaml/introspector/Property;
.source "PropertySubstitute.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private delegate:Lorg/yaml/snakeyaml/introspector/Property;

.field private field:Ljava/lang/reflect/Field;

.field private filler:Z

.field protected parameters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient read:Ljava/lang/reflect/Method;

.field private final readMethod:Ljava/lang/String;

.field protected targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient write:Ljava/lang/reflect/Method;

.field private final writeMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "readMethod"    # Ljava/lang/String;
    .param p4, "writeMethod"    # Ljava/lang/String;
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

    .line 51
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    iput-object p3, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->readMethod:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->setActualTypeArguments([Ljava/lang/Class;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 56
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 59
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 60
    return-void
.end method

.method private varargs discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 196
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p1

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 197
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 198
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 200
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v6

    array-length v8, p3

    if-eq v7, v8, :cond_0

    .line 201
    goto :goto_3

    .line 203
    :cond_0
    const/4 v7, 0x1

    .line 204
    .local v7, "found":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_2

    .line 205
    aget-object v9, v6, v8

    aget-object v10, p3, v8

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 206
    const/4 v7, 0x0

    .line 204
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 209
    .end local v8    # "i":I
    :cond_2
    if-eqz v7, :cond_3

    .line 210
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 211
    return-object v5

    .line 197
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "found":Z
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 216
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    sget-object v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    sget-object v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Ljava/util/logging/Logger;

    array-length v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const-string v1, "Failed to find [%s(%d args)] for %s.%s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 220
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 117
    const-string v0, "\' on object "

    :try_start_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :cond_1
    nop

    .line 127
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v1, :cond_2

    .line 128
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 130
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No getter or delegate for property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find getter for property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActualTypeArguments()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 148
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    goto :goto_0

    .line 150
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    goto :goto_0

    .line 153
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/Property;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 155
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    :goto_0
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

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 142
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getAnnotations()Ljava/util/List;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 225
    invoke-super {p0}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "n":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 227
    return-object v0

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 234
    invoke-super {p0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 235
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 236
    return-object v0

    .line 238
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isReadable()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 81
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 83
    :cond_0
    if-eqz p2, :cond_a

    .line 84
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 85
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    .line 86
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, "val":Ljava/lang/Object;
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v4    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 89
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    goto/16 :goto_4

    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 90
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 91
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 92
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v5, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v2

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_1

    .line 91
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 100
    iget-object v4, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {v4, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 102
    .end local v0    # "len":I
    .end local v3    # "i":I
    :cond_5
    goto :goto_4

    .line 94
    :cond_6
    :goto_3
    goto :goto_4

    .line 104
    :cond_7
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8

    .line 105
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 106
    :cond_8
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {v0, p1, p2}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 109
    :cond_9
    sget-object v0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No setter/delegate for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 112
    :cond_a
    :goto_4
    return-void
.end method

.method public varargs setActualTypeArguments([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 71
    .local p1, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 72
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    .line 76
    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/yaml/snakeyaml/introspector/Property;)V
    .locals 3
    .param p1, "delegate"    # Lorg/yaml/snakeyaml/introspector/Property;

    .line 252
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->delegate:Lorg/yaml/snakeyaml/introspector/Property;

    .line 253
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 255
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    .line 257
    :cond_0
    return-void
.end method

.method public setTargetType(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 159
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    if-eq v0, p1, :cond_5

    .line 160
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->targetType:Ljava/lang/Class;

    .line 162
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 165
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 166
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 167
    .local v7, "modifiers":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    iput-object v6, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    goto :goto_2

    .line 164
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "modifiers":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 175
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->field:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    sget-object v1, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object v5, v6, v2

    const-string v4, "Failed to find field for %s.%s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 181
    :cond_3
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->readMethod:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->readMethod:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v4}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->read:Ljava/lang/reflect/Method;

    .line 184
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 185
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 186
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->getType()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v3

    invoke-direct {p0, p1, v1, v5}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    .line 187
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 188
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->filler:Z

    .line 189
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->writeMethod:Ljava/lang/String;

    iget-object v2, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->parameters:[Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v2}, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->discoverMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertySubstitute;->write:Ljava/lang/reflect/Method;

    .line 193
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    return-void
.end method
