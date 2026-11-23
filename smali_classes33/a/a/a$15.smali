.class public final synthetic La/a/a$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$onCreate$0"
    proto = "(La/a/a$Release;)V"
.end annotation


# instance fields
.field public final synthetic f$0:La/a/a$Release;


# direct methods
.method public synthetic constructor <init>(La/a/a$Release;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$15;->f$0:La/a/a$Release;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, La/a/a$15;->f$0:La/a/a$Release;

    invoke-static {v0}, La/a/a;->lambda$onCreate$0(La/a/a$Release;)V

    return-void
.end method
