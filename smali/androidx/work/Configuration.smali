.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;,
        Landroidx/work/Configuration$Provider;
    }
.end annotation


# static fields
.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field final mDefaultProcessName:Ljava/lang/String;

.field final mExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mInputMergerFactory:Landroidx/work/InputMergerFactory;

.field private final mIsUsingDefaultTaskExecutor:Z

.field final mLoggingLevel:I

.field final mMaxJobSchedulerId:I

.field final mMaxSchedulerLimit:I

.field final mMinJobSchedulerId:I

.field final mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field final mSchedulingExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskExecutor:Ljava/util/concurrent/Executor;

.field final mWorkerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method constructor <init>(Landroidx/work/Configuration$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroidx/work/Configuration$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 87
    invoke-direct {p0, v1}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_13

    .line 89
    :cond_f
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    :goto_13
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_21

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/Configuration;->mIsUsingDefaultTaskExecutor:Z

    .line 97
    invoke-direct {p0, v0}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_27

    .line 99
    :cond_21
    iput-boolean v1, p0, Landroidx/work/Configuration;->mIsUsingDefaultTaskExecutor:Z

    .line 100
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 103
    :goto_27
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    if-nez v0, :cond_32

    .line 104
    invoke-static {}, Landroidx/work/WorkerFactory;->getDefaultWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    goto :goto_36

    .line 106
    :cond_32
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/WorkerFactory;

    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    .line 109
    :goto_36
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    if-nez v0, :cond_41

    .line 110
    invoke-static {}, Landroidx/work/InputMergerFactory;->getDefaultInputMergerFactory()Landroidx/work/InputMergerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    goto :goto_45

    .line 112
    :cond_41
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    iput-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 115
    :goto_45
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    if-nez v0, :cond_51

    .line 116
    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    iput-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    goto :goto_55

    .line 118
    :cond_51
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    iput-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 121
    :goto_55
    iget v0, p1, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    iput v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    .line 122
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    .line 123
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    .line 124
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    iput v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    .line 125
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExceptionHandler:Landroidx/core/util/Consumer;

    iput-object v0, p0, Landroidx/work/Configuration;->mExceptionHandler:Landroidx/core/util/Consumer;

    .line 126
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mSchedulingExceptionHandler:Landroidx/core/util/Consumer;

    iput-object v0, p0, Landroidx/work/Configuration;->mSchedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 127
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .registers 4
    .param p1, "isTaskExecutor"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTaskExecutor"
        }
    .end annotation

    .line 272
    nop

    .line 274
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 275
    invoke-direct {p0, p1}, Landroidx/work/Configuration;->createDefaultThreadFactory(Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultThreadFactory(Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3
    .param p1, "isTaskExecutor"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTaskExecutor"
        }
    .end annotation

    .line 280
    new-instance v0, Landroidx/work/Configuration$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/Configuration$1;-><init>(Landroidx/work/Configuration;Z)V

    return-object v0
.end method


# virtual methods
.method public getDefaultProcessName()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 136
    iget-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getInitializationExceptionHandler()Landroidx/core/util/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/work/Configuration;->mExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public getInputMergerFactory()Landroidx/work/InputMergerFactory;
    .registers 2

    .line 165
    iget-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object v0
.end method

.method public getMaxJobSchedulerId()I
    .registers 2

    .line 214
    iget v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    return v0
.end method

.method public getMaxSchedulerLimit()I
    .registers 3

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_b

    .line 238
    iget v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 240
    :cond_b
    iget v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return v0
.end method

.method public getMinJobSchedulerId()I
    .registers 2

    .line 200
    iget v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    return v0
.end method

.method public getMinimumLoggingLevel()I
    .registers 2

    .line 186
    iget v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    return v0
.end method

.method public getRunnableScheduler()Landroidx/work/RunnableScheduler;
    .registers 2

    .line 174
    iget-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    return-object v0
.end method

.method public getSchedulingExceptionHandler()Landroidx/core/util/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroidx/work/Configuration;->mSchedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 146
    iget-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getWorkerFactory()Landroidx/work/WorkerFactory;
    .registers 2

    .line 157
    iget-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory;

    return-object v0
.end method

.method public isUsingDefaultTaskExecutor()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Landroidx/work/Configuration;->mIsUsingDefaultTaskExecutor:Z

    return v0
.end method
