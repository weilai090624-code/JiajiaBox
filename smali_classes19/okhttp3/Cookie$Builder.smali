.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,630:1\n1#2:631\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/Cookie$Builder;",
        "",
        "()V",
        "cookie",
        "Lokhttp3/Cookie;",
        "(Lokhttp3/Cookie;)V",
        "domain",
        "",
        "expiresAt",
        "",
        "hostOnly",
        "",
        "httpOnly",
        "name",
        "path",
        "persistent",
        "secure",
        "value",
        "build",
        "hostOnlyDomain",
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


# instance fields
.field private domain:Ljava/lang/String;

.field private expiresAt:J

.field private hostOnly:Z

.field private httpOnly:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private persistent:Z

.field private secure:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-wide v0, 0xe677d21fdbffL

    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 261
    const-string v0, "/"

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public constructor <init>(Lokhttp3/Cookie;)V
    .locals 2
    .param p1, "cookie"    # Lokhttp3/Cookie;

    const-string v0, "cookie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-wide v0, 0xe677d21fdbffL

    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 261
    const-string v0, "/"

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 273
    invoke-virtual {p1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lokhttp3/Cookie;->secure()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 276
    invoke-virtual {p1}, Lokhttp3/Cookie;->httpOnly()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 277
    invoke-virtual {p1}, Lokhttp3/Cookie;->persistent()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 278
    invoke-virtual {p1}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 279
    return-void
.end method

.method private final domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "hostOnly"    # Z

    .line 311
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$domain_u24lambda_u2d5":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 312
    .local v1, "$i$a$-apply-Cookie$Builder$domain$1":I
    invoke-static {p1}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 314
    .local v2, "canonicalDomain":Ljava/lang/String;
    iput-object v2, v0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 315
    iput-boolean p2, v0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 316
    nop

    .line 311
    .end local v0    # "$this$domain_u24lambda_u2d5":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$domain$1":I
    .end local v2    # "canonicalDomain":Ljava/lang/String;
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 316
    return-object v0

    .line 313
    .restart local v0    # "$this$domain_u24lambda_u2d5":Lokhttp3/Cookie$Builder;
    .restart local v1    # "$i$a$-apply-Cookie$Builder$domain$1":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected domain: "

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final build()Lokhttp3/Cookie;
    .locals 13

    .line 332
    new-instance v12, Lokhttp3/Cookie;

    .line 333
    iget-object v1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 334
    iget-object v2, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 335
    iget-wide v3, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 336
    iget-object v5, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 337
    iget-object v6, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 338
    iget-boolean v7, p0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 339
    iget-boolean v8, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 340
    iget-boolean v9, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 341
    iget-boolean v10, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 332
    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final expiresAt(J)Lokhttp3/Cookie$Builder;
    .locals 7
    .param p1, "expiresAt"    # J

    .line 291
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$expiresAt_u24lambda_u2d4":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 292
    .local v1, "$i$a$-apply-Cookie$Builder$expiresAt$1":I
    move-wide v2, p1

    .line 293
    .local v2, "expiresAt":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const-wide/high16 v2, -0x8000000000000000L

    .line 294
    :cond_0
    const-wide v4, 0xe677d21fdbffL

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-wide v2, 0xe677d21fdbffL

    .line 295
    :cond_1
    iput-wide v2, v0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 296
    const/4 v4, 0x1

    iput-boolean v4, v0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 297
    nop

    .line 291
    .end local v0    # "$this$expiresAt_u24lambda_u2d4":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$expiresAt$1":I
    .end local v2    # "expiresAt":J
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 297
    return-object v0
.end method

.method public final hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final httpOnly()Lokhttp3/Cookie$Builder;
    .locals 3

    .line 327
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$httpOnly_u24lambda_u2d9":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 328
    .local v1, "$i$a$-apply-Cookie$Builder$httpOnly$1":I
    const/4 v2, 0x1

    iput-boolean v2, v0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 329
    nop

    .line 327
    .end local v0    # "$this$httpOnly_u24lambda_u2d9":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$httpOnly$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 329
    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$name_u24lambda_u2d1":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$a$-apply-Cookie$Builder$name$1":I
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iput-object p1, v0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 284
    nop

    .line 281
    .end local v0    # "$this$name_u24lambda_u2d1":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$name$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 284
    return-object v0

    .line 631
    .restart local v0    # "$this$name_u24lambda_u2d1":Lokhttp3/Cookie$Builder;
    .restart local v1    # "$i$a$-apply-Cookie$Builder$name$1":I
    :cond_0
    const/4 v2, 0x0

    .line 282
    .local v2, "$i$a$-require-Cookie$Builder$name$1$1":I
    nop

    .end local v2    # "$i$a$-require-Cookie$Builder$name$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is not trimmed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$path_u24lambda_u2d7":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 319
    .local v1, "$i$a$-apply-Cookie$Builder$path$1":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "/"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iput-object p1, v0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 321
    nop

    .line 318
    .end local v0    # "$this$path_u24lambda_u2d7":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$path$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 321
    return-object v0

    .line 631
    .restart local v0    # "$this$path_u24lambda_u2d7":Lokhttp3/Cookie$Builder;
    .restart local v1    # "$i$a$-apply-Cookie$Builder$path$1":I
    :cond_0
    const/4 v2, 0x0

    .line 319
    .local v2, "$i$a$-require-Cookie$Builder$path$1$1":I
    nop

    .end local v2    # "$i$a$-require-Cookie$Builder$path$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "path must start with \'/\'"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final secure()Lokhttp3/Cookie$Builder;
    .locals 3

    .line 323
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$secure_u24lambda_u2d8":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$a$-apply-Cookie$Builder$secure$1":I
    const/4 v2, 0x1

    iput-boolean v2, v0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 325
    nop

    .line 323
    .end local v0    # "$this$secure_u24lambda_u2d8":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$secure$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 325
    return-object v0
.end method

.method public final value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .local v0, "$this$value_u24lambda_u2d3":Lokhttp3/Cookie$Builder;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$a$-apply-Cookie$Builder$value$1":I
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iput-object p1, v0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 289
    nop

    .line 286
    .end local v0    # "$this$value_u24lambda_u2d3":Lokhttp3/Cookie$Builder;
    .end local v1    # "$i$a$-apply-Cookie$Builder$value$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/Cookie$Builder;

    .line 289
    return-object v0

    .line 631
    .restart local v0    # "$this$value_u24lambda_u2d3":Lokhttp3/Cookie$Builder;
    .restart local v1    # "$i$a$-apply-Cookie$Builder$value$1":I
    :cond_0
    const/4 v2, 0x0

    .line 287
    .local v2, "$i$a$-require-Cookie$Builder$value$1$1":I
    nop

    .end local v2    # "$i$a$-require-Cookie$Builder$value$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "value is not trimmed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
