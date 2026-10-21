.class Lgo/Seq$GoRefQueue$1;
.super Ljava/lang/Object;
.source "Seq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgo/Seq$GoRefQueue;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgo/Seq$GoRefQueue;


# direct methods
.method constructor <init>(Lgo/Seq$GoRefQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lgo/Seq$GoRefQueue$1;->this$0:Lgo/Seq$GoRefQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 266
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Lgo/Seq$GoRefQueue$1;->this$0:Lgo/Seq$GoRefQueue;

    invoke-virtual {v0}, Lgo/Seq$GoRefQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lgo/Seq$GoRef;

    .line 267
    iget-object v1, p0, Lgo/Seq$GoRefQueue$1;->this$0:Lgo/Seq$GoRefQueue;

    # getter for: Lgo/Seq$GoRefQueue;->refs:Ljava/util/Collection;
    invoke-static {v1}, Lgo/Seq$GoRefQueue;->access$200(Lgo/Seq$GoRefQueue;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 268
    iget v1, v0, Lgo/Seq$GoRef;->refnum:I

    invoke-static {v1}, Lgo/Seq;->destroyRef(I)V

    .line 269
    invoke-virtual {v0}, Lgo/Seq$GoRef;->clear()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 270
    :catch_1b
    move-exception v0

    .line 272
    :goto_1c
    goto :goto_1
.end method
