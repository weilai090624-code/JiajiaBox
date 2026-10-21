.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;
.super Ljava/lang/Object;
.source "ExtensionEmbeddingBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/ExtensionEmbeddingBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0006J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0017\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "globalInstance",
        "Landroidx/window/embedding/ExtensionEmbeddingBackend;",
        "globalLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getInstance",
        "initAndVerifyEmbeddingExtension",
        "Landroidx/window/embedding/EmbeddingInterfaceCompat;",
        "isExtensionVersionSupported",
        "",
        "extensionVersion",
        "",
        "(Ljava/lang/Integer;)Z",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>()V

    return-void
.end method

.method private final initAndVerifyEmbeddingExtension()Landroidx/window/embedding/EmbeddingInterfaceCompat;
    .registers 5

    .line 72
    const-string v0, "EmbeddingBackend"

    const/4 v1, 0x0

    .line 73
    .local v1, "impl":Landroidx/window/embedding/EmbeddingInterfaceCompat;
    nop

    .line 74
    :try_start_4
    sget-object v2, Landroidx/window/embedding/EmbeddingCompat;->Companion:Landroidx/window/embedding/EmbeddingCompat$Companion;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->getExtensionApiLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->isExtensionVersionSupported(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 75
    sget-object v2, Landroidx/window/embedding/EmbeddingCompat;->Companion:Landroidx/window/embedding/EmbeddingCompat$Companion;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 77
    new-instance v2, Landroidx/window/embedding/EmbeddingCompat;

    invoke-direct {v2}, Landroidx/window/embedding/EmbeddingCompat;-><init>()V

    check-cast v2, Landroidx/window/embedding/EmbeddingInterfaceCompat;
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_21

    move-object v1, v2

    goto :goto_2d

    .line 80
    :catchall_21
    move-exception v2

    .line 81
    .local v2, "t":Ljava/lang/Throwable;
    nop

    .line 82
    const-string v3, "Failed to load embedding extension: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    .line 86
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2d
    :goto_2d
    if-nez v1, :cond_35

    .line 87
    nop

    .line 88
    const-string v2, "No supported embedding extension found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_35
    return-object v1
.end method


# virtual methods
.method public final getInstance()Landroidx/window/embedding/ExtensionEmbeddingBackend;
    .registers 5

    .line 55
    # getter for: Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object v0

    if-nez v0, :cond_32

    .line 56
    # getter for: Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-withLock-ExtensionEmbeddingBackend$Companion$getInstance$1":I
    :try_start_10
    # getter for: Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object v2

    if-nez v2, :cond_26

    .line 58
    sget-object v2, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    invoke-direct {v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->initAndVerifyEmbeddingExtension()Landroidx/window/embedding/EmbeddingInterfaceCompat;

    move-result-object v2

    .line 59
    .local v2, "embeddingExtension":Landroidx/window/embedding/EmbeddingInterfaceCompat;
    sget-object v3, Landroidx/window/embedding/ExtensionEmbeddingBackend;->Companion:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    new-instance v3, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-direct {v3, v2}, Landroidx/window/embedding/ExtensionEmbeddingBackend;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V

    invoke-static {v3}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$setGlobalInstance$cp(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    .line 61
    .end local v2    # "embeddingExtension":Landroidx/window/embedding/EmbeddingInterfaceCompat;
    :cond_26
    nop

    .end local v1    # "$i$a$-withLock-ExtensionEmbeddingBackend$Companion$getInstance$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_32

    :catchall_2d
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 63
    :cond_32
    :goto_32
    # getter for: Landroidx/window/embedding/ExtensionEmbeddingBackend;->globalInstance:Landroidx/window/embedding/ExtensionEmbeddingBackend;
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->access$getGlobalInstance$cp()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final isExtensionVersionSupported(Ljava/lang/Integer;)Z
    .registers 5
    .param p1, "extensionVersion"    # Ljava/lang/Integer;

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 101
    return v0

    .line 104
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method
