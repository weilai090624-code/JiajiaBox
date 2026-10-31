.class public Landroidx/constraintlayout/core/parser/CLElement;
.super Ljava/lang/Object;
.source "CLElement.java"


# static fields
.field protected static BASE_INDENT:I

.field protected static MAX_LINE:I


# instance fields
.field protected end:J

.field private line:I

.field protected mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

.field private final mContent:[C

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const/16 v0, 0x50

    sput v0, Landroidx/constraintlayout/core/parser/CLElement;->MAX_LINE:I

    .line 27
    const/4 v0, 0x2

    sput v0, Landroidx/constraintlayout/core/parser/CLElement;->BASE_INDENT:I

    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "content"    # [C

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    .line 22
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    .line 30
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    .line 31
    return-void
.end method


# virtual methods
.method protected addIndent(Ljava/lang/StringBuilder;I)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_b

    .line 87
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method public content()Ljava/lang/String;
    .registers 7

    .line 115
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 116
    .local v0, "content":Ljava/lang/String;
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_28

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1b

    goto :goto_28

    .line 119
    :cond_1b
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v2, v1

    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    long-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    :cond_28
    :goto_28
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v2, v1

    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContainer()Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    return-object v0
.end method

.method protected getDebugName()Ljava/lang/String;
    .registers 3

    .line 108
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_1c
    const-string v0, ""

    return-object v0
.end method

.method public getEnd()J
    .registers 3

    .line 69
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    return-wide v0
.end method

.method public getFloat()F
    .registers 2

    .line 154
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v0, :cond_c

    .line 155
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    move-result v0

    return v0

    .line 157
    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getInt()I
    .registers 2

    .line 147
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v0, :cond_c

    .line 148
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLNumber;->getInt()I

    move-result v0

    return v0

    .line 150
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getLine()I
    .registers 2

    .line 47
    iget v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->line:I

    return v0
.end method

.method public getStart()J
    .registers 3

    .line 60
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    return-wide v0
.end method

.method protected getStrClass()Ljava/lang/String;
    .registers 3

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "myClass":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDone()Z
    .registers 6

    .line 123
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isStarted()Z
    .registers 6

    .line 135
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public notStarted()Z
    .registers 6

    .line 34
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V
    .registers 2
    .param p1, "element"    # Landroidx/constraintlayout/core/parser/CLContainer;

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    .line 128
    return-void
.end method

.method public setEnd(J)V
    .registers 8
    .param p1, "end"    # J

    .line 73
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    .line 74
    return-void

    .line 76
    :cond_c
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    .line 77
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_38
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz v0, :cond_41

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContainer:Landroidx/constraintlayout/core/parser/CLContainer;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->add(Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 83
    :cond_41
    return-void
.end method

.method public setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .line 38
    iput p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->line:I

    .line 39
    return-void
.end method

.method public setStart(J)V
    .registers 3
    .param p1, "start"    # J

    .line 51
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    .line 52
    return-void
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # I
    .param p2, "forceIndent"    # I

    .line 143
    const-string v0, ""

    return-object v0
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 2

    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 93
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_61

    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    goto :goto_61

    .line 96
    :cond_14
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->mContent:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 97
    .local v0, "content":Ljava/lang/String;
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v2, v1

    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    long-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "content":Ljava/lang/String;
    :cond_61
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (INVALID, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/CLElement;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
