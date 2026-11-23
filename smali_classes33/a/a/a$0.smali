.class public final synthetic La/a/a$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$start$13"
    proto = "(Landroid/content/Context;La/a/a$Release;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:La/a/a$Release;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;La/a/a$Release;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$0;->f$0:Landroid/content/Context;

    iput-object p2, p0, La/a/a$0;->f$1:La/a/a$Release;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, La/a/a$0;->f$0:Landroid/content/Context;

    iget-object v1, p0, La/a/a$0;->f$1:La/a/a$Release;

    invoke-static {v0, v1}, La/a/a;->lambda$start$13(Landroid/content/Context;La/a/a$Release;)V

    return-void
.end method
