.class public abstract Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "AlertDialogFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Arg::",
        "Landroid/os/Parcelable;",
        "Ret::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlertDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlertDialogFragment.kt\ncom/github/shadowsocks/plugin/fragment/AlertDialogFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 $*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u00010\u00022\u00020\u00042\u00020\u0005:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H$J\u0017\u0010\u0015\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00020\u0017H\u0014\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0013\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010 \u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010#\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"H\u0016R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00028\u00008DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;",
        "Arg",
        "Landroid/os/Parcelable;",
        "Ret",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "<init>",
        "()V",
        "prepare",
        "",
        "Landroidx/appcompat/app/AlertDialog$Builder;",
        "listener",
        "resultKey",
        "",
        "getResultKey",
        "()Ljava/lang/String;",
        "arg",
        "getArg",
        "()Landroid/os/Parcelable;",
        "arg$delegate",
        "Lkotlin/Lazy;",
        "ret",
        "which",
        "",
        "(I)Landroid/os/Parcelable;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Parcelable;)V",
        "key",
        "onCreateDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "savedInstanceState",
        "onClick",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onDismiss",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$Companion;

.field private static final KEY_ARG:Ljava/lang/String; = "arg"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_RET:Ljava/lang/String; = "ret"

.field private static final KEY_WHICH:Ljava/lang/String; = "which"


# instance fields
.field private final arg$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$s6e-DZH-C6a1RPe5emQxMvma7vE(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;)Landroid/os/Parcelable;
    .locals 0

    invoke-static {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->arg_delegate$lambda$0(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->Companion:Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->arg$delegate:Lkotlin/Lazy;

    .line 18
    return-void
.end method

.method private static final arg_delegate$lambda$0(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;)Landroid/os/Parcelable;
    .locals 2
    .param p0, "this$0"    # Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;

    .line 39
    invoke-virtual {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final args()Landroid/os/Bundle;
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 62
    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-also-AlertDialogFragment$args$1":I
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-AlertDialogFragment$args$1":I
    :cond_0
    return-object v0
.end method

.method private final getResultKey()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic key$default(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 44
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->key(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: key"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final arg(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "arg"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TArg;)V"
        }
    .end annotation

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->args()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected final getArg()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TArg;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->arg$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final key(Ljava/lang/String;)V
    .locals 2
    .param p1, "resultKey"    # Ljava/lang/String;

    const-string v0, "resultKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->args()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 50
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->getResultKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v3, v2

    .local v3, "$this$onClick_u24lambda_u243":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$a$-apply-AlertDialogFragment$onClick$1":I
    const-string v5, "which"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->ret(I)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "ret"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    nop

    .end local v3    # "$this$onClick_u24lambda_u243":Landroid/os/Bundle;
    .end local v4    # "$i$a$-apply-AlertDialogFragment$onClick$1":I
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/FragmentKt;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "p0"    # Landroid/os/Bundle;

    .line 18
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 62
    .local v1, "it":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-also-AlertDialogFragment$onCreateDialog$1":I
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v4, p0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->prepare(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .end local v1    # "it":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v2    # "$i$a$-also-AlertDialogFragment$onCreateDialog$1":I
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 59
    return-void
.end method

.method protected abstract prepare(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method protected ret(I)Landroid/os/Parcelable;
    .locals 1
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRet;"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
