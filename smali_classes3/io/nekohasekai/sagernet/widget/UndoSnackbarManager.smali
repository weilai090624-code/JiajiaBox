.class public final Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
.super Ljava/lang/Object;
.source "UndoSnackbarManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000K\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u0011\n\u0002\u0008\u0005*\u0001\u000f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002:\u0001\u001bB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J \u0010\u0013\u001a\u00020\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u00000\u000b0\u0016J7\u0010\u0013\u001a\u00020\u00142*\u0010\u0015\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u00000\u000b0\u0017\"\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u0002\u0010\u0018J\r\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\t\u001a*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u00000\u000b0\nj\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u00000\u000b`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;",
        "T",
        "",
        "activity",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "callback",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/ThemedActivity;Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;)V",
        "recycleBin",
        "Ljava/util/ArrayList;",
        "Lkotlin/Pair;",
        "",
        "Lkotlin/collections/ArrayList;",
        "removedCallback",
        "io/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;",
        "last",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "remove",
        "",
        "items",
        "",
        "",
        "([Lkotlin/Pair;)V",
        "flush",
        "()Lkotlin/Unit;",
        "Interface",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activity:Lio/nekohasekai/sagernet/ui/ThemedActivity;

.field private final callback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private last:Lcom/google/android/material/snackbar/Snackbar;

.field private final recycleBin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final removedCallback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;


# direct methods
.method public static synthetic $r8$lambda$KT_rYdve__iasjvnmsFhlB5ards(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->remove$lambda$1$lambda$0(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/ThemedActivity;Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;)V
    .locals 1
    .param p1, "activity"    # Lio/nekohasekai/sagernet/ui/ThemedActivity;
    .param p2, "callback"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->activity:Lio/nekohasekai/sagernet/ui/ThemedActivity;

    .line 16
    iput-object p2, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->callback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;-><init>(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->removedCallback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;

    .line 14
    return-void
.end method

.method public static final synthetic access$getCallback$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    .line 14
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->callback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;

    return-object v0
.end method

.method public static final synthetic access$getLast$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    .line 14
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->last:Lcom/google/android/material/snackbar/Snackbar;

    return-object v0
.end method

.method public static final synthetic access$getRecycleBin$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    .line 14
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$setLast$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .param p1, "<set-?>"    # Lcom/google/android/material/snackbar/Snackbar;

    .line 14
    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->last:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method private static final remove$lambda$1$lambda$0(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .param p1, "it"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->callback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;

    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;->undo(Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    return-void
.end method


# virtual methods
.method public final flush()Lkotlin/Unit;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->last:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final remove(Ljava/util/Collection;)V
    .locals 6
    .param p1, "items"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 40
    .local v0, "count":I
    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->activity:Lio/nekohasekai/sagernet/ui/ThemedActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->activity:Lio/nekohasekai/sagernet/ui/ThemedActivity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const v3, 0x7f110003

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getQuantityString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    .line 41
    nop

    .local v1, "$this$remove_u24lambda_u241":Lcom/google/android/material/snackbar/Snackbar;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-apply-UndoSnackbarManager$remove$1":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->removedCallback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;

    check-cast v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, v3}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 43
    new-instance v3, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V

    const v4, 0x7f1302bf

    invoke-virtual {v1, v4, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 47
    iput-object v1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->last:Lcom/google/android/material/snackbar/Snackbar;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 49
    nop

    .line 41
    .end local v1    # "$this$remove_u24lambda_u241":Lcom/google/android/material/snackbar/Snackbar;
    .end local v2    # "$i$a$-apply-UndoSnackbarManager$remove$1":I
    nop

    .line 50
    return-void
.end method

.method public final varargs remove([Lkotlin/Pair;)V
    .locals 1
    .param p1, "items"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->remove(Ljava/util/Collection;)V

    return-void
.end method
