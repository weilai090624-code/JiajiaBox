.class Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 4984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4992
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 4997
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 5003
    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .registers 3
    .param p0, "root"    # Landroid/view/View;

    .line 5013
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    .line 5014
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    .line 5015
    .local v0, "manager":Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    if-nez v0, :cond_15

    .line 5016
    new-instance v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    invoke-direct {v1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    move-object v0, v1

    .line 5017
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5019
    :cond_15
    return-object v0
.end method

.method private dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 5042
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_33

    .line 5045
    :cond_e
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 5046
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 5048
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_2b

    .line 5049
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5050
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    .line 5051
    .local v4, "consumer":Landroid/view/View;
    if-eqz v4, :cond_28

    .line 5052
    return-object v4

    .line 5048
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "consumer":Landroid/view/View;
    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 5056
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2b
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5057
    return-object p1

    .line 5059
    :cond_32
    return-object v1

    .line 5043
    :cond_33
    :goto_33
    return-object v1
.end method

.method private getCapturedKeys()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 5006
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 5007
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    .line 5009
    :cond_b
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    return-object v0
.end method

.method private onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 5101
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 5103
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5104
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_22

    .line 5105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_22

    .line 5106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v3, p1, p2}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 5107
    return v2

    .line 5105
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 5111
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private recalcViewsWithUnhandled()V
    .registers 9

    .line 5141
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_9

    .line 5142
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 5144
    :cond_9
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5145
    return-void

    .line 5147
    :cond_12
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5148
    :try_start_15
    iget-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-nez v1, :cond_20

    .line 5149
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 5151
    :cond_20
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_62

    .line 5152
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5153
    .local v2, "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5154
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_40

    .line 5155
    sget-object v4, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5f

    .line 5157
    :cond_40
    iget-object v4, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5158
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 5159
    .local v4, "nxt":Landroid/view/ViewParent;
    :goto_4b
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_5f

    .line 5160
    iget-object v5, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5161
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_4b

    .line 5151
    .end local v2    # "vw":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "nxt":Landroid/view/ViewParent;
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 5165
    .end local v1    # "i":I
    :cond_62
    monitor-exit v0

    .line 5166
    return-void

    .line 5165
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_15 .. :try_end_66} :catchall_64

    throw v1
.end method

.method static registerListeningView(Landroid/view/View;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 5119
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5120
    :try_start_3
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5121
    .local v2, "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 5122
    monitor-exit v0

    return-void

    .line 5124
    .end local v2    # "wv":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_1d
    goto :goto_9

    .line 5125
    :cond_1e
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5126
    monitor-exit v0

    .line 5127
    return-void

    .line 5126
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method static unregisterListeningView(Landroid/view/View;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .line 5130
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 5132
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_21

    .line 5133
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5134
    monitor-exit v0

    return-void

    .line 5131
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5137
    .end local v1    # "i":I
    :cond_24
    monitor-exit v0

    .line 5138
    return-void

    .line 5137
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 5023
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 5024
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    .line 5027
    :cond_9
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v0

    .line 5031
    .local v0, "consumer":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2b

    .line 5032
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 5033
    .local v1, "keycode":I
    if-eqz v0, :cond_2b

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 5034
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5037
    .end local v1    # "keycode":I
    :cond_2b
    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1
.end method

.method preDispatch(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 5068
    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 5069
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    .line 5070
    return v1

    .line 5072
    :cond_e
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 5076
    const/4 v0, 0x0

    .line 5077
    .local v0, "currentReceiver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v2

    .line 5078
    .local v2, "capturedKeys":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 5079
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 5080
    .local v3, "idx":I
    if-ltz v3, :cond_35

    .line 5081
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 5082
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5085
    .end local v3    # "idx":I
    :cond_35
    if-nez v0, :cond_42

    .line 5086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 5088
    :cond_42
    if-eqz v0, :cond_56

    .line 5089
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5090
    .local v1, "target":Landroid/view/View;
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 5091
    invoke-direct {p0, v1, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 5094
    :cond_55
    return v4

    .line 5096
    .end local v1    # "target":Landroid/view/View;
    :cond_56
    return v1
.end method
