.class Lcom/esotericsoftware/kryo/util/Pool$1;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryo/util/Pool;-><init>(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/util/Pool;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/util/Pool;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/esotericsoftware/kryo/util/Pool;
    .param p2, "arg0"    # I

    .line 48
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$1;, "Lcom/esotericsoftware/kryo/util/Pool$1;"
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/Pool$1;->this$0:Lcom/esotericsoftware/kryo/util/Pool;

    invoke-direct {p0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/esotericsoftware/kryo/util/Pool$1;, "Lcom/esotericsoftware/kryo/util/Pool$1;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
