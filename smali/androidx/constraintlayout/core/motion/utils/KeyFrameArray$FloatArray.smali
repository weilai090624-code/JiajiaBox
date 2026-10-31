.class Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;
.super Ljava/lang/Object;
.source "KeyFrameArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyFrameArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatArray"
.end annotation


# static fields
.field private static final EMPTY:I = 0x3e7


# instance fields
.field count:I

.field keys:[I

.field values:[[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/16 v0, 0x65

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    .line 154
    new-array v0, v0, [[F

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    .line 159
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->clear()V

    .line 160
    return-void
.end method


# virtual methods
.method public append(I[F)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "value"    # [F

    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    .line 191
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->remove(I)V

    .line 193
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    aput-object p2, v0, p1

    .line 194
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    aput p1, v0, v1

    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 196
    return-void
.end method

.method public clear()V
    .registers 3

    .line 163
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    .line 166
    return-void
.end method

.method public dump()V
    .registers 5

    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "K: ["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    if-ge v0, v1, :cond_58

    .line 172
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_3c

    const-string v3, ""

    goto :goto_3e

    :cond_3c
    const-string v3, ", "

    :goto_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->valueAt(I)[F

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 174
    .end local v0    # "i":I
    :cond_58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "i"    # I

    .line 186
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(I)V
    .registers 6
    .param p1, "position"    # I

    .line 199
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 200
    const/4 v0, 0x0

    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    if-ge v1, v2, :cond_28

    .line 201
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_19

    .line 202
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    const/16 v3, 0x3e7

    aput v3, v2, v1

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_19
    if-eq v1, v0, :cond_23

    .line 206
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    aget v3, v3, v0

    aput v3, v2, v1

    .line 208
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 211
    .end local v0    # "j":I
    .end local v1    # "i":I
    :cond_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    .line 212
    return-void
.end method

.method public size()I
    .registers 2

    .line 178
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->count:I

    return v0
.end method

.method public valueAt(I)[F
    .registers 4
    .param p1, "i"    # I

    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->values:[[F

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->keys:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
