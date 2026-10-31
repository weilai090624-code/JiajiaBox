.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$State;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 407
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 411
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v1, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 415
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v1, "GONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 419
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v1, "INVISIBLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 4
    .param p0, "visibility"    # I

    .line 444
    sparse-switch p0, :sswitch_data_26

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :sswitch_1c
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0

    .line 448
    :sswitch_1f
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0

    .line 446
    :sswitch_22
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_22
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1c
    .end sparse-switch
.end method

.method static from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 431
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0

    .line 433
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 403
    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 1

    .line 403
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method


# virtual methods
.method applyState(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 462
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "SpecialEffectsController: Setting view "

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_b6

    goto/16 :goto_b4

    .line 488
    :pswitch_12
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_32
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b4

    .line 481
    :pswitch_38
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to GONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_58
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    goto :goto_b4

    .line 474
    :pswitch_5e
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_7e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 479
    goto :goto_b4

    .line 464
    :pswitch_83
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 465
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_b4

    .line 466
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialEffectsController: Removing view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from container "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_b1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_b4
    :goto_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_83
        :pswitch_5e
        :pswitch_38
        :pswitch_12
    .end packed-switch
.end method
