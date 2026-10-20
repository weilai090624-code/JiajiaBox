.class public final Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "ConfigEditActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$UnsavedChangesDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigEditActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigEditActivity.kt\nio/nekohasekai/sagernet/ui/profile/ConfigEditActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,192:1\n1#2:193\n65#3,16:194\n93#3,3:210\n975#4:213\n1046#4,3:214\n326#5,4:217\n*S KotlinDebug\n*F\n+ 1 ConfigEditActivity.kt\nio/nekohasekai/sagernet/ui/profile/ConfigEditActivity\n*L\n80#1:194,16\n80#1:210,3\n120#1:213\n120#1:214,3\n128#1:217,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0015J\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u001e\u001a\u00020\u001aJ\u0008\u0010\u001f\u001a\u00020\u001aH\u0016J\u0008\u0010 \u001a\u00020\u0005H\u0016J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020&H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "<init>",
        "()V",
        "dirty",
        "",
        "getDirty",
        "()Z",
        "setDirty",
        "(Z)V",
        "key",
        "",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
        "useConfigStore",
        "getUseConfigStore",
        "setUseConfigStore",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;",
        "setBinding",
        "(Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "formatText",
        "saveAndExit",
        "onBackPressed",
        "onSupportNavigateUp",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "UnsavedChangesDialogFragment",
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
.field public binding:Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

.field private dirty:Z

.field private key:Ljava/lang/String;

.field private useConfigStore:Z


# direct methods
.method public static synthetic $r8$lambda$BrQYqPJR0QJ8JXca8xt3xOU51IE(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->onCreate$lambda$7(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gp53sRweares2KxUh_dcNxTtW98(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->onCreate$lambda$14(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LxTMtZeuDmdYTghVrFA_hQz0lqk(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->onCreate$lambda$11(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-rYrEeqyQhnxqEZMKUMqvEb6rw(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->onCreate$lambda$8(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMWvoWExsRvrfzFoSqs-cyGYt3g(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->onCreate$lambda$10(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lN4NMz4bkJdhQcpEQLgAqpN6fWM(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->onCreate$lambda$6(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>()V

    .line 35
    const-string v0, "serverConfig"

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private static final onCreate$lambda$10(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->formatText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$a$-let-ConfigEditActivity$onCreate$7$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextContent(Ljava/lang/CharSequence;)V

    .line 109
    nop

    .line 107
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-ConfigEditActivity$onCreate$7$1":I
    nop

    .line 110
    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$11(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;
    .param p1, "char"    # Ljava/lang/String;

    const-string v0, "char"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    nop

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v1, "editor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->insert(Landroid/widget/EditText;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$14(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "windowInsets"    # Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .local v0, "imeInsets":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 127
    .local v1, "systemBarInsets":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v2

    .line 128
    .local v2, "imeVisible":Z
    move-object v3, p0

    .local v3, "$this$updateLayoutParams$iv":Landroid/view/View;
    const/4 v4, 0x0

    .line 217
    .local v4, "$i$f$updateLayoutParamsTyped":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_1

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    .line 218
    .local v5, "params$iv":Landroid/view/ViewGroup$LayoutParams;
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v6, "$this$onCreate_u24lambda_u2414_u24lambda_u2413":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v7, 0x0

    .line 130
    .local v7, "$i$a$-updateLayoutParamsTyped-ConfigEditActivity$onCreate$10$1":I
    if-eqz v2, :cond_0

    .line 131
    iget v8, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v9, v1, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v8, v9

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 133
    :cond_0
    const/4 v8, 0x0

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 135
    :goto_0
    nop

    .line 218
    .end local v6    # "$this$onCreate_u24lambda_u2414_u24lambda_u2413":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "$i$a$-updateLayoutParamsTyped-ConfigEditActivity$onCreate$10$1":I
    nop

    .line 219
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    nop

    .line 137
    .end local v3    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .end local v4    # "$i$f$updateLayoutParamsTyped":I
    .end local v5    # "params$iv":Landroid/view/ViewGroup$LayoutParams;
    sget-object v3, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object v3

    .line 217
    .restart local v3    # "$this$updateLayoutParams$iv":Landroid/view/View;
    .restart local v4    # "$i$f$updateLayoutParamsTyped":I
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static final onCreate$lambda$6(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 89
    nop

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v1, "editor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->tab()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->insert(Landroid/widget/EditText;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$7(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 95
    nop

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->undo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$8(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 101
    nop

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->redo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    :goto_0
    return-void
.end method


# virtual methods
.method public final formatText()Ljava/lang/String;
    .locals 3

    .line 144
    nop

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "txt":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string v1, ""

    return-object v1

    .line 149
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->toStringPretty(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 150
    .end local v0    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1300eb

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 152
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 153
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDirty()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->dirty:Z

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseConfigStore()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->useConfigStore:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 6

    .line 169
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->dirty:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$UnsavedChangesDialogFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$UnsavedChangesDialogFragment;-><init>()V

    move-object v1, v0

    .line 193
    .local v1, "$this$onBackPressed_u24lambda_u2416":Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$UnsavedChangesDialogFragment;
    const/4 v2, 0x0

    .line 169
    .local v2, "$i$a$-apply-ConfigEditActivity$onBackPressed$1":I
    move-object v3, v1

    check-cast v3, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->key$default(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 170
    .end local v1    # "$this$onBackPressed_u24lambda_u2416":Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$UnsavedChangesDialogFragment;
    .end local v2    # "$i$a$-apply-ConfigEditActivity$onBackPressed$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$UnsavedChangesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onBackPressed()V

    .line 171
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "$this$onCreate_u24lambda_u242":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 58
    .local v2, "$i$a$-apply-ConfigEditActivity$onCreate$1":I
    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 193
    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 58
    .local v4, "$i$a$-let-ConfigEditActivity$onCreate$1$1":I
    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    .line 59
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ConfigEditActivity$onCreate$1$1":I
    :cond_0
    const-string v3, "useConfigStore"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 193
    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$a$-let-ConfigEditActivity$onCreate$1$2":I
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->useConfigStore:Z

    .line 60
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ConfigEditActivity$onCreate$1$2":I
    :cond_1
    nop

    .line 57
    .end local v0    # "$this$onCreate_u24lambda_u242":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-ConfigEditActivity$onCreate$1":I
    :cond_2
    nop

    .line 62
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->setBinding(Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;)V

    .line 63
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->setContentView(Landroid/view/View;)V

    .line 65
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 66
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "$this$onCreate_u24lambda_u243":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x0

    .line 67
    .local v2, "$i$a$-apply-ConfigEditActivity$onCreate$2":I
    const v3, 0x7f13009c

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 68
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    const v3, 0x7f080107

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 70
    nop

    .line 66
    .end local v0    # "$this$onCreate_u24lambda_u243":Landroidx/appcompat/app/ActionBar;
    .end local v2    # "$i$a$-apply-ConfigEditActivity$onCreate$2":I
    nop

    .line 72
    :cond_3
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    .local v0, "$this$onCreate_u24lambda_u245":Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-apply-ConfigEditActivity$onCreate$3":I
    new-instance v3, Lcom/blacksquircle/ui/language/json/JsonLanguage;

    invoke-direct {v3}, Lcom/blacksquircle/ui/language/json/JsonLanguage;-><init>()V

    check-cast v3, Lcom/blacksquircle/ui/language/base/Language;

    invoke-virtual {v0, v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setLanguage(Lcom/blacksquircle/ui/language/base/Language;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setHorizontallyScrolling(Z)V

    .line 75
    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->useConfigStore:Z

    const-string v4, ""

    if-eqz v3, :cond_5

    .line 76
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v3

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, v3

    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 78
    :cond_5
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v3

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextContent(Ljava/lang/CharSequence;)V

    .line 80
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 194
    .local v3, "$this$addTextChangedListener_u24default$iv":Landroid/widget/TextView;
    nop

    .line 200
    nop

    .line 194
    nop

    .line 206
    nop

    .line 194
    const/4 v4, 0x0

    .line 209
    .local v4, "$i$f$addTextChangedListener":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$onCreate$lambda$5$$inlined$addTextChangedListener$default$1;

    invoke-direct {v5, p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$onCreate$lambda$5$$inlined$addTextChangedListener$default$1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;)V

    .line 210
    .local v5, "textWatcher$iv":Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$onCreate$lambda$5$$inlined$addTextChangedListener$default$1;
    move-object v6, v5

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    move-object v3, v5

    check-cast v3, Landroid/text/TextWatcher;

    .line 86
    .end local v3    # "$this$addTextChangedListener_u24default$iv":Landroid/widget/TextView;
    .end local v4    # "$i$f$addTextChangedListener":I
    .end local v5    # "textWatcher$iv":Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$onCreate$lambda$5$$inlined$addTextChangedListener$default$1;
    nop

    .line 72
    .end local v0    # "$this$onCreate_u24lambda_u245":Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .end local v2    # "$i$a$-apply-ConfigEditActivity$onCreate$3":I
    nop

    .line 88
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionTab:Landroid/widget/ImageView;

    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionUndo:Landroid/widget/ImageView;

    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionRedo:Landroid/widget/ImageView;

    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionFormat:Landroid/widget/ImageView;

    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;

    .line 113
    .local v0, "extendedKeyboard":Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;
    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;)V

    invoke-virtual {v0, v2}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;->setKeyListener(Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;)V

    .line 119
    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;->setHasFixedSize(Z)V

    .line 120
    const-string v1, "{},:_\""

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "$this$map$iv":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 213
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$f$mapTo":I
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 215
    .local v7, "item$iv$iv":C
    move v8, v7

    .local v8, "it":C
    const/4 v9, 0x0

    .line 120
    .local v9, "$i$a$-map-ConfigEditActivity$onCreate$9":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    .line 215
    .end local v8    # "it":C
    .end local v9    # "$i$a$-map-ConfigEditActivity$onCreate$9":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v7    # "item$iv$iv":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 216
    :cond_7
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/CharSequence;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 213
    nop

    .line 120
    .end local v1    # "$this$map$iv":Ljava/lang/CharSequence;
    .end local v2    # "$i$f$map":I
    invoke-virtual {v0, v3}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;->submitList(Ljava/util/List;)V

    .line 121
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0403cb

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;->setBackgroundColor(I)V

    .line 123
    const v1, 0x7f0a0183

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 124
    .local v1, "keyboardContainer":Landroid/widget/LinearLayout;
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    new-instance v3, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 140
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v3, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v3, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 185
    const v1, 0x7f0a0036

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->saveAndExit()V

    .line 187
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 174
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->finish()V

    .line 175
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final saveAndExit()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->formatText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 159
    .local v1, "$i$a$-let-ConfigEditActivity$saveAndExit$1":I
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->useConfigStore:Z

    if-eqz v2, :cond_0

    .line 160
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->finish()V

    .line 165
    nop

    .line 158
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-ConfigEditActivity$saveAndExit$1":I
    nop

    .line 166
    :cond_1
    return-void
.end method

.method public final setBinding(Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    return-void
.end method

.method public final setDirty(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 34
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->dirty:Z

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->key:Ljava/lang/String;

    return-void
.end method

.method public final setUseConfigStore(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 36
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/profile/ConfigEditActivity;->useConfigStore:Z

    return-void
.end method
