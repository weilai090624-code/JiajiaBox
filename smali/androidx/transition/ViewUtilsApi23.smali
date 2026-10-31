.class Landroidx/transition/ViewUtilsApi23;
.super Landroidx/transition/ViewUtilsApi22;
.source "ViewUtilsApi23.java"


# static fields
.field private static sTryHiddenSetTransitionVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi22;-><init>()V

    return-void
.end method


# virtual methods
.method public setTransitionVisibility(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_a

    .line 39
    invoke-super {p0, p1, p2}, Landroidx/transition/ViewUtilsApi22;->setTransitionVisibility(Landroid/view/View;I)V

    goto :goto_16

    .line 41
    :cond_a
    sget-boolean v0, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    if-eqz v0, :cond_16

    .line 45
    :try_start_e
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    .line 48
    goto :goto_16

    .line 46
    :catch_12
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    .line 51
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_16
    :goto_16
    return-void
.end method
