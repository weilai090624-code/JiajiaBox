.class public final Lcom/esotericsoftware/kryo/util/NoGenerics;
.super Ljava/lang/Object;
.source "NoGenerics.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Generics;


# static fields
.field public static final INSTANCE:Lcom/esotericsoftware/kryo/util/Generics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/esotericsoftware/kryo/util/NoGenerics;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/NoGenerics;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/NoGenerics;->INSTANCE:Lcom/esotericsoftware/kryo/util/Generics;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getGenericTypesSize()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public nextGenericClass()Ljava/lang/Class;
    .registers 2

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public popGenericType()V
    .registers 1

    .line 39
    return-void
.end method

.method public popTypeVariables(I)V
    .registers 2
    .param p1, "count"    # I

    .line 58
    return-void
.end method

.method public pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .registers 2
    .param p1, "fieldType"    # Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 35
    return-void
.end method

.method public pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I
    .registers 4
    .param p1, "hierarchy"    # Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;
    .param p2, "args"    # [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 3
    .param p1, "typeVariable"    # Ljava/lang/reflect/TypeVariable;

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
