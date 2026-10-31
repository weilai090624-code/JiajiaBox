.class Landroidx/preference/PreferenceGroup$1;
.super Ljava/lang/Object;
.source "PreferenceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/preference/PreferenceGroup;

    .line 73
    iput-object p1, p0, Landroidx/preference/PreferenceGroup$1;->this$0:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 76
    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup$1;->this$0:Landroidx/preference/PreferenceGroup;

    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
