.class Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderApi19"
.end annotation


# instance fields
.field final mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V
    .registers 2
    .param p1, "compat"    # Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 44
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 46
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .param p1, "virtualViewId"    # I

    .line 50
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 51
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 52
    .local v0, "compatInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_a

    .line 53
    const/4 v1, 0x0

    return-object v1

    .line 55
    :cond_a
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .line 63
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v0, :cond_a

    .line 65
    const/4 v1, 0x0

    return-object v1

    .line 67
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 69
    .local v2, "infoCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_26

    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 71
    .local v4, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v4    # "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 73
    .end local v3    # "i":I
    :cond_26
    return-object v1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .param p1, "focus"    # I

    .line 84
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 85
    .local v0, "compatInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_a

    .line 86
    const/4 v1, 0x0

    return-object v1

    .line 88
    :cond_a
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 79
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
