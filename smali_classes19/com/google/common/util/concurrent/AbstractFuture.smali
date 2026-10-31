.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Trusted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 87
    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 89
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    .line 92
    .local v0, "generateCancellationCauses":Z
    goto :goto_10

    .line 90
    .end local v0    # "generateCancellationCauses":Z
    :catch_d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    move v0, v1

    .line 93
    .local v0, "generateCancellationCauses":Z
    :goto_10
    sput-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 147
    .end local v0    # "generateCancellationCauses":Z
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "thrownUnsafeFailure":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 161
    .local v2, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_21
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    invoke-direct {v4, v3}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    move-object v0, v4

    .line 183
    .local v0, "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_67

    .line 162
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catchall_28
    move-exception v4

    .line 163
    .local v4, "unsafeFailure":Ljava/lang/Throwable;
    move-object v1, v4

    .line 168
    :try_start_2a
    new-instance v11, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v6, Ljava/lang/Thread;

    const-string v7, "thread"

    .line 170
    invoke-static {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v7, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v8, "next"

    .line 171
    invoke-static {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v8, "waiters"

    .line 172
    invoke-static {v0, v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    const-string v9, "listeners"

    .line 173
    invoke-static {v0, v5, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v5, Ljava/lang/Object;

    const-string v10, "value"

    .line 174
    invoke-static {v0, v5, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_5e

    move-object v0, v11

    .line 182
    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_67

    .line 175
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catchall_5e
    move-exception v0

    .line 180
    .local v0, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    move-object v2, v0

    .line 181
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v5, v3}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    move-object v3, v5

    move-object v0, v3

    .line 184
    .end local v4    # "unsafeFailure":Ljava/lang/Throwable;
    .local v0, "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :goto_67
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 189
    const-class v3, Ljava/util/concurrent/locks/LockSupport;

    .line 193
    .local v3, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_7f

    .line 194
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "SafeAtomicHelper is broken!"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .end local v1    # "thrownUnsafeFailure":Ljava/lang/Throwable;
    .end local v2    # "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    .end local v3    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7f
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 391
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .registers 1

    .line 77
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 77
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .line 77
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 77
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .line 77
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .line 77
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 77
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .line 77
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 77
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 1221
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 1222
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->appendResultObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_11} :catch_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_11} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_13

    .line 1231
    nop

    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_42

    .line 1229
    :catch_13
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thrown from get()]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 1227
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_28
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v1, "CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_41

    .line 1225
    :catch_2f
    move-exception v1

    .line 1226
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_41
    nop

    .line 1232
    :goto_42
    return-void
.end method

.method private addPendingString(Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 1187
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1189
    .local v0, "truncateLength":I
    const-string v1, "PENDING"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1192
    .local v1, "localValue":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    const-string v3, "]"

    if-eqz v2, :cond_22

    .line 1193
    const-string v2, ", setFuture=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    move-object v2, v1

    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->appendUserObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1195
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1199
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_2a} :catch_2d
    .catch Ljava/lang/StackOverflowError; {:try_start_22 .. :try_end_2a} :catch_2b

    .line 1204
    .local v2, "pendingDescription":Ljava/lang/String;
    goto :goto_54

    .line 1200
    .end local v2    # "pendingDescription":Ljava/lang/String;
    :catch_2b
    move-exception v2

    goto :goto_2e

    :catch_2d
    move-exception v2

    .line 1203
    .local v2, "e":Ljava/lang/Throwable;
    :goto_2e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Exception thrown from implementation: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1205
    .local v2, "pendingDescription":Ljava/lang/String;
    :goto_54
    if-eqz v2, :cond_63

    .line 1206
    const-string v4, ", info=["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .end local v2    # "pendingDescription":Ljava/lang/String;
    :cond_63
    :goto_63
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1215
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    .line 1217
    :cond_73
    return-void
.end method

.method private appendResultObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1240
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    if-nez p2, :cond_8

    .line 1241
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1242
    :cond_8
    if-ne p2, p0, :cond_10

    .line 1243
    const-string v0, "this future"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1245
    :cond_10
    nop

    .line 1246
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1247
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1248
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :goto_2e
    return-void
.end method

.method private appendUserObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1259
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    if-ne p2, p0, :cond_8

    .line 1260
    :try_start_2
    const-string v0, "this future"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1262
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_b} :catch_c

    .line 1268
    :goto_b
    goto :goto_1c

    .line 1264
    :catch_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Throwable;
    :goto_f
    const-string v1, "Exception thrown from implementation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1269
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1c
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1496
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1498
    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 5
    .param p1, "onto"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1134
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1135
    .local v0, "head":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    move-object v1, p1

    .line 1137
    .local v1, "reversedList":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_e
    if-eqz v0, :cond_17

    .line 1138
    move-object v2, v0

    .line 1139
    .local v2, "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1140
    iput-object v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1141
    move-object v1, v2

    .line 1142
    .end local v2    # "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    goto :goto_e

    .line 1143
    :cond_17
    return-object v1
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;)V"
        }
    .end annotation

    .line 995
    .local p0, "param":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    move-object v0, p0

    .line 997
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    const/4 v1, 0x0

    .line 1000
    .local v1, "next":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_2
    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 1006
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 1008
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v1

    .line 1009
    const/4 v0, 0x0

    .line 1010
    :goto_d
    if-eqz v1, :cond_43

    .line 1011
    move-object v2, v1

    .line 1012
    .local v2, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1017
    iget-object v3, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 1018
    .local v3, "task":Ljava/lang/Runnable;
    instance-of v4, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v4, :cond_37

    .line 1019
    move-object v4, v3

    check-cast v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 1025
    .local v4, "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 1026
    iget-object v5, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v5, v4, :cond_36

    .line 1027
    iget-object v5, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v5}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v5

    .line 1028
    .local v5, "valueToSet":Ljava/lang/Object;
    sget-object v6, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v6, v0, v4, v5}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1029
    goto :goto_2

    .line 1033
    .end local v4    # "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    .end local v5    # "valueToSet":Ljava/lang/Object;
    :cond_36
    goto :goto_42

    .line 1038
    :cond_37
    iget-object v4, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1040
    .end local v2    # "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .end local v3    # "task":Ljava/lang/Runnable;
    :goto_42
    goto :goto_d

    .line 1043
    :cond_43
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1277
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1286
    goto :goto_44

    .line 1278
    :catch_4
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RuntimeException while executing runnable "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with executor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1287
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_44
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 585
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-nez v0, :cond_1e

    .line 587
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-nez v0, :cond_13

    .line 589
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_11

    .line 594
    invoke-static {}, Lcom/google/common/util/concurrent/NullnessCasts;->uncheckedNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 597
    :cond_11
    move-object v0, p1

    .line 598
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    return-object v0

    .line 588
    .end local v0    # "asV":Ljava/lang/Object;, "TV;"
    :cond_13
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    move-object v1, p1

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 586
    :cond_1e
    move-object v0, p1

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 895
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 900
    move-object v0, p0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 901
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_26

    .line 905
    move-object v1, v0

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 906
    .local v1, "c":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    iget-boolean v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_26

    .line 908
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v3, :cond_23

    .line 909
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-object v4, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_25

    .line 910
    :cond_23
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    :goto_25
    move-object v0, v3

    .line 914
    .end local v1    # "c":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_26
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 916
    .end local v0    # "v":Ljava/lang/Object;
    :cond_2b
    instance-of v1, p0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    if-eqz v1, :cond_3e

    .line 917
    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 918
    invoke-static {v1}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    move-result-object v1

    .line 919
    .local v1, "throwable":Ljava/lang/Throwable;
    if-eqz v1, :cond_3e

    .line 920
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 923
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3e
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    .line 925
    .local v1, "wasCancelled":Z
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_50

    .line 930
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 934
    :cond_50
    :try_start_50
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    .line 935
    .local v3, "v":Ljava/lang/Object;
    if-eqz v1, :cond_80

    .line 936
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v2, v5}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v4

    .line 943
    :cond_80
    if-nez v3, :cond_85

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_84
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_50 .. :try_end_84} :catch_c3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_50 .. :try_end_84} :catch_8e
    .catchall {:try_start_50 .. :try_end_84} :catchall_87

    goto :goto_86

    :cond_85
    move-object v0, v3

    :goto_86
    return-object v0

    .line 964
    .end local v3    # "v":Ljava/lang/Object;
    :catchall_87
    move-exception v0

    .line 965
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 955
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_8e
    move-exception v0

    .line 956
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    if-nez v1, :cond_bd

    .line 957
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 963
    :cond_bd
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {v3, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    .line 944
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    :catch_c3
    move-exception v3

    .line 945
    .local v3, "exception":Ljava/util/concurrent/ExecutionException;
    if-eqz v1, :cond_f0

    .line 946
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v4, v2, v5}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v4

    .line 954
    :cond_f0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 976
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 980
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 986
    if-eqz v0, :cond_e

    .line 987
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 980
    :cond_e
    return-object v1

    .line 986
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 987
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 989
    :cond_19
    throw v1

    .line 981
    :catch_1a
    move-exception v1

    .line 982
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 983
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 4

    .line 1113
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1114
    .local v0, "head":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1115
    move-object v1, v0

    .local v1, "currentWaiter":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :goto_e
    if-eqz v1, :cond_16

    .line 1116
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 1115
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    goto :goto_e

    .line 1118
    .end local v1    # "currentWaiter":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_16
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .registers 6
    .param p1, "node"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 248
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 251
    :goto_3
    const/4 v0, 0x0

    .line 252
    .local v0, "pred":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 253
    .local v1, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v1, v2, :cond_b

    .line 254
    return-void

    .line 257
    :cond_b
    :goto_b
    if-eqz v1, :cond_29

    .line 258
    iget-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 259
    .local v2, "succ":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    .line 260
    move-object v0, v1

    goto :goto_27

    .line 261
    :cond_15
    if-eqz v0, :cond_1e

    .line 262
    iput-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 263
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_27

    .line 264
    goto :goto_3

    .line 266
    :cond_1e
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 267
    goto :goto_3

    .line 269
    :cond_27
    :goto_27
    move-object v1, v2

    goto :goto_b

    .line 273
    .end local v0    # "pred":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v1    # "curr":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v2    # "succ":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_29
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 735
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 747
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 748
    .local v0, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-eq v0, v1, :cond_2c

    .line 749
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 751
    .local v1, "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_1b
    iput-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 752
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 753
    return-void

    .line 755
    :cond_26
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 756
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v0, v2, :cond_1b

    .line 761
    .end local v0    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .end local v1    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_2c
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 762
    return-void
.end method

.method protected afterDone()V
    .registers 1

    .line 1058
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public cancel(Z)Z
    .registers 12
    .param p1, "mayInterruptIfRunning"    # Z

    .line 633
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 634
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 635
    .local v1, "rValue":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_a
    instance-of v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v4, v5

    if-eqz v4, :cond_68

    .line 639
    sget-boolean v4, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v4, :cond_20

    .line 640
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "Future.cancel() was called."

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p1, v5}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2b

    .line 653
    :cond_20
    if-eqz p1, :cond_25

    .line 654
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_27

    .line 655
    :cond_25
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 652
    :goto_27
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2b
    nop

    .line 656
    .local v4, "valueToSet":Ljava/lang/Object;
    move-object v5, p0

    .line 658
    .local v5, "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_2d
    :goto_2d
    sget-object v6, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v6, v5, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 659
    const/4 v1, 0x1

    .line 662
    if-eqz p1, :cond_3b

    .line 663
    invoke-virtual {v5}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 665
    :cond_3b
    invoke-static {v5}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 666
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v6, :cond_68

    .line 669
    move-object v6, v0

    check-cast v6, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v6, v6, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 670
    .local v6, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v6, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v7, :cond_5d

    .line 678
    move-object v7, v6

    check-cast v7, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 679
    .local v7, "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v0, v7, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 680
    if-nez v0, :cond_54

    const/4 v8, 0x1

    goto :goto_55

    :cond_54
    const/4 v8, 0x0

    :goto_55
    instance-of v9, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_5c

    .line 681
    move-object v5, v7

    .line 682
    goto :goto_2d

    .line 684
    .end local v7    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_5c
    goto :goto_60

    .line 686
    :cond_5d
    invoke-interface {v6, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 688
    .end local v6    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_60
    goto :goto_68

    .line 692
    :cond_61
    iget-object v0, v5, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 693
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_2d

    .line 697
    nop

    .line 701
    .end local v4    # "valueToSet":Ljava/lang/Object;
    .end local v5    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_68
    :goto_68
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 8
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_65

    .line 545
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 546
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 547
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 549
    :cond_1a
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 550
    .local v3, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v3, v4, :cond_5a

    .line 551
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v4}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 553
    .local v4, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_25
    invoke-virtual {v4, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 554
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 557
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 565
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 566
    if-eqz v0, :cond_3f

    const/4 v5, 0x1

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    :goto_40
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_30

    .line 567
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 560
    :cond_4b
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 561
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 571
    :cond_54
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 572
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v3, v5, :cond_25

    .line 577
    .end local v4    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_5a
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 543
    .end local v0    # "localValue":Ljava/lang/Object;
    .end local v3    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_65
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 32
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 433
    .local v4, "timeoutNanos":J
    move-wide v6, v4

    .line 434
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_20d

    .line 437
    iget-object v8, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 438
    .local v8, "localValue":Ljava/lang/Object;
    const/4 v10, 0x1

    if-eqz v8, :cond_18

    const/4 v11, 0x1

    goto :goto_19

    :cond_18
    const/4 v11, 0x0

    :goto_19
    instance-of v12, v8, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v12, v10

    and-int/2addr v11, v12

    if-eqz v11, :cond_24

    .line 439
    invoke-direct {v0, v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 442
    :cond_24
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_30

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    goto :goto_31

    :cond_30
    move-wide v13, v11

    .line 444
    .local v13, "endNanos":J
    :goto_31
    const-wide/16 v15, 0x3e8

    cmp-long v17, v6, v15

    if-ltz v17, :cond_99

    .line 445
    iget-object v9, v0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 446
    .local v9, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v11, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v9, v11, :cond_8e

    .line 447
    new-instance v11, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v11}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 449
    .local v11, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :goto_42
    invoke-virtual {v11, v9}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 450
    sget-object v12, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v12, v0, v9, v11}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v12

    if-eqz v12, :cond_84

    .line 452
    :goto_4d
    invoke-static {v0, v6, v7}, Lcom/google/common/util/concurrent/OverflowAvoidingLockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 454
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-nez v12, :cond_7b

    .line 461
    iget-object v8, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 462
    if-eqz v8, :cond_5c

    const/4 v12, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v12, 0x0

    :goto_5d
    instance-of v15, v8, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v15, v10

    and-int/2addr v12, v15

    if-eqz v12, :cond_68

    .line 463
    invoke-direct {v0, v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 467
    :cond_68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long v6, v13, v15

    .line 468
    const-wide/16 v15, 0x3e8

    cmp-long v12, v6, v15

    if-gez v12, :cond_78

    .line 470
    invoke-direct {v0, v11}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 471
    goto :goto_99

    .line 468
    :cond_78
    const-wide/16 v15, 0x3e8

    goto :goto_4d

    .line 455
    :cond_7b
    invoke-direct {v0, v11}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 456
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 475
    :cond_84
    iget-object v9, v0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 476
    sget-object v12, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v9, v12, :cond_8b

    goto :goto_8e

    :cond_8b
    const-wide/16 v15, 0x3e8

    goto :goto_42

    .line 481
    .end local v11    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_8e
    :goto_8e
    iget-object v10, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 485
    .end local v9    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_99
    :goto_99
    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-lez v9, :cond_c4

    .line 486
    iget-object v8, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 487
    if-eqz v8, :cond_a5

    const/4 v9, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v9, 0x0

    :goto_a6
    instance-of v11, v8, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v11, v10

    and-int/2addr v9, v11

    if-eqz v9, :cond_b1

    .line 488
    invoke-direct {v0, v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 490
    :cond_b1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-nez v9, :cond_be

    .line 493
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v6, v13, v11

    goto :goto_99

    .line 491
    :cond_be
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 496
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v9

    .line 497
    .local v9, "futureToString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 498
    .local v11, "unitString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Waited "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 500
    .local v10, "message":Ljava/lang/String;
    const-wide/16 v20, 0x3e8

    add-long v22, v6, v20

    const-wide/16 v18, 0x0

    cmp-long v12, v22, v18

    if-gez v12, :cond_1c3

    .line 502
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v0, " (plus "

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .end local v10    # "message":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    neg-long v1, v6

    .line 504
    .local v1, "overWaitNanos":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v22, v4

    .end local v4    # "timeoutNanos":J
    .local v22, "timeoutNanos":J
    invoke-virtual {v3, v1, v2, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 505
    .local v4, "overWaitUnits":J
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v24

    move-wide/from16 v26, v6

    .end local v6    # "remainingNanos":J
    .local v26, "remainingNanos":J
    sub-long v6, v1, v24

    .line 506
    .local v6, "overWaitLeftoverNanos":J
    const-wide/16 v18, 0x0

    cmp-long v10, v4, v18

    if-eqz v10, :cond_138

    const-wide/16 v20, 0x3e8

    cmp-long v10, v6, v20

    if-lez v10, :cond_135

    goto :goto_138

    :cond_135
    const/16 v16, 0x0

    goto :goto_13a

    :cond_138
    :goto_138
    const/16 v16, 0x1

    :goto_13a
    move/from16 v10, v16

    .line 508
    .local v10, "shouldShowExtraNanos":Z
    const-wide/16 v16, 0x0

    cmp-long v12, v4, v16

    if-lez v12, :cond_18c

    .line 509
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x15

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v18, v0

    .end local v0    # "message":Ljava/lang/String;
    .local v18, "message":Ljava/lang/String;
    add-int v0, v16, v17

    move-wide/from16 v16, v1

    .end local v1    # "overWaitNanos":J
    .local v16, "overWaitNanos":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .end local v18    # "message":Ljava/lang/String;
    .restart local v0    # "message":Ljava/lang/String;
    if-eqz v10, :cond_183

    .line 511
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    :cond_183
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_190

    .line 508
    .end local v16    # "overWaitNanos":J
    .restart local v1    # "overWaitNanos":J
    :cond_18c
    move-object/from16 v18, v0

    move-wide/from16 v16, v1

    .line 515
    .end local v1    # "overWaitNanos":J
    .restart local v16    # "overWaitNanos":J
    :goto_190
    if-eqz v10, :cond_1b7

    .line 516
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_1b7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_1c7

    .line 500
    .end local v0    # "message":Ljava/lang/String;
    .end local v16    # "overWaitNanos":J
    .end local v22    # "timeoutNanos":J
    .end local v26    # "remainingNanos":J
    .local v4, "timeoutNanos":J
    .local v6, "remainingNanos":J
    .local v10, "message":Ljava/lang/String;
    :cond_1c3
    move-wide/from16 v22, v4

    move-wide/from16 v26, v6

    .line 524
    .end local v4    # "timeoutNanos":J
    .end local v6    # "remainingNanos":J
    .restart local v22    # "timeoutNanos":J
    .restart local v26    # "remainingNanos":J
    :goto_1c7
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 525
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1dd
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    .end local v8    # "localValue":Ljava/lang/Object;
    .end local v9    # "futureToString":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "unitString":Ljava/lang/String;
    .end local v13    # "endNanos":J
    .end local v22    # "timeoutNanos":J
    .end local v26    # "remainingNanos":J
    .restart local v4    # "timeoutNanos":J
    .restart local v6    # "remainingNanos":J
    :cond_20d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected interruptTask()V
    .registers 1

    .line 715
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public isCancelled()Z
    .registers 3

    .line 610
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 611
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return v1
.end method

.method public isDone()Z
    .registers 5

    .line 604
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 605
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    instance-of v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v1, v3

    and-int/2addr v1, v2

    return v1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1104
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 1105
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1107
    :cond_13
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1176
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_29

    .line 1177
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1178
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "remaining delay=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    return-object v0

    .line 1181
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 781
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_5

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 782
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_6
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 783
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 784
    const/4 v1, 0x1

    return v1

    .line 786
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 806
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 807
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 808
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 809
    const/4 v1, 0x1

    return v1

    .line 811
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 845
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 847
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_47

    .line 848
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    .line 849
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 850
    .local v2, "value":Ljava/lang/Object;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 851
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 852
    return v3

    .line 854
    :cond_20
    return v1

    .line 856
    .end local v2    # "value":Ljava/lang/Object;
    :cond_21
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v2, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 857
    .local v2, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<TV;>;"
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 861
    :try_start_2e
    sget-object v1, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-interface {p1, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    .line 874
    goto :goto_44

    .line 862
    :catchall_34
    move-exception v1

    .line 868
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_35
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v4, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    .line 871
    .local v4, "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_3f

    .line 869
    .end local v4    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catchall_3b
    move-exception v4

    .line 870
    .local v4, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    move-object v4, v5

    .line 873
    .local v4, "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :goto_3f
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 875
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :goto_44
    return v3

    .line 877
    :cond_45
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 881
    .end local v2    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<TV;>;"
    :cond_47
    instance-of v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v2, :cond_53

    .line 883
    move-object v2, v0

    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v2, v2, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 885
    :cond_53
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1150
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1151
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 1154
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :goto_2c
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1158
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1159
    :cond_4f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1160
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_5c

    .line 1162
    :cond_59
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addPendingString(Ljava/lang/StringBuilder;)V

    .line 1164
    :goto_5c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final tryInternalFastPathGetFailure()Ljava/lang/Throwable;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1090
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v0, :cond_10

    .line 1091
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1092
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_10

    .line 1093
    move-object v1, v0

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-object v1

    .line 1096
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .line 724
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 725
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
