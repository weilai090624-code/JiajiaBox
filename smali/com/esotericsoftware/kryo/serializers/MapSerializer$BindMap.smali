.class public interface abstract annotation Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
        keyClass = Ljava/lang/Object;
        keySerializer = Lcom/esotericsoftware/kryo/Serializer;
        keySerializerFactory = Lcom/esotericsoftware/kryo/SerializerFactory;
        keysCanBeNull = true
        valueClass = Ljava/lang/Object;
        valueSerializer = Lcom/esotericsoftware/kryo/Serializer;
        valueSerializerFactory = Lcom/esotericsoftware/kryo/SerializerFactory;
        valuesCanBeNull = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BindMap"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract keyClass()Ljava/lang/Class;
.end method

.method public abstract keySerializer()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keySerializerFactory()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/SerializerFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keysCanBeNull()Z
.end method

.method public abstract valueClass()Ljava/lang/Class;
.end method

.method public abstract valueSerializer()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract valueSerializerFactory()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/SerializerFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract valuesCanBeNull()Z
.end method
