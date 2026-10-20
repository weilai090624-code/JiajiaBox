.class public final Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;
.super Ljava/lang/Object;
.source "SimpleMenuDropdownItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/CheckedTextView;


# direct methods
.method private constructor <init>(Landroid/widget/CheckedTextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;->rootView:Landroid/widget/CheckedTextView;

    .line 21
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;
    .locals 2
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 46
    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;

    move-object v1, p0

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;-><init>(Landroid/widget/CheckedTextView;)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 37
    const v0, 0x7f0d00b0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;->getRoot()Landroid/widget/CheckedTextView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/CheckedTextView;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/SimpleMenuDropdownItemBinding;->rootView:Landroid/widget/CheckedTextView;

    return-object v0
.end method
