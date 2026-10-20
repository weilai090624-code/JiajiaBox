.class public final Lmoe/matsuri/nb4a/Protocols$Deduplication;
.super Ljava/lang/Object;
.source "Protocols.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/Protocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deduplication"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\u0005J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/Protocols$Deduplication;",
        "",
        "bean",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "type",
        "",
        "<init>",
        "(Lio/nekohasekai/sagernet/fmt/AbstractBean;Ljava/lang/String;)V",
        "getBean",
        "()Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "getType",
        "()Ljava/lang/String;",
        "hash",
        "hashCode",
        "",
        "equals",
        "",
        "other",
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
.field private final bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/fmt/AbstractBean;Ljava/lang/String;)V
    .locals 1
    .param p1, "bean"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .param p2, "type"    # Ljava/lang/String;

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

    iput-object p2, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->type:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 32
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_2
    const-string v0, "null cannot be cast to non-null type moe.matsuri.nb4a.Protocols.Deduplication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/Protocols$Deduplication;

    .line 37
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/Protocols$Deduplication;->hash()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lmoe/matsuri/nb4a/Protocols$Deduplication;

    invoke-virtual {v1}, Lmoe/matsuri/nb4a/Protocols$Deduplication;->hash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final hash()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

    instance-of v0, v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

    check-cast v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    iget-object v0, v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->config:Ljava/lang/String;

    const-string v1, "config"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

    iget-object v1, v1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->bean:Lio/nekohasekai/sagernet/fmt/AbstractBean;

    iget-object v1, v1, Lio/nekohasekai/sagernet/fmt/AbstractBean;->serverPort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/Protocols$Deduplication;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 28
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/Protocols$Deduplication;->hash()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
