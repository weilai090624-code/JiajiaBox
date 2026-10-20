.class public final Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
.super Ljava/lang/Object;
.source "GroupUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/group/GroupUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R+\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00038F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\u0005\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;",
        "",
        "max",
        "",
        "<init>",
        "(I)V",
        "getMax",
        "()I",
        "setMax",
        "<set-?>",
        "progress",
        "getProgress",
        "setProgress",
        "progress$delegate",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max:I

.field private final progress$delegate:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "progress"

    const-string v3, "getProgress()I"

    const-class v4, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "max"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->progress$delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;IILjava/lang/Object;)Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    :cond_0
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->copy(I)Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    return v0
.end method

.method public final copy(I)Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    invoke-direct {v0, p1}, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;

    iget v3, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    iget v1, v1, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMax()I
    .locals 1

    .line 34
    iget v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    return v0
.end method

.method public final getProgress()I
    .locals 3

    .line 36
    iget-object v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->progress$delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getValue(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    return v0
.end method

.method public final setMax(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 34
    iput p1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 36
    iget-object v0, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->progress$delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->setValue(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress(max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/group/GroupUpdater$Progress;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
