.class public final Landroidx/camera/core/impl/MutableOptionsBundle;
.super Landroidx/camera/core/impl/OptionsBundle;
.source "MutableOptionsBundle.java"

# interfaces
.implements Landroidx/camera/core/impl/MutableConfig;


# static fields
.field private static final DEFAULT_PRIORITY:Landroidx/camera/core/impl/Config$OptionPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->OPTIONAL:Landroidx/camera/core/impl/Config$OptionPriority;

    sput-object v0, Landroidx/camera/core/impl/MutableOptionsBundle;->DEFAULT_PRIORITY:Landroidx/camera/core/impl/Config$OptionPriority;

    return-void
.end method

.method private constructor <init>(Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "persistentOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 38
    .local p1, "persistentOptions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Landroidx/camera/core/impl/Config$Option<*>;Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/OptionsBundle;-><init>(Ljava/util/TreeMap;)V

    .line 39
    return-void
.end method

.method public static create()Landroidx/camera/core/impl/MutableOptionsBundle;
    .locals 3

    .line 48
    new-instance v0, Landroidx/camera/core/impl/MutableOptionsBundle;

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Landroidx/camera/core/impl/MutableOptionsBundle;->ID_COMPARE:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/MutableOptionsBundle;-><init>(Ljava/util/TreeMap;)V

    return-object v0
.end method

.method public static from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;
    .locals 8
    .param p0, "otherConfig"    # Landroidx/camera/core/impl/Config;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherConfig"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Landroidx/camera/core/impl/MutableOptionsBundle;->ID_COMPARE:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 61
    .local v0, "persistentOptions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Landroidx/camera/core/impl/Config$Option<*>;Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;>;"
    invoke-interface {p0}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    .line 62
    .local v2, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    invoke-interface {p0, v2}, Landroidx/camera/core/impl/Config;->getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object v3

    .line 63
    .local v3, "priorities":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/core/impl/Config$OptionPriority;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 64
    .local v4, "valuesMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 65
    .local v6, "priority":Landroidx/camera/core/impl/Config$OptionPriority;
    invoke-interface {p0, v2, v6}, Landroidx/camera/core/impl/Config;->retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v6    # "priority":Landroidx/camera/core/impl/Config$OptionPriority;
    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v2    # "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    .end local v3    # "priorities":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/core/impl/Config$OptionPriority;>;"
    .end local v4    # "valuesMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    goto :goto_0

    .line 70
    :cond_1
    new-instance v1, Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-direct {v1, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;-><init>(Ljava/util/TreeMap;)V

    return-object v1
.end method


# virtual methods
.method public insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V
    .locals 9
    .param p2, "priority"    # Landroidx/camera/core/impl/Config$OptionPriority;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "opt",
            "priority",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TValueT;>;",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            "TValueT;)V"
        }
    .end annotation

    .line 90
    .local p1, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<TValueT;>;"
    .local p3, "value":Ljava/lang/Object;, "TValueT;"
    iget-object v0, p0, Landroidx/camera/core/impl/MutableOptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 92
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 95
    iget-object v1, p0, Landroidx/camera/core/impl/MutableOptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void

    .line 101
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 102
    .local v1, "priority1":Landroidx/camera/core/impl/Config$OptionPriority;
    move-object v2, p2

    .line 103
    .local v2, "priority2":Landroidx/camera/core/impl/Config$OptionPriority;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    .local v3, "value1":Ljava/lang/Object;
    move-object v4, p3

    .line 105
    .local v4, "value2":Ljava/lang/Object;, "TValueT;"
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1, v2}, Landroidx/camera/core/impl/Config$-CC;->hasConflict(Landroidx/camera/core/impl/Config$OptionPriority;Landroidx/camera/core/impl/Config$OptionPriority;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Option values conflicts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", existing value ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 107
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", conflicting ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_2
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "opt",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TValueT;>;TValueT;)V"
        }
    .end annotation

    .line 84
    .local p1, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<TValueT;>;"
    .local p2, "value":Ljava/lang/Object;, "TValueT;"
    sget-object v0, Landroidx/camera/core/impl/MutableOptionsBundle;->DEFAULT_PRIORITY:Landroidx/camera/core/impl/Config$OptionPriority;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public removeOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TValueT;>;)TValueT;"
        }
    .end annotation

    .line 77
    .local p1, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<TValueT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/MutableOptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "value":Ljava/lang/Object;, "TValueT;"
    return-object v0
.end method
