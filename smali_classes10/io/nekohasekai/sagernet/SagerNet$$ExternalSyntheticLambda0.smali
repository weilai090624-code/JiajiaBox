.class public final synthetic Lio/nekohasekai/sagernet/SagerNet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lio/nekohasekai/sagernet/SagerNet;->$r8$lambda$v5B9aTJQDQjosqT2lwFxz7Z1amk(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
