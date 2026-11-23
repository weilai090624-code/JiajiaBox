.class public final La/a/b$Listener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation


# instance fields
.field private final code:J

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b$Listener;->context:Landroid/content/Context;

    iput-wide p2, p0, La/a/b$Listener;->code:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p2, p0, La/a/b$Listener;->context:Landroid/content/Context;

    iget-wide v0, p0, La/a/b$Listener;->code:J

    invoke-static {p2, v0, v1}, La/a/b;->set(Landroid/content/Context;J)V

    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_c
    return-void
.end method
