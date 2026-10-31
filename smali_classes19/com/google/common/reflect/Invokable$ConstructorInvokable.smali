.class Lcom/google/common/reflect/Invokable$ConstructorInvokable;
.super Lcom/google/common/reflect/Invokable;
.source "Invokable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstructorInvokable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/Invokable<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 407
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/Invokable;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 408
    iput-object p1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 409
    return-void
.end method

.method private mayNeedHiddenThis()Z
    .registers 5

    .line 492
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 493
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 495
    return v2

    .line 497
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 498
    .local v1, "enclosingMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1e

    .line 500
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 508
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 509
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 508
    :goto_30
    return v2
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 2

    .line 452
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 5

    .line 438
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 439
    .local v0, "types":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-lez v1, :cond_2f

    invoke-direct {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->mayNeedHiddenThis()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 440
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 441
    .local v1, "rawParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_2f

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 442
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2f

    .line 444
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Type;

    return-object v2

    .line 447
    .end local v1    # "rawParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2f
    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .registers 4

    .line 427
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 428
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 429
    .local v1, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v2, v1

    if-lez v2, :cond_10

    .line 430
    invoke-static {v0, v1}, Lcom/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    return-object v2

    .line 432
    :cond_10
    return-object v0
.end method

.method final getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 457
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 472
    .local v0, "declaredByClass":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 473
    .local v1, "declaredByConstructor":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/reflect/TypeVariable;

    .line 475
    .local v2, "result":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    return-object v2
.end method

.method final invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "receiver"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 416
    :catch_7
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isOverridable()Z
    .registers 2

    .line 483
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final isVarArgs()Z
    .registers 2

    .line 488
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable$ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    return v0
.end method
