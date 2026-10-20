.class public final Lcom/blacksquircle/ui/language/base/exception/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/exception/ParseException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "message",
        "",
        "lineNumber",
        "",
        "columnNumber",
        "(Ljava/lang/String;II)V",
        "getColumnNumber",
        "()I",
        "getLineNumber",
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
.field private final columnNumber:I

.field private final lineNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "columnNumber"    # I

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    iput p2, p0, Lcom/blacksquircle/ui/language/base/exception/ParseException;->lineNumber:I

    .line 22
    iput p3, p0, Lcom/blacksquircle/ui/language/base/exception/ParseException;->columnNumber:I

    .line 19
    return-void
.end method


# virtual methods
.method public final getColumnNumber()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/blacksquircle/ui/language/base/exception/ParseException;->columnNumber:I

    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/blacksquircle/ui/language/base/exception/ParseException;->lineNumber:I

    return v0
.end method
