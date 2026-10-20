.class public final Lcom/google/zxing/client/result/URLTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/URLTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 5
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 32
    invoke-static {p1}, Lcom/google/zxing/client/result/URLTOResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    .local v1, "rawText":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "urlto:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "URLTO:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    return-object v2

    .line 36
    :cond_0
    const/16 v0, 0x3a

    const/4 v3, 0x6

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, 0x0

    .line 37
    .local v4, "titleEnd":I
    move v4, v0

    if-gez v0, :cond_1

    .line 38
    return-object v2

    .line 40
    :cond_1
    if-gt v4, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 41
    .local v0, "title":Ljava/lang/String;
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "uri":Ljava/lang/String;
    new-instance v3, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v3, v2, v0}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
