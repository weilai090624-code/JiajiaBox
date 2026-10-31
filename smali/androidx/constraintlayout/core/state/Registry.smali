.class public Landroidx/constraintlayout/core/state/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# static fields
.field private static final sRegistry:Landroidx/constraintlayout/core/state/Registry;


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/RegistryCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroidx/constraintlayout/core/state/Registry;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Registry;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Landroidx/constraintlayout/core/state/Registry;
    .registers 1

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    return-object v0
.end method


# virtual methods
.method public currentContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 55
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_f

    .line 56
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentMotionScene()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 58
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public currentLayoutInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 63
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_f

    .line 64
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentLayoutInformation()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLastModified(Ljava/lang/String;)J
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 89
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_f

    .line 90
    invoke-interface {v0}, Landroidx/constraintlayout/core/state/RegistryCallback;->getLastModified()J

    move-result-wide v1

    return-wide v1

    .line 92
    :cond_f
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public getLayoutList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public setDrawDebug(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "debugMode"    # I

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 71
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_d

    .line 72
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setDrawDebug(I)V

    .line 74
    :cond_d
    return-void
.end method

.method public setLayoutInformationMode(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 78
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_d

    .line 79
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setLayoutInformationMode(I)V

    .line 81
    :cond_d
    return-void
.end method

.method public unregister(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 41
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_d

    .line 42
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onNewMotionScene(Ljava/lang/String;)V

    .line 44
    :cond_d
    return-void
.end method

.method public updateDimensions(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 97
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_d

    .line 98
    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/state/RegistryCallback;->onDimensions(II)V

    .line 100
    :cond_d
    return-void
.end method

.method public updateProgress(Ljava/lang/String;F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/RegistryCallback;

    .line 48
    .local v0, "callback":Landroidx/constraintlayout/core/state/RegistryCallback;
    if-eqz v0, :cond_d

    .line 49
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onProgress(F)V

    .line 51
    :cond_d
    return-void
.end method
