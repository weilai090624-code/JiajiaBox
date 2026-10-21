.class public final Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "MetadataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/MetadataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    .registers 4
    .param p1, "_vector"    # I
    .param p2, "_element_size"    # I
    .param p3, "_bb"    # Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 3
    .param p1, "j"    # I

    .line 85
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->get(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 5
    .param p1, "obj"    # Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .param p2, "j"    # I

    .line 86
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->__element(I)I

    move-result v0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->bb:Ljava/nio/ByteBuffer;

    # invokes: Landroidx/emoji2/text/flatbuffer/MetadataItem;->__indirect(ILjava/nio/ByteBuffer;)I
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->access$000(ILjava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    return-object v0
.end method
