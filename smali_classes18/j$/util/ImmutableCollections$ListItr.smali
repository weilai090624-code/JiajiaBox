.class final Lj$/util/ImmutableCollections$ListItr;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private final isListIterator:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    .line 220
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 222
    iput p2, p0, Lj$/util/ImmutableCollections$ListItr;->size:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    .line 224
    iput-boolean v0, p0, Lj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    .line 225
    return-void
.end method

.method constructor <init>(Ljava/util/List;II)V
    .registers 5
    .param p2, "size"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    .line 229
    iput p2, p0, Lj$/util/ImmutableCollections$ListItr;->size:I

    .line 230
    iput p3, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    .line 232
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 235
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    iget v1, p0, Lj$/util/ImmutableCollections$ListItr;->size:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 254
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Lj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_c

    .line 257
    iget v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 255
    :cond_c
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    :try_start_0
    iget v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    .line 241
    .local v0, "i":I
    iget-object v1, p0, Lj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "next":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    .line 243
    return-object v1

    .line 244
    .end local v0    # "i":I
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :catch_d
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .registers 2

    .line 275
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Lj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_7

    .line 278
    iget v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    return v0

    .line 276
    :cond_7
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Lj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_18

    .line 265
    :try_start_4
    iget v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 266
    .local v0, "i":I
    iget-object v1, p0, Lj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 267
    .local v1, "previous":Ljava/lang/Object;, "TE;"
    iput v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_10} :catch_11

    .line 268
    return-object v1

    .line 269
    .end local v0    # "i":I
    .end local v1    # "previous":Ljava/lang/Object;, "TE;"
    :catch_11
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 262
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_18
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 282
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    iget-boolean v0, p0, Lj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_9

    .line 285
    iget v0, p0, Lj$/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 283
    :cond_9
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 250
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Lj$/util/ImmutableCollections$ListItr;, "Ljava/util/ImmutableCollections$ListItr<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
