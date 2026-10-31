.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z

.field private final mCloseables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 126
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Closeable;)V
    .registers 4
    .param p1, "closeables"    # [Ljava/io/Closeable;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 136
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 238
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_12

    .line 240
    :try_start_4
    move-object v0, p0

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_b

    .line 243
    goto :goto_12

    .line 241
    :catch_b
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .registers 4
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    monitor-enter v0

    .line 152
    :try_start_7
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1

    .line 155
    :cond_11
    :goto_11
    return-void
.end method

.method final clear()V
    .registers 4

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 174
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-eqz v0, :cond_27

    .line 175
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    monitor-enter v0

    .line 176
    :try_start_a
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 179
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_14

    .line 180
    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    throw v1

    .line 183
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    if-eqz v0, :cond_49

    .line 184
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    monitor-enter v0

    .line 185
    :try_start_2e
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 186
    .local v2, "closeable":Ljava/io/Closeable;
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 187
    .end local v2    # "closeable":Ljava/io/Closeable;
    goto :goto_34

    .line 188
    :cond_44
    monitor-exit v0

    goto :goto_49

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_46

    throw v1

    .line 190
    :cond_49
    :goto_49
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 191
    return-void
.end method

.method getTag(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_6
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    monitor-enter v0

    .line 233
    :try_start_9
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected onCleared()V
    .registers 1

    .line 165
    return-void
.end method

.method setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 208
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "previous":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_10

    .line 211
    iget-object v2, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 214
    if-nez v1, :cond_15

    move-object v0, p2

    goto :goto_16

    :cond_15
    move-object v0, v1

    .line 215
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :goto_16
    iget-boolean v2, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    if-eqz v2, :cond_1d

    .line 219
    invoke-static {v0}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 221
    :cond_1d
    return-object v0

    .line 213
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    .end local v1    # "previous":Ljava/lang/Object;, "TT;"
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method
