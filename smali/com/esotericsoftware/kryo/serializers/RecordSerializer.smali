.class public Lcom/esotericsoftware/kryo/serializers/RecordSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "RecordSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final GET_NAME:Ljava/lang/reflect/Method;

.field private static final GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

.field private static final GET_TYPE:Ljava/lang/reflect/Method;

.field private static final IS_RECORD:Ljava/lang/reflect/Method;


# instance fields
.field private fixedFieldTypes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    :try_start_0
    const-string v0, "java.lang.reflect.RecordComponent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Class;

    const-string v2, "isRecord"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "isRecord":Ljava/lang/reflect/Method;
    const-class v2, Ljava/lang/Class;

    const-string v4, "getRecordComponents"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    .local v2, "getRecordComponents":Ljava/lang/reflect/Method;
    const-string v4, "getName"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 57
    .local v4, "getName":Ljava/lang/reflect/Method;
    const-string v5, "getType"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 64
    .local v0, "getType":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 58
    .end local v0    # "getType":Ljava/lang/reflect/Method;
    .end local v1    # "isRecord":Ljava/lang/reflect/Method;
    .end local v2    # "getRecordComponents":Ljava/lang/reflect/Method;
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const/4 v1, 0x0

    .line 61
    .restart local v1    # "isRecord":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 62
    .restart local v2    # "getRecordComponents":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 63
    .restart local v4    # "getName":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    move-object v0, v3

    .line 66
    .local v0, "getType":Ljava/lang/reflect/Method;
    :goto_1
    sput-object v1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->IS_RECORD:Ljava/lang/reflect/Method;

    .line 67
    sput-object v2, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    .line 68
    sput-object v4, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_NAME:Ljava/lang/reflect/Method;

    .line 69
    sput-object v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_TYPE:Ljava/lang/reflect/Method;

    .line 70
    .end local v0    # "getType":Ljava/lang/reflect/Method;
    .end local v1    # "isRecord":Ljava/lang/reflect/Method;
    .end local v2    # "getRecordComponents":Ljava/lang/reflect/Method;
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->fixedFieldTypes:Z

    .line 75
    return-void
.end method

.method private static componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;
    .locals 4
    .param p0, "recordObject"    # Ljava/lang/Object;
    .param p1, "recordComponent"    # Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 206
    .local v0, "get":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 207
    .end local v0    # "get":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 208
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 209
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve record components ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 211
    throw v1
.end method

.method private static invokeCanonicalConstructor(Ljava/lang/Class;[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "recordComponents"    # [Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 220
    .local p0, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda2;-><init>()V

    .line 221
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda3;-><init>()V

    .line 222
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .local v1, "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    goto :goto_0

    .line 226
    .end local v1    # "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 228
    .local v2, "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move-object v1, v2

    .line 230
    .end local v2    # "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local v1, "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 231
    .end local v0    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catchall_0
    move-exception v0

    .line 232
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 233
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not construct type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 234
    throw v1
.end method

.method private isRecord(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->IS_RECORD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not determine type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$invokeCanonicalConstructor$0(I)[Ljava/lang/Class;
    .locals 1
    .param p0, "x$0"    # I

    .line 222
    new-array v0, p0, [Ljava/lang/Class;

    return-object v0
.end method

.method private static recordComponents(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;",
            ">;)[",
            "Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;"
        }
    .end annotation

    .line 184
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;>;"
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 185
    .local v0, "rawComponents":[Ljava/lang/Object;
    array-length v2, v0

    new-array v2, v2, [Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    .line 186
    .local v2, "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 187
    aget-object v4, v0, v3

    .line 188
    .local v4, "comp":Ljava/lang/Object;
    new-instance v5, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    sget-object v6, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_NAME:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_TYPE:Ljava/lang/reflect/Method;

    new-array v8, v1, [Ljava/lang/Object;

    .line 190
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-direct {v5, v6, v7, v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    aput-object v5, v2, v3

    .line 186
    .end local v4    # "comp":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    return-object v2

    .line 194
    .end local v0    # "rawComponents":[Ljava/lang/Object;
    .end local v2    # "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 196
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve record components ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 197
    throw v1
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const-string v0, " ("

    invoke-direct {p0, p3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->isRecord(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_5

    .line 113
    new-instance v1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->recordComponents(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    move-result-object v1

    .line 114
    .local v1, "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 116
    aget-object v5, v1, v4

    .line 117
    .local v5, "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v7

    .line 120
    .local v7, "rcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v8, :cond_0

    const-string v8, "kryo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->index()I

    move-result v8

    invoke-virtual {p1, p2, v7}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v3, v8

    goto :goto_2

    .line 125
    :cond_1
    iget-boolean v8, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->fixedFieldTypes:Z

    if-nez v8, :cond_3

    invoke-virtual {p1, v7}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->index()I

    move-result v8

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v3, v8

    goto :goto_2

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->index()I

    move-result v8

    invoke-virtual {p1, p2, v7}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v3, v8
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_2
    nop

    .line 115
    .end local v5    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "rcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .restart local v5    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "rcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v8

    .line 135
    .local v8, "t":Ljava/lang/Throwable;
    new-instance v9, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v9, v8}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 136
    .local v9, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 137
    throw v9

    .line 131
    .end local v8    # "t":Ljava/lang/Throwable;
    .end local v9    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v8

    .line 132
    .local v8, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 133
    throw v8

    .line 140
    .end local v4    # "i":I
    .end local v5    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "rcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :cond_4
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 141
    invoke-static {p3, v1, v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->invokeCanonicalConstructor(Ljava/lang/Class;[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 111
    .end local v1    # "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v3    # "values":[Ljava/lang/Object;
    :cond_5
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a record ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFixedFieldTypes(Z)V
    .locals 0
    .param p1, "fixedFieldTypes"    # Z

    .line 241
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->fixedFieldTypes:Z

    .line 242
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 12
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    const-string v0, ")"

    const-string v1, " ("

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 80
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->isRecord(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    new-instance v3, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->recordComponents(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 84
    .local v6, "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v7

    .line 85
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    sget-boolean v9, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v9, :cond_0

    const-string v9, "kryo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write property: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 89
    invoke-static {p3, v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, p2, v9}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_2

    .line 91
    :cond_1
    iget-boolean v9, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->fixedFieldTypes:Z

    if-nez v9, :cond_3

    invoke-virtual {p1, v7}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    invoke-static {p3, v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, p2, v9}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    invoke-static {p3, v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, p2, v9, v7}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_2
    nop

    .line 83
    .end local v6    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .restart local v6    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .restart local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 101
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .local v4, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 103
    throw v4

    .line 97
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v3

    .line 98
    .local v3, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 99
    throw v3

    .line 106
    .end local v3    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v6    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "name":Ljava/lang/String;
    :cond_4
    return-void

    .line 81
    :cond_5
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a record"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
