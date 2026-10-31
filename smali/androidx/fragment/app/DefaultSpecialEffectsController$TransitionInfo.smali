.class Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionInfo"
.end annotation


# instance fields
.field private final mOverlapAllowed:Z

.field private final mSharedElementTransition:Ljava/lang/Object;

.field private final mTransition:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V
    .registers 7
    .param p1, "operation"    # Landroidx/fragment/app/SpecialEffectsController$Operation;
    .param p2, "signal"    # Landroidx/core/os/CancellationSignal;
    .param p3, "isPop"    # Z
    .param p4, "providesSharedElementTransition"    # Z

    .line 918
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 919
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_36

    .line 920
    if-eqz p3, :cond_16

    .line 921
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    .line 922
    :cond_16
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 925
    if-eqz p3, :cond_2b

    .line 926
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    goto :goto_33

    .line 927
    :cond_2b
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    goto :goto_4e

    .line 929
    :cond_36
    if-eqz p3, :cond_41

    .line 930
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_49

    .line 931
    :cond_41
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_49
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    .line 935
    :goto_4e
    if-eqz p4, :cond_6a

    .line 936
    if-eqz p3, :cond_5e

    .line 937
    nop

    .line 938
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_6d

    .line 940
    :cond_5e
    nop

    .line 941
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    goto :goto_6d

    .line 944
    :cond_6a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 946
    :goto_6d
    return-void
.end method

.method private getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 5
    .param p1, "transition"    # Ljava/lang/Object;

    .line 985
    if-nez p1, :cond_4

    .line 986
    const/4 v0, 0x0

    return-object v0

    .line 988
    :cond_4
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_13

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 989
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 990
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v0

    .line 992
    :cond_13
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 993
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 994
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Landroidx/fragment/app/FragmentTransitionImpl;

    return-object v0

    .line 996
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 997
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;
    .registers 6

    .line 968
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    .line 969
    .local v0, "transitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 970
    invoke-direct {p0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v1

    .line 971
    .local v1, "sharedElementTransitionImpl":Landroidx/fragment/app/FragmentTransitionImpl;
    if-eqz v0, :cond_4c

    if-eqz v1, :cond_4c

    if-ne v0, v1, :cond_13

    goto :goto_4c

    .line 973
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 975
    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned Transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 980
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_50

    move-object v2, v0

    goto :goto_51

    :cond_50
    move-object v2, v1

    :goto_51
    return-object v2
.end method

.method public getSharedElementTransition()Ljava/lang/Object;
    .registers 2

    .line 963
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getTransition()Ljava/lang/Object;
    .registers 2

    .line 950
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSharedElementTransition()Z
    .registers 2

    .line 958
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isOverlapAllowed()Z
    .registers 2

    .line 954
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    return v0
.end method
