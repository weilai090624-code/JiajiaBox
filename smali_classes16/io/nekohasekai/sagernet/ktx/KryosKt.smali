.class public final Lio/nekohasekai/sagernet/ktx/KryosKt;
.super Ljava/lang/Object;
.source "Kryos.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0003*\u00020\u0004\u001a\u0010\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\u0001\u001a\u0010\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t*\u00020\u0001\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u000f\u001a\n\u0010\u0010\u001a\u00020\u0011*\u00020\u000e\u001a)\u0010\u0010\u001a\u0002H\u0012\"\u0004\u0008\u0000\u0010\u0012*\u00020\u000e2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u0002H\u00120\u0014\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "byteBuffer",
        "Lcom/esotericsoftware/kryo/io/ByteBufferInput;",
        "Ljava/io/InputStream;",
        "Lcom/esotericsoftware/kryo/io/ByteBufferOutput;",
        "Ljava/io/OutputStream;",
        "readStringList",
        "",
        "",
        "readStringSet",
        "",
        "writeStringList",
        "",
        "list",
        "marshall",
        "",
        "Landroid/os/Parcelable;",
        "unmarshall",
        "Landroid/os/Parcel;",
        "T",
        "constructor",
        "Lkotlin/Function1;",
        "([BLkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final byteBuffer(Ljava/io/InputStream;)Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .locals 1
    .param p0, "$this$byteBuffer"    # Ljava/io/InputStream;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static final byteBuffer(Ljava/io/OutputStream;)Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
    .locals 1
    .param p0, "$this$byteBuffer"    # Ljava/io/OutputStream;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static final marshall(Landroid/os/Parcelable;)[B
    .locals 2
    .param p0, "$this$marshall"    # Landroid/os/Parcelable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 45
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final readStringList(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)Ljava/util/List;
    .locals 8
    .param p0, "$this$readStringList"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/io/ByteBufferInput;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .local v1, "$this$readStringList_u24lambda_u241":Ljava/util/List;
    const/4 v2, 0x0

    .line 16
    .local v2, "$i$a$-apply-KryosKt$readStringList$1":I
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .line 17
    .local v6, "$i$a$-repeat-KryosKt$readStringList$1$1":I
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    nop

    .line 16
    .end local v5    # "it":I
    .end local v6    # "$i$a$-repeat-KryosKt$readStringList$1$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_0
    nop

    .line 15
    .end local v1    # "$this$readStringList_u24lambda_u241":Ljava/util/List;
    .end local v2    # "$i$a$-apply-KryosKt$readStringList$1":I
    return-object v0
.end method

.method public static final readStringSet(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)Ljava/util/Set;
    .locals 8
    .param p0, "$this$readStringSet"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/io/ByteBufferInput;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, v0

    .local v1, "$this$readStringSet_u24lambda_u243":Ljava/util/LinkedHashSet;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-apply-KryosKt$readStringSet$1":I
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .line 25
    .local v6, "$i$a$-repeat-KryosKt$readStringSet$1$1":I
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 26
    nop

    .line 24
    .end local v5    # "it":I
    .end local v6    # "$i$a$-repeat-KryosKt$readStringSet$1$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_0
    nop

    .line 23
    .end local v1    # "$this$readStringSet_u24lambda_u243":Ljava/util/LinkedHashSet;
    .end local v2    # "$i$a$-apply-KryosKt$readStringSet$1":I
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static final unmarshall([B)Landroid/os/Parcel;
    .locals 3
    .param p0, "$this$unmarshall"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "obtain(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-object v0
.end method

.method public static final unmarshall([BLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$unmarshall"    # [B
    .param p1, "constructor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/os/Parcel;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lio/nekohasekai/sagernet/ktx/KryosKt;->unmarshall([B)Landroid/os/Parcel;

    move-result-object v0

    .line 58
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 60
    return-object v1
.end method

.method public static final writeStringList(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;Ljava/util/List;)V
    .locals 2
    .param p0, "$this$writeStringList"    # Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/io/ByteBufferOutput;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static final writeStringList(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;Ljava/util/Set;)V
    .locals 2
    .param p0, "$this$writeStringList"    # Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
    .param p1, "list"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/io/ByteBufferOutput;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 38
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
