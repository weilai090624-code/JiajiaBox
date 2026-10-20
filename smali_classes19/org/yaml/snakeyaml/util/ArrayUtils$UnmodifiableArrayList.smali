.class Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;
.super Ljava/util/AbstractList;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/util/ArrayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableArrayList"
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
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;, "Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;->array:[Ljava/lang/Object;

    .line 65
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

    .line 69
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;, "Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList<TE;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 70
    :cond_0
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

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 77
    .local p0, "this":Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;, "Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList<TE;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/ArrayUtils$UnmodifiableArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
