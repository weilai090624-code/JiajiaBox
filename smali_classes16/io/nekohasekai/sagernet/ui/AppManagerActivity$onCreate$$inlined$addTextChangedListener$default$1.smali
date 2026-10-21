.class public final Lio/nekohasekai/sagernet/ui/AppManagerActivity$onCreate$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AppManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 AppManagerActivity.kt\nio/nekohasekai/sagernet/ui/AppManagerActivity\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n244#2,2:98\n71#3:100\n77#4:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
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
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppManagerActivity;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/AppManagerActivity;)V
    .registers 2

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppManagerActivity$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lio/nekohasekai/sagernet/ui/AppManagerActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .line 82
    move-object v0, p1

    .local v0, "it":Landroid/text/Editable;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$a$-addTextChangedListener$default-AppManagerActivity$onCreate$5":I
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppManagerActivity$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lio/nekohasekai/sagernet/ui/AppManagerActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppManagerActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AppManagerActivity;->access$getAppsAdapter$p(Lio/nekohasekai/sagernet/ui/AppManagerActivity;)Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/AppManagerActivity$AppsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    :cond_14
    const-string v3, ""

    :cond_16
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 99
    nop

    .line 82
    .end local v0    # "it":Landroid/text/Editable;
    .end local v1    # "$i$a$-addTextChangedListener$default-AppManagerActivity$onCreate$5":I
    nop

    .line 83
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 86
    const/4 v0, 0x0

    .line 100
    .local v0, "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$1":I
    nop

    .line 86
    .end local v0    # "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$1":I
    nop

    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 90
    const/4 v0, 0x0

    .line 101
    .local v0, "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$2":I
    nop

    .line 90
    .end local v0    # "$i$a$-addTextChangedListener-TextViewKt$addTextChangedListener$2":I
    nop

    .line 91
    return-void
.end method
