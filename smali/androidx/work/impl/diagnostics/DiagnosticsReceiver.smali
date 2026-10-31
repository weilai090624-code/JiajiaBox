.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DiagnosticsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "DiagnosticsRcvr"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 42
    if-nez p2, :cond_3

    .line 43
    return-void

    .line 45
    :cond_3
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Requesting diagnostics"

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_e
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    .line 48
    .local v0, "workManager":Landroidx/work/WorkManager;
    const-class v1, Landroidx/work/impl/workers/DiagnosticsWorker;

    invoke-static {v1}, Landroidx/work/OneTimeWorkRequest;->from(Ljava/lang/Class;)Landroidx/work/OneTimeWorkRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1b} :catch_1d

    .line 51
    nop

    .end local v0    # "workManager":Landroidx/work/WorkManager;
    goto :goto_29

    .line 49
    :catch_1d
    move-exception v0

    .line 50
    .local v0, "exception":Ljava/lang/IllegalStateException;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->TAG:Ljava/lang/String;

    const-string v3, "WorkManager is not initialized"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_29
    return-void
.end method
