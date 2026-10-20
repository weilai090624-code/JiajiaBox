.class public interface abstract Lcom/esotericsoftware/kryo/util/Generics;
.super Ljava/lang/Object;
.source "Generics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/Generics$GenericType;,
        Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;
    }
.end annotation


# virtual methods
.method public abstract getGenericTypesSize()I
.end method

.method public abstract nextGenericClass()Ljava/lang/Class;
.end method

.method public abstract nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
.end method

.method public abstract popGenericType()V
.end method

.method public abstract popTypeVariables(I)V
.end method

.method public abstract pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
.end method

.method public abstract pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I
.end method

.method public abstract resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
.end method
