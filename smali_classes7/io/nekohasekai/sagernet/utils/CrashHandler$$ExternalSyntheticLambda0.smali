.class public final synthetic Lio/nekohasekai/sagernet/utils/CrashHandler$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-static {p1}, Lio/nekohasekai/sagernet/utils/CrashHandler;->$r8$lambda$aAa9nziIXaQ0SSpyvAYSsXci30g(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
