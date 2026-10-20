.class Lj$/util/stream/Streams$2;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/Streams;->composedClose(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lj$/util/stream/BaseStream;

.field final synthetic val$b:Lj$/util/stream/BaseStream;


# direct methods
.method constructor <init>(Lj$/util/stream/BaseStream;Lj$/util/stream/BaseStream;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lj$/util/stream/Streams$2;->val$a:Lj$/util/stream/BaseStream;

    iput-object p2, p0, Lj$/util/stream/Streams$2;->val$b:Lj$/util/stream/BaseStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 869
    :try_start_0
    iget-object v0, p0, Lj$/util/stream/Streams$2;->val$a:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    nop

    .line 882
    iget-object v0, p0, Lj$/util/stream/Streams$2;->val$b:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V

    .line 883
    return-void

    .line 871
    :catchall_0
    move-exception v0

    .line 873
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lj$/util/stream/Streams$2;->val$b:Lj$/util/stream/BaseStream;

    invoke-interface {v1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 879
    goto :goto_1

    .line 875
    :catchall_1
    move-exception v1

    .line 877
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 878
    :goto_0
    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_0

    .line 880
    .end local v1    # "e2":Ljava/lang/Throwable;
    :goto_1
    throw v0
.end method
