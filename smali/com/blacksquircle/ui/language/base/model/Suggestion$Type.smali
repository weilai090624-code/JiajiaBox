.class public final enum Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
.super Ljava/lang/Enum;
.source "Suggestion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blacksquircle/ui/language/base/model/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "FIELD",
        "METHOD",
        "WORD",
        "NONE",
        "language-base"
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
.field private static final synthetic $VALUES:[Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum FIELD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum METHOD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum NONE:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum WORD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->FIELD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->METHOD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x0

    const-string/jumbo v2, "v"

    const-string v3, "FIELD"

    invoke-direct {v0, v3, v1, v2}, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->FIELD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    .line 29
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x1

    const-string v2, "m"

    const-string v3, "METHOD"

    invoke-direct {v0, v3, v1, v2}, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->METHOD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    .line 30
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x2

    const-string/jumbo v2, "w"

    const-string v3, "WORD"

    invoke-direct {v0, v3, v1, v2}, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    .line 31
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x3

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-static {}, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->$values()[Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->$VALUES:[Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 1

    const-class v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-object v0
.end method

.method public static values()[Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 1

    sget-object v0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->$VALUES:[Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->value:Ljava/lang/String;

    return-object v0
.end method
