.class Lj$/util/stream/Streams$1;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/Runnable;

.field final synthetic val$b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lj$/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    iput-object p2, p0, Lj$/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 840
    :try_start_0
    iget-object v0, p0, Lj$/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    nop

    .line 853
    iget-object v0, p0, Lj$/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 854
    return-void

    .line 842
    :catchall_0
    move-exception v0

    .line 844
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lj$/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 850
    goto :goto_1

    .line 846
    :catchall_1
    move-exception v1

    .line 848
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 849
    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_0

    .line 851
    .end local v1    # "e2":Ljava/lang/Throwable;
    :goto_1
    throw v0
.end method
