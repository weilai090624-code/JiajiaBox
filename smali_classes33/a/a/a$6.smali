.class public final synthetic La/a/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$onCreate$2"
    proto = "(Landroid/content/Context;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$6;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, La/a/a$6;->f$0:Landroid/content/Context;

    invoke-static {v0}, La/a/a;->lambda$onCreate$2(Landroid/content/Context;)V

    return-void
.end method
