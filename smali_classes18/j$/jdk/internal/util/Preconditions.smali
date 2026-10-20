.class public Lj$/jdk/internal/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method static bridge synthetic -$$Nest$smoutOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lj$/jdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFromIndexSize(IIILjava/util/function/BiFunction;)I
    .locals 1
    .param p0, "fromIndex"    # I
    .param p1, "size"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(III",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 342
    .local p3, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;TX;>;"
    or-int v0, p2, p0

    or-int/2addr v0, p1

    if-ltz v0, :cond_0

    sub-int v0, p2, p0

    if-gt p1, v0, :cond_0

    .line 344
    return p0

    .line 343
    :cond_0
    invoke-static {p3, p0, p1, p2}, Lj$/jdk/internal/util/Preconditions;->outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static checkFromToIndex(IIILjava/util/function/BiFunction;)I
    .locals 1
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(III",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 294
    .local p3, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;TX;>;"
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 296
    return p0

    .line 295
    :cond_0
    invoke-static {p3, p0, p1, p2}, Lj$/jdk/internal/util/Preconditions;->outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static checkIndex(IILjava/util/function/BiFunction;)I
    .locals 1
    .param p0, "index"    # I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(II",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 247
    .local p2, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;TX;>;"
    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    .line 249
    return p0

    .line 248
    :cond_0
    invoke-static {p2, p0, p1}, Lj$/jdk/internal/util/Preconditions;->outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static varargs outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "checkKind"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 60
    .local p0, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    invoke-static {p2}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "largs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 62
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 63
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    if-nez v1, :cond_1

    .line 64
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v0}, Lj$/jdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 63
    :goto_1
    return-object v2
.end method

.method private static outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "size"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;III)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 82
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "checkFromIndexSize"

    invoke-static {p0, v0, v3}, Lj$/jdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;III)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 76
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "checkFromToIndex"

    invoke-static {p0, v0, v3}, Lj$/jdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;II)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 70
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;+Ljava/lang/RuntimeException;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "checkIndex"

    invoke-static {p0, v0, v2}, Lj$/jdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static outOfBoundsExceptionFormatter(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TX;>;)",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;TX;>;"
        }
    .end annotation

    .line 156
    .local p0, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TX;>;"
    new-instance v0, Lj$/jdk/internal/util/Preconditions$1;

    invoke-direct {v0, p0}, Lj$/jdk/internal/util/Preconditions$1;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p0, "checkKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 165
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 166
    const-string v1, "Range check failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    const-string v1, "Range check failed: %s"

    const/4 v2, 0x1

    if-nez p0, :cond_1

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_1
    if-nez p1, :cond_2

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_2
    const/4 v1, 0x0

    .line 174
    .local v1, "argSize":I
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "checkFromIndexSize"

    const-string v5, "checkFromToIndex"

    const-string v6, "checkIndex"

    const/4 v7, -0x1

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 180
    :pswitch_0
    const/4 v1, 0x3

    .line 181
    goto :goto_2

    .line 176
    :pswitch_1
    const/4 v1, 0x2

    .line 177
    nop

    .line 186
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_4

    const-string v3, ""

    goto :goto_3

    :cond_4
    move-object v3, p0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_5
    goto :goto_4

    :sswitch_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x2

    goto :goto_4

    :sswitch_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x0

    :goto_4
    const/4 v3, 0x3

    packed-switch v7, :pswitch_data_1

    .line 197
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v2

    const-string v0, "Range check failed: %s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_2
    nop

    .line 195
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    aput-object v6, v3, v8

    .line 194
    const-string v0, "Range [%d, %<d + %d) out of bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_3
    nop

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    aput-object v6, v3, v8

    .line 191
    const-string v0, "Range [%d, %d) out of bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_4
    nop

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v2

    .line 188
    const-string v0, "Index %d out of bounds for length %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x201dc756 -> :sswitch_2
        0x6def39e5 -> :sswitch_1
        0x6e348341 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x201dc756 -> :sswitch_5
        0x6def39e5 -> :sswitch_4
        0x6e348341 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
