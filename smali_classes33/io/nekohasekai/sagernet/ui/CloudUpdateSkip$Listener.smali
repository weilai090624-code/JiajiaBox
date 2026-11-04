.class public final Lio/nekohasekai/sagernet/ui/CloudUpdateSkip$Listener;
.super Ljava/lang/Object;
.source "CloudUpdateSkip.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/CloudUpdateSkip;
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdateSkip$Listener;->context:Landroid/content/Context;

    .line 37
    iput-wide p2, p0, Lio/nekohasekai/sagernet/ui/CloudUpdateSkip$Listener;->code:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 42
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/CloudUpdateSkip$Listener;->context:Landroid/content/Context;

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdateSkip$Listener;->code:J

    invoke-static {p2, v0, v1}, Lio/nekohasekai/sagernet/ui/CloudUpdateSkip;->set(Landroid/content/Context;J)V

    if-eqz p1, :cond_c

    .line 44
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_c
    return-void
.end method
