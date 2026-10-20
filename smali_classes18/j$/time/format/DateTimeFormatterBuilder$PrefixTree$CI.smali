.class Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.super Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CI"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4574
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder-IA;)V

    .line 4575
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;Lj$/time/format/DateTimeFormatterBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method


# virtual methods
.method protected isEqual(CC)Z
    .locals 1
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .line 4584
    invoke-static {p1, p2}, Lj$/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4579
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .locals 0

    .line 4571
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->newNode(Ljava/lang/String;Ljava/lang/String;Lj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object p1

    return-object p1
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 4589
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4590
    .local v0, "len":I
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 4591
    return v2

    .line 4593
    :cond_0
    const/4 v1, 0x0

    .line 4594
    .local v1, "off0":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "len":I
    .local v3, "len":I
    if-lez v0, :cond_2

    .line 4595
    iget-object v0, p0, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off0":I
    .local v4, "off0":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Lj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4596
    return v2

    .line 4595
    :cond_1
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 4599
    .end local v4    # "off0":I
    .local v1, "off0":I
    .restart local p2    # "off":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
