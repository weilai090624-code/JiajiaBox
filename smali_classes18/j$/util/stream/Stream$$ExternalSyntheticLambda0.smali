.class public final synthetic Lj$/util/stream/Stream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lj$/util/stream/Stream;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/Stream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Stream$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$$ExternalSyntheticLambda0;->f$0:Lj$/util/stream/Stream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->close()V

    return-void
.end method
