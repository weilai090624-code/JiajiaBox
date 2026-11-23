.class public final synthetic La/a/a$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$deliver$4"
    proto = "(Landroid/app/Activity;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$12;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, La/a/a$12;->f$0:Landroid/app/Activity;

    invoke-static {v0}, La/a/a;->lambda$deliver$4(Landroid/app/Activity;)V

    return-void
.end method
