.class public abstract Lcom/google/common/reflect/Invokable;
.super Ljava/lang/Object;
.source "Invokable.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/lang/reflect/Member;


# annotations
.annotation runtime Lcom/google/common/reflect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/Invokable$ConstructorInvokable;,
        Lcom/google/common/reflect/Invokable$MethodInvokable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/reflect/Member;"
    }
.end annotation


# instance fields
.field private final accessibleObject:Ljava/lang/reflect/AccessibleObject;

.field private final member:Ljava/lang/reflect/Member;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/reflect/AccessibleObject;",
            ":",
            "Ljava/lang/reflect/Member;",
            ">(TM;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "member":Ljava/lang/reflect/AccessibleObject;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    iput-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    .line 75
    return-void
.end method

.method public static from(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lcom/google/common/reflect/Invokable<",
            "TT;TT;>;"
        }
    .end annotation

    .line 84
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-instance v0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static from(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/Invokable<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/common/reflect/Invokable$MethodInvokable;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/Invokable$MethodInvokable;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 215
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    instance-of v0, p1, Lcom/google/common/reflect/Invokable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/google/common/reflect/Invokable;

    .line 217
    .local v0, "that":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<**>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/reflect/Invokable;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    iget-object v3, v0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 219
    .end local v0    # "that":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<**>;"
    :cond_1
    return v1
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 95
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 100
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 105
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getExceptionTypes()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/reflect/TypeToken<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 288
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/reflect/TypeToken<+Ljava/lang/Throwable;>;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 291
    .local v4, "type":Ljava/lang/reflect/Type;
    nop

    .line 292
    invoke-static {v4}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    .line 293
    .local v5, "exceptionType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+Ljava/lang/Throwable;>;"
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 288
    .end local v4    # "type":Ljava/lang/reflect/Type;
    .end local v5    # "exceptionType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+Ljava/lang/Throwable;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method abstract getGenericExceptionTypes()[Ljava/lang/reflect/Type;
.end method

.method abstract getGenericParameterTypes()[Ljava/lang/reflect/Type;
.end method

.method abstract getGenericReturnType()Ljava/lang/reflect/Type;
.end method

.method public final getModifiers()I
    .locals 1

    .line 144
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 139
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method public final getParameters()Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/reflect/Parameter;",
            ">;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 277
    .local v0, "parameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 278
    .local v1, "annotations":[[Ljava/lang/annotation/Annotation;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 279
    .local v2, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/reflect/Parameter;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 280
    new-instance v4, Lcom/google/common/reflect/Parameter;

    aget-object v5, v0, v3

    invoke-static {v5}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/google/common/reflect/Parameter;-><init>(Lcom/google/common/reflect/Invokable;ILcom/google/common/reflect/TypeToken;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method public final getReturnType()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "+TR;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 224
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 260
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "receiver":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/Invokable;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final isAbstract()Z
    .locals 1

    .line 190
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public final isAccessible()Z
    .locals 1

    .line 134
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public final isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final isFinal()Z
    .locals 1

    .line 185
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final isNative()Z
    .locals 1

    .line 195
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v0

    return v0
.end method

.method public abstract isOverridable()Z
.end method

.method public final isPackagePrivate()Z
    .locals 1

    .line 164
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    .line 169
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    .line 159
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public final isPublic()Z
    .locals 1

    .line 154
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public final isStatic()Z
    .locals 1

    .line 174
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public final isSynchronized()Z
    .locals 1

    .line 200
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynchronized(I)Z

    move-result v0

    return v0
.end method

.method public final isSynthetic()Z
    .locals 1

    .line 149
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method final isTransient()Z
    .locals 1

    .line 210
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    return v0
.end method

.method public abstract isVarArgs()Z
.end method

.method final isVolatile()Z
    .locals 1

    .line 205
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v0

    return v0
.end method

.method public final returning(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/Invokable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:TR;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TR1;>;)",
            "Lcom/google/common/reflect/Invokable<",
            "TT;TR1;>;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "returnType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TR1;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getReturnType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeToken;->isSupertypeOf(Lcom/google/common/reflect/TypeToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    move-object v0, p0

    .line 318
    .local v0, "specialized":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR1;>;"
    return-object v0

    .line 313
    .end local v0    # "specialized":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR1;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 314
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getReturnType()Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invokable is known to return "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final returning(Ljava/lang/Class;)Lcom/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:TR;>(",
            "Ljava/lang/Class<",
            "TR1;>;)",
            "Lcom/google/common/reflect/Invokable<",
            "TT;TR1;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TR1;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/Invokable;->returning(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/Invokable;

    move-result-object v0

    return-object v0
.end method

.method public final setAccessible(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 117
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 229
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trySetAccessible()Z
    .locals 2

    .line 125
    .local p0, "this":Lcom/google/common/reflect/Invokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/common/reflect/Invokable;->accessibleObject:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method
