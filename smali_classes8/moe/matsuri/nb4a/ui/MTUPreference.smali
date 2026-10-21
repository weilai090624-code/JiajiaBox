.class public final Lmoe/matsuri/nb4a/ui/MTUPreference;
.super Landroidx/preference/ListPreference;
.source "MTUPreference.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/ui/MTUPreference;",
        "Landroidx/preference/ListPreference;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "onBindViewHolder",
        "",
        "holder",
        "Landroidx/preference/PreferenceViewHolder;",
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


# direct methods
.method public static synthetic $r8$lambda$BRlcW0p8PU0fQD_Bozx2j7438GM(Lmoe/matsuri/nb4a/ui/MTUPreference;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/MTUPreference;->onBindViewHolder$lambda$3(Lmoe/matsuri/nb4a/ui/MTUPreference;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UNlePkeyxRRtkWvwDgQzBQpAILs(Lmoe/matsuri/nb4a/ui/MTUPreference;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/MTUPreference;->_init_$lambda$0(Lmoe/matsuri/nb4a/ui/MTUPreference;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kq2O-f_0AMPPKBw5f_4-SwAU2AA(Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/MTUPreference;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmoe/matsuri/nb4a/ui/MTUPreference;->onBindViewHolder$lambda$3$lambda$2(Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/MTUPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lmoe/matsuri/nb4a/ui/MTUPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lmoe/matsuri/nb4a/ui/MTUPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    nop

    .line 19
    new-instance v0, Lmoe/matsuri/nb4a/ui/MTUPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/ui/MTUPreference$$ExternalSyntheticLambda1;-><init>(Lmoe/matsuri/nb4a/ui/MTUPreference;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 22
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->setDialogLayoutResource(I)V

    .line 23
    nop

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 14
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    .line 15
    const/4 p2, 0x0

    .line 14
    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    .line 15
    const p3, 0x7f040190

    .line 14
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lmoe/matsuri/nb4a/ui/MTUPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method private static final _init_$lambda$0(Lmoe/matsuri/nb4a/ui/MTUPreference;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "this$0"    # Lmoe/matsuri/nb4a/ui/MTUPreference;
    .param p1, "it"    # Landroidx/preference/Preference;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static final onBindViewHolder$lambda$3(Lmoe/matsuri/nb4a/ui/MTUPreference;Landroid/view/View;)Z
    .registers 8
    .param p0, "this$0"    # Lmoe/matsuri/nb4a/ui/MTUPreference;
    .param p1, "it"    # Landroid/view/View;

    .line 29
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$onBindViewHolder_u24lambda_u243_u24lambda_u241":Landroid/widget/EditText;
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-apply-MTUPreference$onBindViewHolder$1$view$1":I
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 31
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_23

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroidx/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    move-object v4, v3

    :cond_23
    :goto_23
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    nop

    .line 29
    .end local v1    # "$this$onBindViewHolder_u24lambda_u243_u24lambda_u241":Landroid/widget/EditText;
    .end local v2    # "$i$a$-apply-MTUPreference$onBindViewHolder$1$view$1":I
    nop

    .line 34
    .local v0, "view":Landroid/widget/EditText;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/MTUPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v2, "MTU"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 35
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 36
    new-instance v2, Lmoe/matsuri/nb4a/ui/MTUPreference$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p0}, Lmoe/matsuri/nb4a/ui/MTUPreference$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/MTUPreference;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 41
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 43
    const/4 v1, 0x1

    return v1
.end method

.method private static final onBindViewHolder$lambda$3$lambda$2(Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/MTUPreference;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p0, "$view"    # Landroid/widget/EditText;
    .param p1, "this$0"    # Lmoe/matsuri/nb4a/ui/MTUPreference;

    .line 37
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 38
    .local p2, "mtu":I
    const/16 p3, 0x3e8

    if-lt p2, p3, :cond_1d

    const/16 p3, 0x2710

    if-le p2, p3, :cond_15

    goto :goto_1d

    .line 39
    :cond_15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmoe/matsuri/nb4a/ui/MTUPreference;->setValue(Ljava/lang/String;)V

    .line 40
    return-void

    .line 38
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 27
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lmoe/matsuri/nb4a/ui/MTUPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmoe/matsuri/nb4a/ui/MTUPreference$$ExternalSyntheticLambda0;-><init>(Lmoe/matsuri/nb4a/ui/MTUPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 45
    return-void
.end method

.method protected onClick()V
    .registers 1

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog;->show(Landroidx/preference/ListPreference;)V

    return-void
.end method
