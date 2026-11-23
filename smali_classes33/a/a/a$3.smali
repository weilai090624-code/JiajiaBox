.class public final synthetic La/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$start$11"
    proto = "(Ljava/lang/String;Ljava/lang/Exception;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$3;->f$0:Ljava/lang/String;

    iput-object p2, p0, La/a/a$3;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, La/a/a$3;->f$0:Ljava/lang/String;

    iget-object v1, p0, La/a/a$3;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, La/a/a;->lambda$start$11(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
