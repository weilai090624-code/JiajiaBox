.class public Landroidx/navigation/NavGraph;
.super Landroidx/navigation/NavDestination;
.source "NavGraph.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavGraph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestination;",
        "Ljava/lang/Iterable<",
        "Landroidx/navigation/NavDestination;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 6 SparseArray.kt\nandroidx/collection/SparseArrayKt\n*L\n1#1,475:1\n232#2,3:476\n1601#3,9:479\n1849#3:488\n1850#3:490\n1610#3:491\n1#4:489\n1#4:492\n32#5,2:493\n22#6:495\n56#6,4:496\n*S KotlinDebug\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n*L\n59#1:476,3\n71#1:479,9\n71#1:488\n71#1:490\n71#1:491\n71#1:489\n383#1:493,2\n385#1:495\n392#1:496,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 >2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00010\u0002:\u0001>B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u001f\u0010\"\u001a\u00020\u001e2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010#\"\u00020\u0001\u00a2\u0006\u0002\u0010$J\u0016\u0010\"\u001a\u00020\u001e2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%J\u0006\u0010&\u001a\u00020\u001eJ\u0013\u0010\'\u001a\u00020(2\u0008\u0010\u001f\u001a\u0004\u0018\u00010)H\u0096\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0001\u0010+\u001a\u00020\u0011J\u001c\u0010*\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0001\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020(H\u0007J\u001a\u0010*\u001a\u0004\u0018\u00010\u00012\u0006\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020(H\u0007J\u0012\u0010*\u001a\u0004\u0018\u00010\u00012\u0008\u0010-\u001a\u0004\u0018\u00010\u0007J\u0008\u0010.\u001a\u00020\u0011H\u0007J\u0008\u0010/\u001a\u00020\u0011H\u0016J\u000f\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000101H\u0086\u0002J\u0012\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u000205H\u0017J\u0018\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u000e\u0010;\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u000e\u0010<\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010<\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0007J\u0008\u0010=\u001a\u00020\u0007H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000b8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118G@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R(\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\t\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006?"
    }
    d2 = {
        "Landroidx/navigation/NavGraph;",
        "Landroidx/navigation/NavDestination;",
        "",
        "navGraphNavigator",
        "Landroidx/navigation/Navigator;",
        "(Landroidx/navigation/Navigator;)V",
        "displayName",
        "",
        "getDisplayName",
        "()Ljava/lang/String;",
        "nodes",
        "Landroidx/collection/SparseArrayCompat;",
        "getNodes",
        "()Landroidx/collection/SparseArrayCompat;",
        "startDestDisplayName",
        "getStartDestDisplayName",
        "startDestId",
        "",
        "startDestIdName",
        "startDestinationId",
        "getStartDestinationId",
        "()I",
        "setStartDestinationId",
        "(I)V",
        "startDestRoute",
        "startDestinationRoute",
        "getStartDestinationRoute",
        "setStartDestinationRoute",
        "(Ljava/lang/String;)V",
        "addAll",
        "",
        "other",
        "addDestination",
        "node",
        "addDestinations",
        "",
        "([Landroidx/navigation/NavDestination;)V",
        "",
        "clear",
        "equals",
        "",
        "",
        "findNode",
        "resId",
        "searchParents",
        "route",
        "getStartDestination",
        "hashCode",
        "iterator",
        "",
        "matchDeepLink",
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        "navDeepLinkRequest",
        "Landroidx/navigation/NavDeepLinkRequest;",
        "onInflate",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "remove",
        "setStartDestination",
        "toString",
        "Companion",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/NavGraph$Companion;


# instance fields
.field private final nodes:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private startDestId:I

.field private startDestIdName:Ljava/lang/String;

.field private startDestinationRoute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/navigation/NavGraph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .registers 3
    .param p1, "navGraphNavigator"    # Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavGraph;",
            ">;)V"
        }
    .end annotation

    const-string v0, "navGraphNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 47
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .line 44
    return-void
.end method

.method public static final findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method private final setStartDestinationId(I)V
    .registers 5
    .param p1, "startDestId"    # I

    .line 296
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_18

    .line 299
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 300
    invoke-direct {p0, v1}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    .line 302
    :cond_13
    iput p1, p0, Landroidx/navigation/NavGraph;->startDestId:I

    .line 303
    iput-object v1, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    .line 304
    return-void

    .line 296
    :cond_18
    const/4 v0, 0x0

    .line 297
    .local v0, "$i$a$-require-NavGraph$startDestinationId$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot use the same id as the graph "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .end local v0    # "$i$a$-require-NavGraph$startDestinationId$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final setStartDestinationRoute(Ljava/lang/String;)V
    .registers 5
    .param p1, "startDestRoute"    # Ljava/lang/String;

    .line 336
    if-nez p1, :cond_4

    .line 337
    const/4 v0, 0x0

    goto :goto_22

    .line 339
    :cond_4
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 342
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 345
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "internalRoute":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 336
    .end local v0    # "internalRoute":Ljava/lang/String;
    :goto_22
    iput v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    .line 348
    iput-object p1, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    .line 349
    return-void

    .line 342
    :cond_27
    const/4 v0, 0x0

    .line 343
    .local v0, "$i$a$-require-NavGraph$startDestinationRoute$2":I
    nop

    .line 342
    .end local v0    # "$i$a$-require-NavGraph$startDestinationRoute$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an empty start destination route"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_35
    const/4 v0, 0x0

    .line 340
    .local v0, "$i$a$-require-NavGraph$startDestinationRoute$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot use the same route as the graph "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .end local v0    # "$i$a$-require-NavGraph$startDestinationRoute$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final addAll(Landroidx/navigation/NavGraph;)V
    .registers 4
    .param p1, "other"    # Landroidx/navigation/NavGraph;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 242
    .local v1, "destination":Landroidx/navigation/NavDestination;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 243
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .end local v1    # "destination":Landroidx/navigation/NavDestination;
    goto :goto_9

    .line 245
    :cond_1c
    return-void
.end method

.method public final addDestination(Landroidx/navigation/NavDestination;)V
    .registers 8
    .param p1, "node"    # Landroidx/navigation/NavDestination;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    .line 92
    .local v0, "id":I
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "innerRoute":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_16

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v4, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v4, 0x1

    :goto_17
    if-eqz v4, :cond_b8

    .line 97
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Destination "

    if-eqz v4, :cond_52

    .line 98
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_52

    :cond_2c
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-require-NavGraph$addDestination$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot have the same route as graph "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .end local v2    # "$i$a$-require-NavGraph$addDestination$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_52
    :goto_52
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v4

    if-eq v0, v4, :cond_5a

    const/4 v4, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    if-eqz v4, :cond_92

    .line 103
    iget-object v4, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination;

    .line 104
    .local v4, "existingDestination":Landroidx/navigation/NavDestination;
    if-ne v4, p1, :cond_68

    .line 105
    return-void

    .line 107
    :cond_68
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v5

    if-nez v5, :cond_6f

    const/4 v2, 0x1

    :cond_6f
    if-eqz v2, :cond_84

    .line 111
    if-eqz v4, :cond_77

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 114
    :cond_77
    invoke-virtual {p1, p0}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 115
    iget-object v2, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 116
    return-void

    .line 107
    :cond_84
    const/4 v2, 0x0

    .line 108
    .local v2, "$i$a$-check-NavGraph$addDestination$4":I
    nop

    .line 107
    .end local v2    # "$i$a$-check-NavGraph$addDestination$4":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    .end local v4    # "existingDestination":Landroidx/navigation/NavDestination;
    :cond_92
    const/4 v2, 0x0

    .line 102
    .local v2, "$i$a$-require-NavGraph$addDestination$3":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot have the same id as graph "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-NavGraph$addDestination$3":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_b8
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$a$-require-NavGraph$addDestination$1":I
    nop

    .line 93
    .end local v2    # "$i$a$-require-NavGraph$addDestination$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final addDestinations(Ljava/util/Collection;)V
    .registers 4
    .param p1, "nodes"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 130
    .local v1, "node":Landroidx/navigation/NavDestination;
    if-nez v1, :cond_18

    .line 131
    goto :goto_9

    .line 133
    :cond_18
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .end local v1    # "node":Landroidx/navigation/NavDestination;
    goto :goto_9

    .line 135
    :cond_1c
    return-void
.end method

.method public final varargs addDestinations([Landroidx/navigation/NavDestination;)V
    .registers 5
    .param p1, "nodes"    # [Landroidx/navigation/NavDestination;

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    .line 149
    .local v2, "node":Landroidx/navigation/NavDestination;
    invoke-virtual {p0, v2}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 151
    .end local v2    # "node":Landroidx/navigation/NavDestination;
    :cond_11
    return-void
.end method

.method public final clear()V
    .registers 3

    .line 264
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 269
    :cond_11
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 381
    const/4 v0, 0x0

    if-eqz p1, :cond_64

    instance-of v1, p1, Landroidx/navigation/NavGraph;

    if-nez v1, :cond_8

    goto :goto_64

    .line 382
    :cond_8
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v1}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "copy":Ljava/util/List;
    move-object v2, p1

    check-cast v2, Landroidx/navigation/NavGraph;

    iget-object v2, v2, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-static {v2}, Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;

    move-result-object v2

    .local v2, "$this$forEach$iv":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 493
    .local v3, "$i$f$forEach":I
    nop

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavDestination;

    .local v5, "it":Landroidx/navigation/NavDestination;
    const/4 v6, 0x0

    .line 383
    .local v6, "$i$a$-forEach-NavGraph$equals$1":I
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_21

    .line 494
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Landroidx/navigation/NavDestination;
    .end local v6    # "$i$a$-forEach-NavGraph$equals$1":I
    :cond_33
    nop

    .line 384
    .end local v2    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v3    # "$i$f$forEach":I
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 385
    iget-object v2, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .local v2, "$receiver$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v3, 0x0

    .line 495
    .local v3, "$i$f$getSize":I
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    .line 385
    .end local v2    # "$receiver$iv":Landroidx/collection/SparseArrayCompat;
    .end local v3    # "$i$f$getSize":I
    move-object v3, p1

    check-cast v3, Landroidx/navigation/NavGraph;

    iget-object v3, v3, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .local v3, "$receiver$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v4, 0x0

    .line 495
    .local v4, "$i$f$getSize":I
    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    .end local v3    # "$receiver$iv":Landroidx/collection/SparseArrayCompat;
    .end local v4    # "$i$f$getSize":I
    if-ne v2, v3, :cond_62

    .line 386
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v2

    move-object v3, p1

    check-cast v3, Landroidx/navigation/NavGraph;

    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 387
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    nop

    .line 384
    :goto_63
    return v0

    .line 381
    .end local v1    # "copy":Ljava/util/List;
    :cond_64
    :goto_64
    return v0
.end method

.method public final findNode(I)Landroidx/navigation/NavDestination;
    .registers 3
    .param p1, "resId"    # I

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public final findNode(IZ)Landroidx/navigation/NavDestination;
    .registers 5
    .param p1, "resId"    # I
    .param p2, "searchParents"    # Z

    .line 180
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 183
    .local v0, "destination":Landroidx/navigation/NavDestination;
    if-nez v0, :cond_20

    .line 184
    if-eqz p2, :cond_1e

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_21

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    .line 183
    :cond_20
    move-object v1, v0

    :goto_21
    return-object v1
.end method

.method public final findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .registers 4
    .param p1, "route"    # Ljava/lang/String;

    .line 172
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_17

    invoke-virtual {p0, p1, v1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method public final findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .registers 6
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "searchParents"    # Z

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 193
    .local v0, "id":I
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 196
    .local v1, "destination":Landroidx/navigation/NavDestination;
    if-nez v1, :cond_2f

    .line 197
    if-eqz p2, :cond_2d

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v2

    goto :goto_30

    :cond_2d
    const/4 v2, 0x0

    goto :goto_30

    .line 196
    :cond_2f
    move-object v2, v1

    :goto_30
    return-object v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 276
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroidx/navigation/NavDestination;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "the root navigation"

    :goto_e
    return-object v0
.end method

.method public final getNodes()Landroidx/collection/SparseArrayCompat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public final getStartDestDisplayName()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 356
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-nez v0, :cond_e

    iget v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    .line 358
    :cond_10
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getStartDestination()I
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Use getStartDestinationId instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "startDestinationId"
            imports = {}
        .end subannotation
    .end annotation

    .line 286
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    return v0
.end method

.method public final getStartDestinationId()I
    .registers 2

    .line 294
    iget v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    return v0
.end method

.method public final getStartDestinationRoute()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 11

    .line 391
    const/4 v0, 0x0

    .local v0, "result":I
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    .line 392
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    .local v1, "$receiver$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v2, 0x0

    .line 496
    .local v2, "$i$f$forEach":I
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_29

    .line 497
    .local v4, "index$iv":I
    invoke-virtual {v1, v4}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    .local v5, "key":I
    invoke-virtual {v1, v4}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    .local v6, "value":Landroidx/navigation/NavDestination;
    const/4 v7, 0x0

    .line 393
    .local v7, "$i$a$-forEach-NavGraph$hashCode$1":I
    mul-int/lit8 v8, v0, 0x1f

    add-int/2addr v8, v5

    .line 394
    .end local v0    # "result":I
    .local v8, "result":I
    mul-int/lit8 v0, v8, 0x1f

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->hashCode()I

    move-result v9

    add-int/2addr v0, v9

    .line 395
    .end local v8    # "result":I
    .restart local v0    # "result":I
    nop

    .line 496
    .end local v5    # "key":I
    .end local v6    # "value":Landroidx/navigation/NavDestination;
    .end local v7    # "$i$a$-forEach-NavGraph$hashCode$1":I
    nop

    .end local v4    # "index$iv":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 499
    :cond_29
    nop

    .line 396
    .end local v1    # "$receiver$iv":Landroidx/collection/SparseArrayCompat;
    .end local v2    # "$i$f$forEach":I
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Landroidx/navigation/NavGraph$iterator$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph$iterator$1;-><init>(Landroidx/navigation/NavGraph;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .registers 16
    .param p1, "navDeepLinkRequest"    # Landroidx/navigation/NavDeepLinkRequest;

    const-string v0, "navDeepLinkRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 71
    .local v0, "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 479
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 487
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 488
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_38

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 487
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/navigation/NavDestination;

    .local v12, "child":Landroidx/navigation/NavDestination;
    const/4 v13, 0x0

    .line 72
    .local v13, "$i$a$-mapNotNull-NavGraph$matchDeepLink$bestChildMatch$1":I
    invoke-virtual {v12, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v12

    .end local v12    # "child":Landroidx/navigation/NavDestination;
    .end local v13    # "$i$a$-mapNotNull-NavGraph$matchDeepLink$bestChildMatch$1":I
    if-eqz v12, :cond_37

    .line 489
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 487
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1c

    :cond_37
    goto :goto_1c

    .line 490
    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_38
    nop

    .line 491
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 479
    nop

    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    check-cast v3, Ljava/lang/Iterable;

    .line 73
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 71
    nop

    .line 75
    .local v1, "bestChildMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination$DeepLinkMatch;

    return-object v2
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    nop

    .line 58
    sget-object v1, Landroidx/navigation/common/R$styleable;->NavGraphNavigator:[I

    .line 56
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.resources.obtain\u2026vGraphNavigator\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    nop

    .local v0, "$this$use$iv":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 476
    .local v1, "$i$f$use":I
    move-object v2, v0

    .local v2, "it":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 60
    .local v3, "$i$a$-use-NavGraph$onInflate$1":I
    sget v4, Landroidx/navigation/common/R$styleable;->NavGraphNavigator_startDestination:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/navigation/NavGraph;->setStartDestinationId(I)V

    .line 61
    sget-object v4, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget v5, p0, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-virtual {v4, p1, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    .line 62
    nop

    .end local v2    # "it":Landroid/content/res/TypedArray;
    .end local v3    # "$i$a$-use-NavGraph$onInflate$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 477
    .local v3, "$i$a$-also-TypedArrayKt$use$1$iv":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 478
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-also-TypedArrayKt$use$1$iv":I
    nop

    .line 476
    nop

    .line 63
    .end local v0    # "$this$use$iv":Landroid/content/res/TypedArray;
    .end local v1    # "$i$f$use":I
    return-void
.end method

.method public final remove(Landroidx/navigation/NavDestination;)V
    .registers 5
    .param p1, "node"    # Landroidx/navigation/NavDestination;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 254
    .local v0, "index":I
    if-ltz v0, :cond_22

    .line 255
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 256
    iget-object v1, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 258
    :cond_22
    return-void
.end method

.method public final setStartDestination(I)V
    .registers 2
    .param p1, "startDestId"    # I

    .line 315
    invoke-direct {p0, p1}, Landroidx/navigation/NavGraph;->setStartDestinationId(I)V

    .line 316
    return-void
.end method

.method public final setStartDestination(Ljava/lang/String;)V
    .registers 3
    .param p1, "startDestRoute"    # Ljava/lang/String;

    const-string/jumbo v0, "startDestRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1}, Landroidx/navigation/NavGraph;->setStartDestinationRoute(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 365
    .local v1, "startDestination":Landroidx/navigation/NavDestination;
    :cond_1c
    const-string v2, " startDestination="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    if-nez v1, :cond_55

    .line 367
    nop

    .line 368
    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 369
    :cond_2e
    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 370
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 373
    :cond_55
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :goto_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sb.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
