.class public interface abstract annotation Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;
        canBeNull = true
        optimizePositive = false
        serializer = Lcom/esotericsoftware/kryo/Serializer;
        serializerFactory = Lcom/esotericsoftware/kryo/SerializerFactory;
        valueClass = Ljava/lang/Object;
        variableLengthEncoding = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Bind"
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
.method public abstract canBeNull()Z
.end method

.method public abstract optimizePositive()Z
.end method

.method public abstract serializer()Ljava/lang/Class;
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

.method public abstract serializerFactory()Ljava/lang/Class;
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

.method public abstract valueClass()Ljava/lang/Class;
.end method

.method public abstract variableLengthEncoding()Z
.end method
