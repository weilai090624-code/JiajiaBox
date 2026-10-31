.class public final synthetic Lcom/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;
.super Ljava/lang/Object;
.source "TextScroller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blacksquircle/ui/editorkit/widget/TextScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->values()[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    :try_start_28
    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v1

    :goto_33
    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
