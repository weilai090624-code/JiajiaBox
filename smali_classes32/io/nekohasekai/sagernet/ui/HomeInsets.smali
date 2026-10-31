.class public final Lio/nekohasekai/sagernet/ui/HomeInsets;
.super Ljava/lang/Object;
.source "HomeInsets.java"


# static fields
.field private static final dashboardInsets:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/HomeInsets;->dashboardInsets:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/View;II)V
    .registers 5

    .line 16
    sget-object v0, Lio/nekohasekai/sagernet/ui/HomeInsets;->dashboardInsets:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_b

    goto :goto_13

    .line 17
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 18
    :goto_13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v0, p1, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p2, :cond_20

    goto :goto_21

    :cond_20
    return-void

    .line 19
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static bind(Landroid/view/View;I)V
    .registers 4

    .line 11
    sget-object v0, Lio/nekohasekai/sagernet/ui/HomeInsets;->dashboardInsets:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/HomeInsets;->apply(Landroid/view/View;II)V

    return-void
.end method
