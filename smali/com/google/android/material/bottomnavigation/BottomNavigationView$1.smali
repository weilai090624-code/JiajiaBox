.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 140
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 149
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 151
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    move v0, v1

    .line 152
    .local v0, "isRtl":Z
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 153
    .local v1, "systemWindowInsetLeft":I
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 154
    .local v2, "systemWindowInsetRight":I
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_21

    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v1

    :goto_22
    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 155
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    if-eqz v0, :cond_2b

    move v4, v1

    goto :goto_2c

    :cond_2b
    move v4, v2

    :goto_2c
    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 156
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 157
    return-object p2
.end method
