.class public final Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;
.super Ljava/lang/Object;
.source "JsonProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;",
        "",
        "()V",
        "jsonProvider",
        "Lcom/blacksquircle/ui/language/json/provider/JsonProvider;",
        "getInstance",
        "language-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
    .registers 5

    .line 31
    # getter for: Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->jsonProvider:Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
    invoke-static {}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->access$getJsonProvider$cp()Lcom/blacksquircle/ui/language/json/provider/JsonProvider;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "it":Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
    const/4 v2, 0x0

    .line 32
    .local v2, "$i$a$-also-JsonProvider$Companion$getInstance$1":I
    sget-object v3, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->Companion:Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;

    invoke-static {v1}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->access$setJsonProvider$cp(Lcom/blacksquircle/ui/language/json/provider/JsonProvider;)V

    .line 33
    nop

    .line 31
    .end local v1    # "it":Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
    .end local v2    # "$i$a$-also-JsonProvider$Companion$getInstance$1":I
    nop

    :cond_15
    return-object v0
.end method
