.class public final Landroidx/camera/core/impl/UseCaseAttachState;
.super Ljava/lang/Object;
.source "UseCaseAttachState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;,
        Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UseCaseAttachState"


# instance fields
.field private final mAttachedUseCasesToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mCameraId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getOrCreateUseCaseAttachInfo(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    .locals 2
    .param p1, "useCaseName"    # Ljava/lang/String;
    .param p2, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useCaseName",
            "sessionConfig"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 198
    .local v0, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    if-nez v0, :cond_0

    .line 199
    new-instance v1, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    invoke-direct {v1, p2}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;-><init>(Landroidx/camera/core/impl/SessionConfig;)V

    move-object v0, v1

    .line 200
    iget-object v1, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    return-object v0
.end method

.method private getSessionConfigs(Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;)Ljava/util/Collection;
    .locals 4
    .param p1, "attachStateFilter"    # Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachStateFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "sessionConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/impl/SessionConfig;>;"
    iget-object v1, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 209
    .local v2, "attachedUseCase":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    invoke-interface {p1, v3}, Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;->filter(Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    invoke-virtual {v3}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v2    # "attachedUseCase":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;>;"
    :cond_1
    goto :goto_0

    .line 213
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$getActiveAndAttachedSessionConfigs$1(Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;)Z
    .locals 1
    .param p0, "useCaseAttachInfo"    # Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 127
    invoke-virtual {p0}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAttachedSessionConfigs$0(Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;)Z
    .locals 1
    .param p0, "useCaseAttachInfo"    # Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 120
    invoke-virtual {p0}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getActiveAndAttachedBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    .locals 7

    .line 161
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    .line 163
    .local v0, "validatingBuilder":Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 166
    .local v3, "attachedUseCase":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 167
    .local v4, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    invoke-virtual {v4}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 169
    .local v5, "useCaseName":Ljava/lang/String;
    invoke-virtual {v4}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 170
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v3    # "attachedUseCase":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;>;"
    .end local v4    # "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    .end local v5    # "useCaseName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active and attached use case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UseCaseAttachState"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v0
.end method

.method public getActiveAndAttachedSessionConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroidx/camera/core/impl/UseCaseAttachState$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/camera/core/impl/UseCaseAttachState$$ExternalSyntheticLambda1;-><init>()V

    .line 126
    invoke-direct {p0, v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getSessionConfigs(Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    .locals 6

    .line 180
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    .line 181
    .local v0, "validatingBuilder":Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 184
    .local v3, "attachedUseCase":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 185
    .local v4, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    invoke-virtual {v4}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-virtual {v4}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    .local v5, "useCaseName":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "attachedUseCase":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;>;"
    .end local v4    # "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    .end local v5    # "useCaseName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All use case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UseCaseAttachState"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v0
.end method

.method public getAttachedSessionConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Landroidx/camera/core/impl/UseCaseAttachState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/core/impl/UseCaseAttachState$$ExternalSyntheticLambda0;-><init>()V

    .line 120
    invoke-direct {p0, v0}, Landroidx/camera/core/impl/UseCaseAttachState;->getSessionConfigs(Landroidx/camera/core/impl/UseCaseAttachState$AttachStateFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isUseCaseAttached(Ljava/lang/String;)Z
    .locals 2
    .param p1, "useCaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCaseName"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 114
    .local v0, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v1

    return v1
.end method

.method public removeUseCase(Ljava/lang/String;)V
    .locals 1
    .param p1, "useCaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCaseName"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public setUseCaseActive(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)V
    .locals 2
    .param p1, "useCaseName"    # Ljava/lang/String;
    .param p2, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useCaseName",
            "sessionConfig"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/UseCaseAttachState;->getOrCreateUseCaseAttachInfo(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    move-result-object v0

    .line 59
    .local v0, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->setActive(Z)V

    .line 60
    return-void
.end method

.method public setUseCaseAttached(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)V
    .locals 2
    .param p1, "useCaseName"    # Ljava/lang/String;
    .param p2, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useCaseName",
            "sessionConfig"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/UseCaseAttachState;->getOrCreateUseCaseAttachInfo(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    move-result-object v0

    .line 88
    .local v0, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->setAttached(Z)V

    .line 89
    return-void
.end method

.method public setUseCaseDetached(Ljava/lang/String;)V
    .locals 2
    .param p1, "useCaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCaseName"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 101
    .local v0, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->setAttached(Z)V

    .line 102
    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    return-void
.end method

.method public setUseCaseInactive(Ljava/lang/String;)V
    .locals 2
    .param p1, "useCaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCaseName"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 73
    .local v0, "useCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->setActive(Z)V

    .line 74
    invoke-virtual {v0}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    return-void
.end method

.method public updateUseCase(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;)V
    .locals 3
    .param p1, "useCaseName"    # Ljava/lang/String;
    .param p2, "sessionConfig"    # Landroidx/camera/core/impl/SessionConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useCaseName",
            "sessionConfig"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 141
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    invoke-direct {v0, p2}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;-><init>(Landroidx/camera/core/impl/SessionConfig;)V

    .line 145
    .local v0, "newUseCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    iget-object v1, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;

    .line 146
    .local v1, "oldUseCaseAttachInfo":Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;
    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getAttached()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->setAttached(Z)V

    .line 147
    invoke-virtual {v1}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->getActive()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/UseCaseAttachState$UseCaseAttachInfo;->setActive(Z)V

    .line 148
    iget-object v2, p0, Landroidx/camera/core/impl/UseCaseAttachState;->mAttachedUseCasesToInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method
