.class final Landroidx/camera/core/impl/utils/Absent;
.super Landroidx/camera/core/impl/utils/Optional;
.source "Absent.java"


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
.field static final sInstance:Landroidx/camera/core/impl/utils/Absent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/utils/Absent<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroidx/camera/core/impl/utils/Absent;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/Absent;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/utils/Absent;->sInstance:Landroidx/camera/core/impl/utils/Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/Optional;-><init>()V

    .line 37
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 89
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    sget-object v0, Landroidx/camera/core/impl/utils/Absent;->sInstance:Landroidx/camera/core/impl/utils/Absent;

    return-object v0
.end method

.method static withType()Landroidx/camera/core/impl/utils/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/camera/core/impl/utils/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 33
    sget-object v0, Landroidx/camera/core/impl/utils/Absent;->sInstance:Landroidx/camera/core/impl/utils/Absent;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 75
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    const v0, 0x79a31aac

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 41
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public or(Landroidx/camera/core/impl/utils/Optional;)Landroidx/camera/core/impl/utils/Optional;
    .locals 1
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

    .line 58
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    .local p1, "secondChoice":Landroidx/camera/core/impl/utils/Optional;, "Landroidx/camera/core/impl/utils/Optional<+TT;>;"
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/utils/Optional;

    return-object v0
.end method

.method public or(Landroidx/core/util/Supplier;)Ljava/lang/Object;
    .locals 2
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

    .line 63
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    .local p1, "supplier":Landroidx/core/util/Supplier;, "Landroidx/core/util/Supplier<+TT;>;"
    nop

    .line 64
    invoke-interface {p1}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "use Optional.orNull() instead of a Supplier that returns null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 51
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const-string/jumbo v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    .local p0, "this":Landroidx/camera/core/impl/utils/Absent;, "Landroidx/camera/core/impl/utils/Absent<TT;>;"
    const-string v0, "Optional.absent()"

    return-object v0
.end method
