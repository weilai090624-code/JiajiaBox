.class public final synthetic La/a/a$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "La/a/a;"
    method = "lambda$deliver$6"
    proto = "(La/a/a$Release;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:La/a/a$Release;


# direct methods
.method public synthetic constructor <init>(La/a/a$Release;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a$14;->f$0:La/a/a$Release;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, La/a/a$14;->f$0:La/a/a$Release;

    invoke-static {v0, p1, p2}, La/a/a;->lambda$deliver$6(La/a/a$Release;Landroid/content/DialogInterface;I)V

    return-void
.end method
