.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharSequenceHelper_API24"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method static chars(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 156
    invoke-static {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24$$ExternalSyntheticAPIConversion1;->m(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method static codePoints(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 152
    invoke-static {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24$$ExternalSyntheticAPIConversion0;->m(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
