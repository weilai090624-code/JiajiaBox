.class final Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;
.super Lj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReservationNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2264
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;, "Ljava/util/concurrent/ConcurrentHashMap$ReservationNode<TK;TV;>;"
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2265
    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Lj$/util/concurrent/ConcurrentHashMap$Node;
    .locals 1
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lj$/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2268
    .local p0, "this":Lj$/util/concurrent/ConcurrentHashMap$ReservationNode;, "Ljava/util/concurrent/ConcurrentHashMap$ReservationNode<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method
