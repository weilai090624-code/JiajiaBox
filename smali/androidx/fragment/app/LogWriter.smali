.class final Landroidx/fragment/app/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 31
    iput-object p1, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private flushBuilder()V
    .registers 4

    .line 55
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 56
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mTag:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 59
    :cond_1f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    .line 36
    return-void
.end method

.method public flush()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    .line 40
    return-void
.end method

.method public write([CII)V
    .registers 7
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_17

    .line 44
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 45
    .local v1, "c":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/LogWriter;->flushBuilder()V

    goto :goto_14

    .line 49
    :cond_f
    iget-object v2, p0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .end local v1    # "c":C
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
