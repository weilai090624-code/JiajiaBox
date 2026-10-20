.class public final Lcom/blacksquircle/ui/language/base/model/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0019B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\u0008\u0010\u0018\u001a\u00020\u0007H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
        "",
        "type",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;",
        "text",
        "",
        "returnType",
        "",
        "(Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;)V",
        "getReturnType",
        "()Ljava/lang/String;",
        "getText",
        "()Ljava/lang/CharSequence;",
        "getType",
        "()Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Type",
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


# instance fields
.field private final returnType:Ljava/lang/String;

.field private final text:Ljava/lang/CharSequence;

.field private final type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;


# direct methods
.method public constructor <init>(Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "returnType"    # Ljava/lang/String;

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    .line 21
    iput-object p2, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    .line 22
    iput-object p3, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/blacksquircle/ui/language/base/model/Suggestion;Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/Object;)Lcom/blacksquircle/ui/language/base/model/Suggestion;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/blacksquircle/ui/language/base/model/Suggestion;->copy(Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/blacksquircle/ui/language/base/model/Suggestion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 1

    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-object v0
.end method

.method public final component2()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/blacksquircle/ui/language/base/model/Suggestion;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    invoke-direct {v0, p1, p2, p3}, Lcom/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    iget-object v3, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    iget-object v4, v1, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    iget-object v1, v1, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getReturnType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getType()Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->type:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->returnType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/Suggestion;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
