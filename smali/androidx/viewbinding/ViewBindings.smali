.class public Landroidx/viewbinding/ViewBindings;
.super Ljava/lang/Object;
.source "ViewBindings.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static findChildViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 40
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 41
    return-object v1

    .line 43
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    .local v0, "rootViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 45
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_1e

    .line 46
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 47
    .local v4, "view":Landroid/view/View;, "TT;"
    if-eqz v4, :cond_1b

    .line 48
    return-object v4

    .line 45
    .end local v4    # "view":Landroid/view/View;, "TT;"
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 51
    .end local v3    # "i":I
    :cond_1e
    return-object v1
.end method
