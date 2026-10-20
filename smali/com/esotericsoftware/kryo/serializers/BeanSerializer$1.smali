.class Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;
.super Ljava/lang/Object;
.source "BeanSerializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/serializers/BeanSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/beans/PropertyDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    .line 64
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;, "Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/beans/PropertyDescriptor;Ljava/beans/PropertyDescriptor;)I
    .locals 2
    .param p1, "o1"    # Ljava/beans/PropertyDescriptor;
    .param p2, "o2"    # Ljava/beans/PropertyDescriptor;

    .line 66
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;, "Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;"
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 64
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;, "Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;"
    check-cast p1, Ljava/beans/PropertyDescriptor;

    check-cast p2, Ljava/beans/PropertyDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;->compare(Ljava/beans/PropertyDescriptor;Ljava/beans/PropertyDescriptor;)I

    move-result p1

    return p1
.end method
