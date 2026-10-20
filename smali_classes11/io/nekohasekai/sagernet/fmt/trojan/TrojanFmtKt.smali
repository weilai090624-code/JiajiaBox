.class public final Lio/nekohasekai/sagernet/fmt/trojan/TrojanFmtKt;
.super Ljava/lang/Object;
.source "TrojanFmt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrojanFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrojanFmt.kt\nio/nekohasekai/sagernet/fmt/trojan/TrojanFmtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "parseTrojan",
        "Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;",
        "server",
        "",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final parseTrojan(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .locals 7
    .param p0, "server"    # Ljava/lang/String;

    const-string v0, "server"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "trojan://"

    const-string v3, "https://"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    .local v0, "link":Lokhttp3/HttpUrl;
    new-instance v1, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;-><init>()V

    move-object v2, v1

    .local v2, "$this$parseTrojan_u24lambda_u242":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    const/4 v3, 0x0

    .line 12
    .local v3, "$i$a$-apply-TrojanFmtKt$parseTrojan$1":I
    move-object v4, v2

    check-cast v4, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v4, v0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->parseDuckSoft(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Lokhttp3/HttpUrl;)V

    .line 14
    nop

    .line 13
    const-string v4, "allowInsecure"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    if-eqz v4, :cond_1

    .line 13
    nop

    .line 14
    nop

    .line 20
    .local v4, "$this$parseTrojan_u24lambda_u242_u24lambda_u240":Ljava/lang/String;
    const/4 v5, 0x0

    .line 14
    .local v5, "$i$a$-apply-TrojanFmtKt$parseTrojan$1$1":I
    const-string v6, "1"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "true"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v2, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->allowInsecure:Ljava/lang/Boolean;

    .line 15
    .end local v4    # "$this$parseTrojan_u24lambda_u242_u24lambda_u240":Ljava/lang/String;
    .end local v5    # "$i$a$-apply-TrojanFmtKt$parseTrojan$1$1":I
    :cond_1
    const-string v4, "peer"

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 20
    .local v4, "$this$parseTrojan_u24lambda_u242_u24lambda_u241":Ljava/lang/String;
    const/4 v5, 0x0

    .line 15
    .local v5, "$i$a$-apply-TrojanFmtKt$parseTrojan$1$2":I
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iput-object v4, v2, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->sni:Ljava/lang/String;

    .line 16
    .end local v4    # "$this$parseTrojan_u24lambda_u242_u24lambda_u241":Ljava/lang/String;
    .end local v5    # "$i$a$-apply-TrojanFmtKt$parseTrojan$1$2":I
    :cond_2
    nop

    .line 11
    .end local v2    # "$this$parseTrojan_u24lambda_u242":Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .end local v3    # "$i$a$-apply-TrojanFmtKt$parseTrojan$1":I
    return-object v1

    .line 8
    .end local v0    # "link":Lokhttp3/HttpUrl;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid trojan link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
