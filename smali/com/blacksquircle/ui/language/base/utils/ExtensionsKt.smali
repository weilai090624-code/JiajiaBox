.class public final Lcom/blacksquircle/ui/language/base/utils/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0004\"\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "endsWith",
        "",
        "",
        "suffixes",
        "",
        "ignoreCase",
        "(Ljava/lang/String;[Ljava/lang/String;Z)Z",
        "language-base"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final endsWith(Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "$this$endsWith"    # Ljava/lang/String;
    .param p1, "suffixes"    # [Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suffixes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 21
    .local v3, "suffix":Ljava/lang/String;
    invoke-static {p0, v3, p2}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    const/4 v0, 0x1

    return v0

    .line 20
    .end local v3    # "suffix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    return v1
.end method

.method public static synthetic endsWith$default(Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 19
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/blacksquircle/ui/language/base/utils/ExtensionsKt;->endsWith(Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
