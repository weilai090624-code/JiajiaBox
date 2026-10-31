.class Lcom/google/common/base/Splitter$3$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$3;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$matcher:Lcom/google/common/base/CommonMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$3;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/CommonMatcher;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/common/base/Splitter$3;
    .param p2, "splitter"    # Lcom/google/common/base/Splitter;
    .param p3, "toSplit"    # Ljava/lang/CharSequence;

    .line 231
    iput-object p4, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Lcom/google/common/base/CommonMatcher;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 3
    .param p1, "separatorPosition"    # I

    .line 239
    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Lcom/google/common/base/CommonMatcher;

    invoke-virtual {v0}, Lcom/google/common/base/CommonMatcher;->end()I

    move-result v0

    return v0
.end method

.method public separatorStart(I)I
    .registers 3
    .param p1, "start"    # I

    .line 234
    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Lcom/google/common/base/CommonMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CommonMatcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->val$matcher:Lcom/google/common/base/CommonMatcher;

    invoke-virtual {v0}, Lcom/google/common/base/CommonMatcher;->start()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method
