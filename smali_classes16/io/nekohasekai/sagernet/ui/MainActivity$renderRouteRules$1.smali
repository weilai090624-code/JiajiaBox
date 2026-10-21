.class final Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/MainActivity;->renderRouteRules(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1538:1\n1863#2:1539\n1864#2:1541\n1#3:1540\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1\n*L\n821#1:1539\n821#1:1541\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.ui.MainActivity$renderRouteRules$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x32e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $column:Landroid/widget/LinearLayout;

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$-Catlj4-6MDHMmxq_xo5nRudQb8(Lio/nekohasekai/sagernet/database/RuleEntity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->invokeSuspend$lambda$15$lambda$14$lambda$4$lambda$3(Lio/nekohasekai/sagernet/database/RuleEntity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$32B7YHWliTjgW-ODcVCzcKIwG4c(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->invokeSuspend$lambda$15$lambda$14$lambda$9(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K4_y6CNVY_fPiCDZn2Nk_NBqIk8(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->invokeSuspend$lambda$15(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x_HeoR4j3Kmru-445n7BbaNb3Jw(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->invokeSuspend$lambda$15$lambda$14$lambda$8(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/MainActivity;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->$column:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$15(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .registers 22
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$rules"    # Ljava/util/List;
    .param p2, "$column"    # Landroid/widget/LinearLayout;

    .line 816
    move-object/from16 v7, p0

    # getter for: Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z
    invoke-static/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$getGlassExpanded$p(Lio/nekohasekai/sagernet/ui/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_226

    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v2, p2

    goto/16 :goto_228

    .line 817
    :cond_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 818
    const v0, 0x7f130261

    invoke-virtual {v7, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 819
    return-void

    .line 821
    :cond_37
    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 1539
    .local v8, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_223

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local v11, "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v12, 0x0

    .line 822
    .local v12, "$i$a$-forEach-MainActivity$renderRouteRules$1$1$1":I
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, v7

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u240":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 823
    .local v2, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$inner$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 824
    const/high16 v3, 0x41400000    # 12.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v13, 0x41000000    # 8.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v13}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v5

    float-to-int v5, v5

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v14, 0x40c00000    # 6.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v14}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v1, v4, v5, v3, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 825
    nop

    .line 822
    .end local v1    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u240":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$inner$1":I
    move-object v15, v0

    .line 826
    .local v15, "inner":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, v7

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u241":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 827
    .local v2, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$head$1":I
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 828
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 829
    nop

    .line 826
    .end local v1    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u241":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$head$1":I
    move-object v4, v0

    .line 830
    .local v4, "head":Landroid/widget/LinearLayout;
    nop

    .line 831
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v7

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayName()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    const-string v17, "#FFFFFF"

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    move-object v14, v4

    .end local v4    # "head":Landroid/widget/LinearLayout;
    .local v14, "head":Landroid/widget/LinearLayout;
    move/from16 v4, v16

    const/4 v13, 0x0

    move-object/from16 v5, v17

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;
    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$glassText(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 832
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    invoke-direct {v1, v13, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 830
    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    nop

    .line 835
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v7

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayOutbound()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v17, "#B8B8C0"

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    const/4 v13, -0x2

    move-object/from16 v5, v17

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;
    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$glassText(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 836
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 837
    nop

    .line 838
    nop

    .line 836
    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 839
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u242":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 839
    .local v3, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$1":I
    const/high16 v4, 0x41000000    # 8.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .end local v2    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u242":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 834
    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    move-object v1, v7

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u244":Landroidx/appcompat/widget/SwitchCompat;
    const/4 v2, 0x0

    .line 842
    .local v2, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$enable$1":I
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/database/RuleEntity;->getEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 843
    new-instance v3, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v11}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 849
    nop

    .line 841
    .end local v1    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u244":Landroidx/appcompat/widget/SwitchCompat;
    .end local v2    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$enable$1":I
    move-object/from16 v17, v0

    .line 850
    .local v17, "enable":Landroidx/appcompat/widget/SwitchCompat;
    nop

    .line 851
    move-object/from16 v0, v17

    check-cast v0, Landroid/view/View;

    .line 852
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    nop

    .line 854
    nop

    .line 852
    invoke-direct {v1, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 850
    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    move-object v0, v14

    check-cast v0, Landroid/view/View;

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    nop

    .line 859
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v7

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 860
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/database/RuleEntity;->mkSummary()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 1540
    const/4 v0, 0x0

    .line 860
    .local v0, "$i$a$-ifBlank-MainActivity$renderRouteRules$1$1$1$2":I
    nop

    .end local v0    # "$i$a$-ifBlank-MainActivity$renderRouteRules$1$1$1$2":I
    const-string v0, "\u2014"

    :cond_142
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 859
    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const-string v5, "#B8B8C0"

    move-object/from16 v0, p0

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;
    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$glassText(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 862
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 863
    nop

    .line 864
    nop

    .line 862
    const/4 v2, -0x1

    invoke-direct {v1, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 865
    nop

    .line 1540
    move-object v3, v1

    .local v3, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u246":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    .line 865
    .local v4, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$3":I
    const/high16 v5, 0x40400000    # 3.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v3    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u246":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$3":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 858
    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, v7

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u247":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 868
    .local v3, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$actions$1":I
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 869
    const v4, 0x800005

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 870
    nop

    .line 867
    .end local v1    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u247":Landroid/widget/LinearLayout;
    .end local v3    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$actions$1":I
    nop

    .line 871
    .local v0, "actions":Landroid/widget/LinearLayout;
    nop

    .line 872
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7, v11}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V

    const-string v3, "\u7f16\u8f91"

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;
    invoke-static {v7, v3, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$glassMenuButton(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v1

    .line 873
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 874
    nop

    .line 875
    nop

    .line 873
    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 871
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    nop

    .line 879
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7, v11}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V

    const-string v3, "\u5220\u9664"

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;
    invoke-static {v7, v3, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$glassMenuButton(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v1

    .line 880
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 881
    nop

    .line 882
    nop

    .line 880
    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 883
    nop

    .line 1540
    move-object v4, v3

    .local v4, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2410":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    .line 883
    .local v5, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$6":I
    const/high16 v2, 0x40c00000    # 6.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .end local v4    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2410":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$6":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 878
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    nop

    .line 886
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 887
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 888
    nop

    .line 889
    nop

    .line 887
    const/4 v3, -0x1

    invoke-direct {v2, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 890
    nop

    .line 1540
    move-object v3, v2

    .local v3, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2411":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    .line 890
    .local v4, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$7":I
    const/high16 v5, 0x40800000    # 4.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v3    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2411":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$7":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 885
    invoke-virtual {v15, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->makeDarkPill()Landroid/widget/FrameLayout;
    invoke-static/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$makeDarkPill(Lio/nekohasekai/sagernet/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .line 893
    .local v3, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$pill$1":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 894
    nop

    .line 895
    nop

    .line 893
    const/4 v5, -0x1

    invoke-direct {v4, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 896
    nop

    .line 1540
    move-object v5, v4

    .local v5, "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413_u24lambda_u2412":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    .line 896
    .local v18, "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$pill$1$1":I
    const/high16 v13, 0x41000000    # 8.0f

    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F
    invoke-static {v7, v13}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v5    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413_u24lambda_u2412":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$pill$1$1":I
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 893
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    nop

    .line 898
    move-object v4, v15

    check-cast v4, Landroid/view/View;

    .line 899
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 900
    nop

    .line 901
    nop

    .line 899
    move-object/from16 v16, v0

    const/4 v0, -0x2

    const/4 v13, -0x1

    .end local v0    # "actions":Landroid/widget/LinearLayout;
    .local v16, "actions":Landroid/widget/LinearLayout;
    invoke-direct {v5, v13, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    .line 897
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    nop

    .line 892
    .end local v2    # "$this$invokeSuspend_u24lambda_u2415_u24lambda_u2414_u24lambda_u2413":Landroid/widget/FrameLayout;
    .end local v3    # "$i$a$-apply-MainActivity$renderRouteRules$1$1$1$pill$1":I
    move-object v0, v1

    .line 905
    .local v0, "pill":Landroid/widget/FrameLayout;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 906
    nop

    .line 1539
    .end local v0    # "pill":Landroid/widget/FrameLayout;
    .end local v11    # "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v12    # "$i$a$-forEach-MainActivity$renderRouteRules$1$1$1":I
    .end local v14    # "head":Landroid/widget/LinearLayout;
    .end local v15    # "inner":Landroid/widget/LinearLayout;
    .end local v16    # "actions":Landroid/widget/LinearLayout;
    .end local v17    # "enable":Landroidx/appcompat/widget/SwitchCompat;
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_40

    .line 1541
    :cond_223
    move-object/from16 v2, p2

    .line 907
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    return-void

    .line 816
    :cond_226
    move-object/from16 v2, p2

    :goto_228
    return-void
.end method

.method private static final invokeSuspend$lambda$15$lambda$14$lambda$4$lambda$3(Lio/nekohasekai/sagernet/database/RuleEntity;Landroid/widget/CompoundButton;Z)V
    .registers 23
    .param p0, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .param p2, "isOn"    # Z

    move-object/from16 v0, p0

    move/from16 v7, p2

    .line 844
    const/16 v18, 0x3fef

    const/16 v19, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v0 .. v19}, Lio/nekohasekai/sagernet/database/RuleEntity;->copy$default(Lio/nekohasekai/sagernet/database/RuleEntity;JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILjava/lang/Object;)Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v0

    .line 845
    .local v0, "copy":Lio/nekohasekai/sagernet/database/RuleEntity;
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$1$1$enable$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1$1$1$enable$1$1$1;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 848
    return-void
.end method

.method private static final invokeSuspend$lambda$15$lambda$14$lambda$8(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)Lkotlin/Unit;
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 872
    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->showRouteEditor(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$showRouteEditor(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invokeSuspend$lambda$15$lambda$14$lambda$9(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)Lkotlin/Unit;
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 879
    # invokes: Lio/nekohasekai/sagernet/ui/MainActivity;->confirmDeleteRoute(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$confirmDeleteRoute(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->$column:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 813
    iget v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->label:I

    packed-switch v1, :pswitch_data_4a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_2a

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 814
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v1, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->label:I

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProfileManager;->getRules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_28

    .line 813
    return-object v0

    .line 814
    :cond_28
    move-object v0, p1

    move-object p1, v1

    .line 813
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_2a
    check-cast p1, Ljava/util/List;

    .line 815
    .local p1, "rules":Ljava/util/List;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->visibleRules(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->this$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->$column:Landroid/widget/LinearLayout;

    new-instance v4, Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;

    invoke-direct {v4, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)V

    invoke-static {v1, v3, p1, v4}, Lio/nekohasekai/sagernet/ui/DrawerRows;->post(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;)Z

    .line 908
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method
