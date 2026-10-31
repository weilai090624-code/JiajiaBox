.class public final Landroidx/emoji2/text/SpannableBuilder;
.super Landroid/text/SpannableStringBuilder;
.source "SpannableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    }
.end annotation


# instance fields
.field private final mWatcherClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mWatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 65
    .local p1, "watcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 66
    const-string/jumbo v0, "watcherClass cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .registers 4
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 75
    .local p1, "watcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 76
    const-string/jumbo v0, "watcherClass cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/CharSequence;II)V
    .registers 6
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            "II)V"
        }
    .end annotation

    .line 86
    .local p1, "watcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 87
    const-string/jumbo v0, "watcherClass cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    .line 89
    return-void
.end method

.method private blockWatchers()V
    .registers 3

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 278
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->blockCalls()V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/CharSequence;)Landroidx/emoji2/text/SpannableBuilder;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroidx/emoji2/text/SpannableBuilder;"
        }
    .end annotation

    .line 97
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/SpannableBuilder;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private fireWatchers()V
    .registers 6

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 297
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->length()I

    move-result v2

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v2, v3}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 248
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    .line 249
    .local v1, "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    iget-object v2, v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->mObject:Ljava/lang/Object;

    if-ne v2, p1, :cond_16

    .line 250
    return-object v1

    .line 247
    .end local v1    # "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private isWatcher(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 119
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isWatcher(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 108
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private unblockwatchers()V
    .registers 3

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 287
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->unblockCalls()V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    .end local v0    # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 4

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p1, "text"    # C

    .line 351
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 352
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 344
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 345
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 361
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 367
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 368
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public beginBatchEdit()V
    .registers 1

    .line 261
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->blockWatchers()V

    .line 262
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/SpannableBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 337
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 338
    return-object p0
.end method

.method public endBatchEdit()V
    .registers 1

    .line 269
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->unblockwatchers()V

    .line 270
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->fireWatchers()V

    .line 271
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 205
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    .line 207
    .local v0, "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    if-eqz v0, :cond_d

    .line 208
    move-object p1, v0

    .line 211
    .end local v0    # "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_d
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 219
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    .line 221
    .local v0, "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    if-eqz v0, :cond_d

    .line 222
    move-object p1, v0

    .line 225
    .end local v0    # "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_d
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 191
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    .line 193
    .local v0, "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    if-eqz v0, :cond_d

    .line 194
    move-object p1, v0

    .line 197
    .end local v0    # "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_d
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 8
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 151
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p3}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 152
    const-class v0, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-super {p0, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    .line 154
    .local v0, "spans":[Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    array-length v1, v0

    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 155
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_22

    .line 156
    aget-object v3, v0, v2

    iget-object v3, v3, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->mObject:Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 158
    .end local v2    # "i":I
    :cond_22
    return-object v1

    .line 160
    .end local v0    # "spans":[Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_23
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/SpannableBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/SpannableBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .line 323
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 324
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 5
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 331
    return-object p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 233
    if-eqz p3, :cond_8

    invoke-direct {p0, p3}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 234
    :cond_8
    const-class p3, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    .line 236
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/Object;

    .line 170
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    .line 172
    .local v0, "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    if-eqz v0, :cond_f

    .line 173
    move-object p1, v0

    goto :goto_f

    .line 176
    .end local v0    # "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_e
    const/4 v0, 0x0

    .line 179
    .restart local v0    # "watcher":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_f
    :goto_f
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 181
    if-eqz v0, :cond_19

    .line 182
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_19
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/SpannableBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6

    .line 49
    invoke-virtual/range {p0 .. p5}, Landroidx/emoji2/text/SpannableBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .line 304
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->blockWatchers()V

    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 306
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->unblockwatchers()V

    .line 307
    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .line 314
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->blockWatchers()V

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 316
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->unblockwatchers()V

    .line 317
    return-object p0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 135
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 136
    new-instance v0, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v0, "span":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    move-object p1, v0

    .line 140
    .end local v0    # "span":Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 125
    new-instance v0, Landroidx/emoji2/text/SpannableBuilder;

    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p0, p1, p2}, Landroidx/emoji2/text/SpannableBuilder;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;II)V

    return-object v0
.end method
