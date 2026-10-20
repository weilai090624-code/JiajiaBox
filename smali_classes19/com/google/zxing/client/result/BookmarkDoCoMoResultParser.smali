.class public final Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BookmarkDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 6
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 28
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 29
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "MEBKM:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 30
    return-object v3

    .line 32
    :cond_0
    const-string v0, "TITLE:"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "title":Ljava/lang/String;
    const-string v5, "URL:"

    invoke-static {v5, v2, v4}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 34
    .local v5, "rawUri":[Ljava/lang/String;
    move-object v5, v4

    if-nez v4, :cond_1

    .line 35
    return-object v3

    .line 37
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v5, v4

    .line 38
    .local v1, "uri":Ljava/lang/String;
    move-object v1, v4

    invoke-static {v4}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v3, v1, v0}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v3
.end method
