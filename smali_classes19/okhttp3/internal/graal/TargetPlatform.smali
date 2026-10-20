.class public final Lokhttp3/internal/graal/TargetPlatform;
.super Ljava/lang/Object;
.source "svm.kt"


# annotations
.annotation runtime Lcom/oracle/svm/core/annotate/TargetClass;
    value = Lokhttp3/internal/platform/Platform$Companion;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/graal/TargetPlatform;",
        "",
        "()V",
        "findPlatform",
        "Lokhttp3/internal/platform/Platform;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public final findPlatform()Lokhttp3/internal/platform/Platform;
    .locals 1
    .annotation runtime Lcom/oracle/svm/core/annotate/Substitute;
    .end annotation

    .line 64
    sget-object v0, Lokhttp3/internal/platform/Jdk9Platform;->Companion:Lokhttp3/internal/platform/Jdk9Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Jdk9Platform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lokhttp3/internal/platform/Platform;

    return-object v0
.end method
