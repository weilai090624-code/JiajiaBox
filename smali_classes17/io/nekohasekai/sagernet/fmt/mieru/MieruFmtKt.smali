.class public final Lio/nekohasekai/sagernet/fmt/mieru/MieruFmtKt;
.super Ljava/lang/Object;
.source "MieruFmt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "buildMieruConfig",
        "",
        "Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;",
        "port",
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
.method public static final buildMieruConfig(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;I)Ljava/lang/String;
    .locals 17
    .param p0, "$this$buildMieruConfig"    # Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .param p1, "port"    # I

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildMieruConfig_u24lambda_u243":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 27
    .local v3, "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v4

    .local v5, "$this$buildMieruConfig_u24lambda_u243_u24lambda_u242":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 28
    .local v6, "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1$1":I
    const-string v7, "ipAddress"

    iget-object v8, v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->finalAddress:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v8, v7

    .local v8, "$this$buildMieruConfig_u24lambda_u243_u24lambda_u242_u24lambda_u241":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 30
    .local v9, "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1$1$1":I
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v10

    .local v11, "$this$buildMieruConfig_u24lambda_u243_u24lambda_u242_u24lambda_u241_u24lambda_u240":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 31
    .local v12, "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1$1$1$1":I
    const-string v13, "port"

    iget v14, v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->finalPort:I

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    const-string v13, "protocol"

    iget-object v14, v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->protocol:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    nop

    .line 30
    .end local v11    # "$this$buildMieruConfig_u24lambda_u243_u24lambda_u242_u24lambda_u241_u24lambda_u240":Lorg/json/JSONObject;
    .end local v12    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1$1$1$1":I
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 34
    nop

    .end local v8    # "$this$buildMieruConfig_u24lambda_u243_u24lambda_u242_u24lambda_u241":Lorg/json/JSONArray;
    .end local v9    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1$1$1":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    const-string v8, "portBindings"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    nop

    .line 27
    .end local v5    # "$this$buildMieruConfig_u24lambda_u243_u24lambda_u242":Lorg/json/JSONObject;
    .end local v6    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1$1":I
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    nop

    .line 26
    .end local v2    # "$this$buildMieruConfig_u24lambda_u243":Lorg/json/JSONArray;
    .end local v3    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$serverInfo$1":I
    nop

    .line 37
    .local v1, "serverInfo":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v2

    .local v3, "$this$buildMieruConfig_u24lambda_u247":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 38
    .local v4, "$i$a$-apply-MieruFmtKt$buildMieruConfig$1":I
    const-string v5, "activeProfile"

    const-string v6, "default"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v5, "socks5Port"

    move/from16 v7, p1

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v5, "loggingLevel"

    const-string v8, "INFO"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v8, v5

    .local v8, "$this$buildMieruConfig_u24lambda_u247_u24lambda_u246":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 43
    .local v9, "$i$a$-apply-MieruFmtKt$buildMieruConfig$1$1":I
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v10

    .local v11, "$this$buildMieruConfig_u24lambda_u247_u24lambda_u246_u24lambda_u245":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 44
    .local v12, "$i$a$-apply-MieruFmtKt$buildMieruConfig$1$1$1":I
    const-string v13, "profileName"

    invoke-virtual {v11, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v13, v6

    .local v13, "$this$buildMieruConfig_u24lambda_u247_u24lambda_u246_u24lambda_u245_u24lambda_u244":Lorg/json/JSONObject;
    const/4 v14, 0x0

    .line 46
    .local v14, "$i$a$-apply-MieruFmtKt$buildMieruConfig$1$1$1$1":I
    const-string v15, "name"

    move/from16 v16, v4

    .end local v4    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$1":I
    .local v16, "$i$a$-apply-MieruFmtKt$buildMieruConfig$1":I
    iget-object v4, v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->username:Ljava/lang/String;

    invoke-virtual {v13, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v4, "password"

    iget-object v15, v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->password:Ljava/lang/String;

    invoke-virtual {v13, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    nop

    .end local v13    # "$this$buildMieruConfig_u24lambda_u247_u24lambda_u246_u24lambda_u245_u24lambda_u244":Lorg/json/JSONObject;
    .end local v14    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$1$1$1$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    const-string v4, "user"

    invoke-virtual {v11, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v4, "servers"

    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v4, v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->mtu:Ljava/lang/Integer;

    const-string v6, "mtu"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v11, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    nop

    .line 43
    .end local v11    # "$this$buildMieruConfig_u24lambda_u247_u24lambda_u246_u24lambda_u245":Lorg/json/JSONObject;
    .end local v12    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$1$1$1":I
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    nop

    .end local v8    # "$this$buildMieruConfig_u24lambda_u247_u24lambda_u246":Lorg/json/JSONArray;
    .end local v9    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$1$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    const-string v4, "profiles"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    nop

    .line 37
    .end local v3    # "$this$buildMieruConfig_u24lambda_u247":Lorg/json/JSONObject;
    .end local v16    # "$i$a$-apply-MieruFmtKt$buildMieruConfig$1":I
    nop

    .line 53
    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->toStringPretty(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 37
    return-object v2
.end method
