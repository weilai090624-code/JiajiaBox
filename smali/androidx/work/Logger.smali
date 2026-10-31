.class public abstract Landroidx/work/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Logger$LogcatLogger;
    }
.end annotation


# static fields
.field private static final MAX_PREFIXED_TAG_LENGTH:I

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final TAG_PREFIX:Ljava/lang/String; = "WM-"

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sLogger:Landroidx/work/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/Logger;->sLock:Ljava/lang/Object;

    .line 40
    const-string v0, "WM-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "loggingLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggingLevel"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static get()Landroidx/work/Logger;
    .registers 3

    .line 80
    sget-object v0, Landroidx/work/Logger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    if-nez v1, :cond_f

    .line 82
    new-instance v1, Landroidx/work/Logger$LogcatLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    sput-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    .line 84
    :cond_f
    sget-object v1, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static setLogger(Landroidx/work/Logger;)V
    .registers 3
    .param p0, "logger"    # Landroidx/work/Logger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logger"
        }
    .end annotation

    .line 46
    sget-object v0, Landroidx/work/Logger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_3
    sput-object p0, Landroidx/work/Logger;->sLogger:Landroidx/work/Logger;

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    .local v1, "withPrefix":Ljava/lang/StringBuilder;
    const-string v2, "WM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget v2, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    if-lt v0, v2, :cond_1f

    .line 62
    const/4 v2, 0x0

    sget v3, Landroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 64
    :cond_1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :goto_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method

.method public abstract warning(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation
.end method

.method public abstract warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation
.end method
