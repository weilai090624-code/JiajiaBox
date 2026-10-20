.class final Landroidx/camera/core/impl/utils/Present;
.super Landroidx/camera/core/impl/utils/Optional;
.source "Present.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/camera/core/impl/utils/Optional<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mReference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/Optional;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 71
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    instance-of v0, p1, Landroidx/camera/core/impl/utils/Present;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p1

    check-cast v0, Landroidx/camera/core/impl/utils/Present;

    .line 73
    .local v0, "other":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<*>;"
    iget-object v1, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 75
    .end local v0    # "other":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x598df91c

    add-int/2addr v0, v1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 37
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public or(Landroidx/camera/core/impl/utils/Optional;)Landroidx/camera/core/impl/utils/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondChoice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/utils/Optional<",
            "+TT;>;)",
            "Landroidx/camera/core/impl/utils/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    .local p1, "secondChoice":Landroidx/camera/core/impl/utils/Optional;, "Landroidx/camera/core/impl/utils/Optional<+TT;>;"
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object p0
.end method

.method public or(Landroidx/core/util/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    .local p1, "supplier":Landroidx/core/util/Supplier;, "Landroidx/core/util/Supplier<+TT;>;"
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    return-object v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 47
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string/jumbo v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    .local p0, "this":Landroidx/camera/core/impl/utils/Present;, "Landroidx/camera/core/impl/utils/Present<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Optional.of("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/utils/Present;->mReference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
