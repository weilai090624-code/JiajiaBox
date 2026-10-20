.class public final enum Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;
.super Ljava/lang/Enum;
.source "TextScroller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blacksquircle/ui/editorkit/widget/TextScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;",
        "",
        "(Ljava/lang/String;I)V",
        "HIDDEN",
        "VISIBLE",
        "DRAGGING",
        "EXITING",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum DRAGGING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum EXITING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum HIDDEN:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

.field public static final enum VISIBLE:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;


# direct methods
.method private static final synthetic $values()[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 262
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    .line 263
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    .line 264
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "DRAGGING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    .line 265
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    const-string v1, "EXITING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-static {}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->$values()[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->$VALUES:[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 1

    const-class v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    return-object v0
.end method

.method public static values()[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 1

    sget-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;->$VALUES:[Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blacksquircle/ui/editorkit/widget/TextScroller$State;

    return-object v0
.end method
