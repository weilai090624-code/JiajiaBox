.class public final Lmoe/matsuri/nb4a/ui/UrlTestPreference;
.super Landroidx/preference/EditTextPreference;
.source "UrlTestPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUrlTestPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlTestPreference.kt\nmoe/matsuri/nb4a/ui/UrlTestPreference\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,50:1\n256#2,2:51\n*S KotlinDebug\n*F\n+ 1 UrlTestPreference.kt\nmoe/matsuri/nb4a/ui/UrlTestPreference\n*L\n35#1:51,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/ui/UrlTestPreference;",
        "Landroidx/preference/EditTextPreference;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "concurrent",
        "Landroid/widget/EditText;",
        "getConcurrent",
        "()Landroid/widget/EditText;",
        "setConcurrent",
        "(Landroid/widget/EditText;)V",
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
.field private concurrent:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$NYSb7H5ezcRCAk4mDuUqANzTe-Q(Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->_init_$lambda$3(Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_LQnIG4NM742rBzCMInkXWzKSUI(Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroid/widget/EditText;)V
    .registers 2

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->_init_$lambda$1(Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    nop

    .line 28
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->setDialogLayoutResource(I)V

    .line 30
    new-instance v0, Lmoe/matsuri/nb4a/ui/UrlTestPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference$$ExternalSyntheticLambda0;-><init>(Lmoe/matsuri/nb4a/ui/UrlTestPreference;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    .line 38
    new-instance v0, Lmoe/matsuri/nb4a/ui/UrlTestPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference$$ExternalSyntheticLambda1;-><init>(Lmoe/matsuri/nb4a/ui/UrlTestPreference;)V

    invoke-virtual {p0, v0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    nop

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    .line 14
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    .line 17
    const/4 p2, 0x0

    .line 14
    :cond_5
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_16

    .line 18
    nop

    .line 19
    nop

    .line 20
    nop

    .line 18
    const p3, 0x7f040195

    const p6, 0x1010092

    invoke-static {p1, p3, p6}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result p3

    .line 14
    :cond_16
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1b

    .line 22
    const/4 p4, 0x0

    .line 14
    :cond_1b
    invoke-direct {p0, p1, p2, p3, p4}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method

.method private static final _init_$lambda$1(Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroid/widget/EditText;)V
    .registers 6
    .param p0, "this$0"    # Lmoe/matsuri/nb4a/ui/UrlTestPreference;
    .param p1, "it"    # Landroid/widget/EditText;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->concurrent:Landroid/widget/EditText;

    .line 32
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->concurrent:Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .local v0, "$this$lambda_u241_u24lambda_u240":Landroid/widget/EditText;
    const/4 v1, 0x0

    .line 33
    .local v1, "$i$a$-apply-UrlTestPreference$1$1":I
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getConnectionTestConcurrent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    nop

    .line 32
    .end local v0    # "$this$lambda_u241_u24lambda_u240":Landroid/widget/EditText;
    .end local v1    # "$i$a$-apply-UrlTestPreference$1$1":I
    nop

    .line 35
    :cond_2a
    invoke-virtual {p1}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_42

    check-cast v0, Landroid/view/View;

    .local v0, "$this$isVisible$iv":Landroid/view/View;
    const/4 v1, 0x1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 51
    .local v2, "$i$f$setVisible":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    nop

    .line 36
    .end local v0    # "$this$isVisible$iv":Landroid/view/View;
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$setVisible":I
    :cond_42
    return-void
.end method

.method private static final _init_$lambda$3(Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .param p0, "this$0"    # Lmoe/matsuri/nb4a/ui/UrlTestPreference;

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->concurrent:Landroid/widget/EditText;

    if-eqz p1, :cond_34

    .local p1, "$this$lambda_u243_u24lambda_u242":Landroid/widget/EditText;
    const/4 p2, 0x0

    .line 40
    .local p2, "$i$a$-apply-UrlTestPreference$2$1":I
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 41
    .local v0, "newConcurrent":Ljava/lang/Integer;
    :goto_1c
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_29

    .line 42
    :cond_24
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    :cond_29
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setConnectionTestConcurrent(I)V

    .line 45
    nop

    .line 39
    .end local v0    # "newConcurrent":Ljava/lang/Integer;
    .end local p1    # "$this$lambda_u243_u24lambda_u242":Landroid/widget/EditText;
    .end local p2    # "$i$a$-apply-UrlTestPreference$2$1":I
    nop

    .line 46
    :cond_34
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getConcurrent()Landroid/widget/EditText;
    .registers 2

    .line 25
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->concurrent:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onClick()V
    .registers 1

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->editUrl(Lmoe/matsuri/nb4a/ui/UrlTestPreference;)V

    return-void
.end method

.method public final setConcurrent(Landroid/widget/EditText;)V
    .registers 2
    .param p1, "<set-?>"    # Landroid/widget/EditText;

    .line 25
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->concurrent:Landroid/widget/EditText;

    return-void
.end method
