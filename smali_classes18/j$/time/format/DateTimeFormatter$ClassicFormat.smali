.class Lj$/time/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassicFormat"
.end annotation


# instance fields
.field private final formatter:Lj$/time/format/DateTimeFormatter;

.field private final parseType:Lj$/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/time/temporal/TemporalQuery<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj$/time/format/DateTimeFormatter;Lj$/time/temporal/TemporalQuery;)V
    .locals 0
    .param p1, "formatter"    # Lj$/time/format/DateTimeFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/format/DateTimeFormatter;",
            "Lj$/time/temporal/TemporalQuery<",
            "*>;)V"
        }
    .end annotation

    .line 2148
    .local p2, "parseType":Lj$/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 2149
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    .line 2150
    iput-object p2, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Lj$/time/temporal/TemporalQuery;

    .line 2151
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 2155
    const-string v0, "obj"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2156
    const-string v0, "toAppendTo"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2157
    const-string v0, "pos"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2158
    instance-of v0, p1, Lj$/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_0

    .line 2161
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2162
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2164
    :try_start_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v1, p2}, Lj$/time/format/DateTimeFormatter;->formatTo(Lj$/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    nop

    .line 2168
    return-object p2

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2159
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format target must implement TemporalAccessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 2172
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2174
    :try_start_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Lj$/time/temporal/TemporalQuery;

    if-nez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lj$/time/format/DateTimeFormatter;->-$$Nest$mparseResolved0(Lj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    .line 2177
    :cond_0
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    iget-object v1, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Lj$/time/temporal/TemporalQuery;

    invoke-virtual {v0, p1, v1}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/text/ParseException;

    throw v1

    .line 2178
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2179
    .local v0, "ex":Lj$/time/format/DateTimeParseException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Lj$/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lj$/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 2186
    const-string v0, "text"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2189
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-static {v2, p1, p2}, Lj$/time/format/DateTimeFormatter;->-$$Nest$mparseUnresolved0(Lj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lj$/time/format/DateTimeParseContext;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2195
    .local v2, "context":Lj$/time/format/DateTimeParseContext;
    nop

    .line 2196
    if-nez v2, :cond_1

    .line 2197
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_0

    .line 2198
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2200
    :cond_0
    return-object v1

    .line 2203
    :cond_1
    :try_start_1
    iget-object v3, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-static {v3}, Lj$/time/format/DateTimeFormatter;->-$$Nest$fgetresolverStyle(Lj$/time/format/DateTimeFormatter;)Lj$/time/format/ResolverStyle;

    move-result-object v3

    iget-object v4, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Lj$/time/format/DateTimeFormatter;

    invoke-static {v4}, Lj$/time/format/DateTimeFormatter;->-$$Nest$fgetresolverFields(Lj$/time/format/DateTimeFormatter;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lj$/time/format/DateTimeParseContext;->toResolved(Lj$/time/format/ResolverStyle;Ljava/util/Set;)Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 2204
    .local v3, "resolved":Lj$/time/temporal/TemporalAccessor;
    iget-object v4, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Lj$/time/temporal/TemporalQuery;

    if-nez v4, :cond_2

    .line 2205
    return-object v3

    .line 2207
    :cond_2
    iget-object v4, p0, Lj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Lj$/time/temporal/TemporalQuery;

    invoke-interface {v3, v4}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 2208
    .end local v3    # "resolved":Lj$/time/temporal/TemporalAccessor;
    :catch_0
    move-exception v3

    .line 2209
    .local v3, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2210
    return-object v1

    .line 2190
    .end local v2    # "context":Lj$/time/format/DateTimeParseContext;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 2191
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_3

    .line 2192
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2194
    :cond_3
    return-object v1
.end method
