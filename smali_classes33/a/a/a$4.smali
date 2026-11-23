.class public final synthetic La/a/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$start$12"
    proto = "(Ljava/io/File;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$4;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, La/a/a$4;->f$0:Ljava/io/File;

    invoke-static {v0}, La/a/a;->lambda$start$12(Ljava/io/File;)V

    return-void
.end method
