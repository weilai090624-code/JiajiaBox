.class public final Lio/nekohasekai/sagernet/widget/LinkOrContentPreference$_init_$lambda$1$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/widget/LinkOrContentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 LinkOrContentPreference.kt\nio/nekohasekai/sagernet/widget/LinkOrContentPreference\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n62#2,2:98\n71#3:100\n77#4:101\n*E\n"
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
.field final synthetic $it$inlined:Landroid/widget/EditText;

.field final synthetic $linkLayout$inlined:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/LinkOrContentPreference$_init_$lambda$1$$inlined$addTextChangedListener$default$1;->$it$inlined:Landroid/widget/EditText;

    iput-object p2, p0, Lio/nekohasekai/sagernet/widget/LinkOrContentPreference$_init_$lambda$1$$inlined$addTextChangedListener$default$1;->$linkLayout$inlined:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 82
    move-object v0, p1

    .local v0, "it":Landroid/text/Editable;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$a$-addTextChangedListener$default-LinkOrContentPreference$1$1":I
    iget-object v2, p0, Lio/nekohasekai/sagernet/widget/LinkOrContentPreference$_init_$lambda$1$$inlined$addTextChangedListener$default$1;->$it$inlined:Landroid/widget/EditText;

    iget-object v3, p0, Lio/nekohasekai/sagernet/widget/LinkOrContentPreference$_init_$lambda$1$$inlined$addTextChangedListener$default$1;->$linkLayout$inlined:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/widget/LinkOrContentPreference;->access$lambda$1$validate(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 99
    nop

    .line 82
    .end local v0    # "it":Landroid/text/Editable;
    .end local v1    # "$i$a$-addTextChangedListener$default-LinkOrContentPreference$1$1":I
    nop

    .line 83
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
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
    .locals 1
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
