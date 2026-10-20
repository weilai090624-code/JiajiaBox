.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 19
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 43
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "WIFI:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 44
    return-object v3

    .line 46
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .end local v2    # "rawText":Ljava/lang/String;
    .local v0, "rawText":Ljava/lang/String;
    const-string v2, "S:"

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    move-object v6, v1

    .line 48
    .local v6, "ssid":Ljava/lang/String;
    move-object v8, v2

    .end local v6    # "ssid":Ljava/lang/String;
    .local v8, "ssid":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    const-string v2, "P:"

    invoke-static {v2, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "pass":Ljava/lang/String;
    const-string v3, "T:"

    invoke-static {v3, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v1, "type":Ljava/lang/String;
    move-object v1, v3

    if-nez v3, :cond_2

    .line 54
    const-string v1, "nopass"

    .line 56
    :cond_2
    const-string v3, "H:"

    invoke-static {v3, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 57
    .local v15, "hidden":Z
    const-string v6, "I:"

    invoke-static {v6, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v16

    .line 58
    .local v16, "identity":Ljava/lang/String;
    const-string v6, "A:"

    invoke-static {v6, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v17

    .line 59
    .local v17, "anonymousIdentity":Ljava/lang/String;
    const-string v6, "E:"

    invoke-static {v6, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v18

    .line 60
    .local v18, "eapMethod":Ljava/lang/String;
    invoke-static {v3, v0, v4, v5}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "phase2Method":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/client/result/WifiParsedResult;

    move-object v6, v4

    move-object v7, v1

    move-object v9, v2

    move v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object v14, v3

    invoke-direct/range {v6 .. v14}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 49
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "pass":Ljava/lang/String;
    .end local v3    # "phase2Method":Ljava/lang/String;
    .end local v15    # "hidden":Z
    .end local v16    # "identity":Ljava/lang/String;
    .end local v17    # "anonymousIdentity":Ljava/lang/String;
    .end local v18    # "eapMethod":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v3
.end method
