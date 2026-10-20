.class public final Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;
.super Ljava/lang/RuntimeException;
.source "Formats.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "link",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getLink",
        "()Ljava/lang/String;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final link:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/nekohasekai/sagernet/ktx/SubscriptionFoundException;->link:Ljava/lang/String;

    return-object v0
.end method
