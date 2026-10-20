.class Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer$1;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "BlowfishSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "bufferSize"    # I

    .line 49
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer$1;->this$0:Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;

    invoke-direct {p0, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 52
    return-void
.end method
