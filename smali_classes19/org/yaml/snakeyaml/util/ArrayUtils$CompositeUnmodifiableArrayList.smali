.class Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;
.super Ljava/util/AbstractList;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/util/ArrayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeUnmodifiableArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final array1:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final array2:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;, "Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList<TE;>;"
    .local p1, "array1":[Ljava/lang/Object;, "[TE;"
    .local p2, "array2":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;, "Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList<TE;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .local v0, "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 96
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    array-length v1, v1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    .line 101
    .restart local v0    # "element":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 99
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 106
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;, "Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList<TE;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array1:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$CompositeUnmodifiableArrayList;->array2:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
