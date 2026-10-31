.class public Landroidx/constraintlayout/widget/SharedValues;
.super Ljava/lang/Object;
.source "SharedValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    }
.end annotation


# static fields
.field public static final UNSET:I = -0x1


# instance fields
.field private mValues:Landroid/util/SparseIntArray;

.field private mValuesListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValues:Landroid/util/SparseIntArray;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "listener"    # Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 42
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;>;"
    if-nez v0, :cond_1d

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 44
    iget-object v1, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1d
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public clearListeners()V
    .registers 2

    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    return-void
.end method

.method public fireNewValue(II)V
    .registers 10
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "needsCleanup":Z
    iget-object v1, p0, Landroidx/constraintlayout/widget/SharedValues;->mValues:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 81
    .local v1, "previousValue":I
    if-ne v1, p2, :cond_b

    .line 83
    return-void

    .line 85
    :cond_b
    iget-object v2, p0, Landroidx/constraintlayout/widget/SharedValues;->mValues:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    iget-object v2, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 87
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;>;"
    if-nez v2, :cond_1f

    .line 88
    return-void

    .line 91
    :cond_1f
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 92
    .local v4, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;

    .line 93
    .local v5, "l":Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    if-eqz v5, :cond_3b

    .line 94
    invoke-interface {v5, p1, p2, v1}, Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;->onNewValue(III)V

    goto :goto_3c

    .line 96
    :cond_3b
    const/4 v0, 0x1

    .line 98
    .end local v4    # "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;"
    .end local v5    # "l":Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    :goto_3c
    goto :goto_23

    .line 100
    :cond_3d
    if-eqz v0, :cond_63

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 103
    .local v5, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;

    .line 104
    .local v6, "listener":Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    if-nez v6, :cond_5f

    .line 105
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v5    # "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;"
    .end local v6    # "listener":Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    :cond_5f
    goto :goto_48

    .line 108
    :cond_60
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 110
    .end local v3    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;>;"
    :cond_63
    return-void
.end method

.method public getValue(I)I
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValues:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public removeListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V
    .registers 8
    .param p1, "key"    # I
    .param p2, "listener"    # Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 51
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;>;"
    if-nez v0, :cond_f

    .line 52
    return-void

    .line 54
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 56
    .local v3, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;

    .line 57
    .local v4, "l":Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    if-eqz v4, :cond_2e

    if-ne v4, p2, :cond_31

    .line 58
    :cond_2e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v3    # "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;>;"
    .end local v4    # "l":Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    :cond_31
    goto :goto_18

    .line 61
    :cond_32
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 62
    return-void
.end method

.method public removeListener(Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V
    .registers 5
    .param p1, "listener"    # Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/widget/SharedValues;->mValuesListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 66
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroidx/constraintlayout/widget/SharedValues;->removeListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    .line 67
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_a

    .line 68
    :cond_1e
    return-void
.end method
