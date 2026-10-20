.class public final Lcom/blacksquircle/ui/language/json/parser/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.kt"

# interfaces
.implements Lcom/blacksquircle/ui/language/base/parser/LanguageParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/json/parser/JsonParser;",
        "Lcom/blacksquircle/ui/language/base/parser/LanguageParser;",
        "()V",
        "execute",
        "Lcom/blacksquircle/ui/language/base/model/ParseResult;",
        "structure",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;

.field private static jsonParser:Lcom/blacksquircle/ui/language/json/parser/JsonParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/parser/JsonParser;->Companion:Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/blacksquircle/ui/language/json/parser/JsonParser;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJsonParser$cp()Lcom/blacksquircle/ui/language/json/parser/JsonParser;
    .locals 1

    .line 23
    sget-object v0, Lcom/blacksquircle/ui/language/json/parser/JsonParser;->jsonParser:Lcom/blacksquircle/ui/language/json/parser/JsonParser;

    return-object v0
.end method

.method public static final synthetic access$setJsonParser$cp(Lcom/blacksquircle/ui/language/json/parser/JsonParser;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/blacksquircle/ui/language/json/parser/JsonParser;

    .line 23
    sput-object p0, Lcom/blacksquircle/ui/language/json/parser/JsonParser;->jsonParser:Lcom/blacksquircle/ui/language/json/parser/JsonParser;

    return-void
.end method


# virtual methods
.method public execute(Lcom/blacksquircle/ui/language/base/model/TextStructure;)Lcom/blacksquircle/ui/language/base/model/ParseResult;
    .locals 3
    .param p1, "structure"    # Lcom/blacksquircle/ui/language/base/model/TextStructure;

    const-string/jumbo v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
