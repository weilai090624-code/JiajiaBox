.class public Lj$/util/DesugarCollections;
.super Ljava/lang/Object;
.source "DesugarCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/DesugarCollections$SynchronizedSortedMap;,
        Lj$/util/DesugarCollections$SynchronizedMap;
    }
.end annotation


# static fields
.field private static final COLLECTION_FIELD:Ljava/lang/reflect/Field;

.field private static final MUTEX_FIELD:Ljava/lang/reflect/Field;

.field public static final SYNCHRONIZED_COLLECTION:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/util/Collection;",
            ">;"
        }
    .end annotation
.end field

.field static final SYNCHRONIZED_LIST:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetSYNCHRONIZED_COLLECTION_CONSTRUCTOR()Ljava/lang/reflect/Constructor;
    .locals 1

    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYNCHRONIZED_SET_CONSTRUCTOR()Ljava/lang/reflect/Constructor;
    .locals 1

    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_LIST:Ljava/lang/Class;

    .line 102
    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    const-string v1, "mutex"

    invoke-static {v0, v1}, Lj$/util/DesugarCollections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    .line 103
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    :cond_0
    sget-object v0, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    const-string v2, "c"

    invoke-static {v0, v2}, Lj$/util/DesugarCollections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    .line 107
    sget-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "synchronizedSet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Set;>;"
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lj$/util/DesugarCollections;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lj$/util/DesugarCollections;->SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 112
    sget-object v3, Lj$/util/DesugarCollections;->SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_2

    .line 113
    sget-object v3, Lj$/util/DesugarCollections;->SYNCHRONIZED_SET_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 115
    :cond_2
    sget-object v3, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Collection;

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 116
    invoke-static {v3, v2}, Lj$/util/DesugarCollections;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 117
    sget-object v2, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_3

    .line 118
    sget-object v2, Lj$/util/DesugarCollections;->SYNCHRONIZED_COLLECTION_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 120
    .end local v0    # "synchronizedSet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Set;>;"
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 166
    :try_start_0
    sget-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized collection forEach fall-back."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :try_start_2
    sget-object v1, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 175
    monitor-exit v0

    .line 178
    nop

    .line 179
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    .restart local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    :catch_1
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized collection forEach."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static forEachIterable(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 182
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "t":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 185
    .end local v1    # "t":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TE;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+TE;>;"
        }
    .end annotation

    .line 134
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 124
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 145
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 147
    :try_start_0
    sget-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized collection removeIf fall-back."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :try_start_2
    sget-object v1, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .restart local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    :catch_1
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized collection removeIf."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 191
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 193
    :try_start_0
    sget-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized list replaceAll fall-back."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :try_start_2
    sget-object v1, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p1}, Lj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    .line 202
    monitor-exit v0

    .line 205
    nop

    .line 206
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized list replaceAll."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 213
    :try_start_0
    sget-object v0, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized collection sort fall-back."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    sget-object v0, Lj$/util/DesugarCollections;->MUTEX_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :try_start_2
    sget-object v1, Lj$/util/DesugarCollections;->COLLECTION_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    monitor-exit v0

    .line 225
    nop

    .line 226
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catch_1
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Runtime illegal access in synchronized list sort."

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 259
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lj$/util/DesugarCollections$SynchronizedMap;

    invoke-direct {v0, p0}, Lj$/util/DesugarCollections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 485
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Lj$/util/DesugarCollections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Lj$/util/DesugarCollections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method
