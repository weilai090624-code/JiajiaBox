.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;
.super Ljava/io/OutputStream;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bitBuffer:I

.field bitBufferLength:I

.field final synthetic this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

.field final synthetic val$out:Ljava/io/Writer;

.field writtenChars:I


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Writer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 593
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 594
    const/4 p2, 0x0

    iput p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    .line 595
    iput p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    .line 596
    iput p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    if-lez v0, :cond_4f

    .line 619
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    sub-int/2addr v1, v2

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    and-int/2addr v0, v1

    .line 620
    .local v0, "charIndex":I
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 621
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    .line 622
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v1, :cond_4f

    .line 623
    :goto_30
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_4f

    .line 624
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 625
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    goto :goto_30

    .line 629
    .end local v0    # "charIndex":I
    :cond_4f
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 630
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 614
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    .line 601
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    .line 602
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    .line 603
    :goto_13
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    if-lt v0, v1, :cond_4f

    .line 604
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sub-int/2addr v1, v2

    shr-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    and-int/2addr v0, v1

    .line 605
    .local v0, "charIndex":I
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 606
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    .line 607
    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    .line 608
    .end local v0    # "charIndex":I
    goto :goto_13

    .line 609
    :cond_4f
    return-void
.end method
