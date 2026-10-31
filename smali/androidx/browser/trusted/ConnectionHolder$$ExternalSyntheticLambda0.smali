.class public final synthetic Landroidx/browser/trusted/ConnectionHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/browser/trusted/ConnectionHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/trusted/ConnectionHolder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/trusted/ConnectionHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/browser/trusted/ConnectionHolder;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/browser/trusted/ConnectionHolder$$ExternalSyntheticLambda0;->f$0:Landroidx/browser/trusted/ConnectionHolder;

    invoke-virtual {v0, p1}, Landroidx/browser/trusted/ConnectionHolder;->lambda$getServiceWrapper$0$androidx-browser-trusted-ConnectionHolder(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
