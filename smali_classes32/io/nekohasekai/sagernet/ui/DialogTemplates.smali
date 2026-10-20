.class public final Lio/nekohasekai/sagernet/ui/DialogTemplates;
.super Ljava/lang/Object;
.source "DialogTemplates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;,
        Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static actionLike(Landroid/view/View;)Z
    .registers 4

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_2c

    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_10

    goto :goto_2c

    .line 47
    :cond_10
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    return v2

    .line 48
    :cond_16
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2b

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_2b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2b

    move v1, v2

    :cond_2b
    return v1

    .line 46
    :cond_2c
    :goto_2c
    return v1
.end method

.method private static adopt(Landroid/view/Window;Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;Ljava/lang/CharSequence;Z)Z
    .registers 22

    .line 165
    move-object/from16 v0, p0

    if-eqz p3, :cond_9

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->dialogFor(Landroid/view/Window;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x0

    if-eqz p3, :cond_10

    if-nez v1, :cond_10

    return v2

    .line 166
    :cond_10
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->mainColumn(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 167
    if-nez v3, :cond_1e

    return v2

    .line 168
    :cond_1e
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_28
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_38

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 170
    :cond_38
    const/4 v3, 0x1

    if-eqz p3, :cond_41

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_50

    :cond_41
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->footer(Landroid/view/View;)Ljava/util/List;

    move-result-object v6

    .line 171
    :goto_50
    if-eqz p3, :cond_53

    goto :goto_5e

    :cond_53
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 172
    :goto_5e
    if-nez p3, :cond_71

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_71

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_71

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    :cond_71
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->surface(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 174
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    move-object/from16 v9, p2

    invoke-static {v4, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-static {v13}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->detach(Landroid/view/View;)V

    sget-object v14, Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;->SELECT:Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;

    move-object/from16 v15, p1

    if-ne v15, v14, :cond_b4

    move v14, v3

    goto :goto_b5

    :cond_b4
    move v14, v2

    :goto_b5
    invoke-static {v13, v14}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->styleBody(Landroid/view/View;Z)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_c2

    const/high16 v16, 0x41000000    # 8.0f

    goto :goto_c4

    :cond_c2
    const/high16 v16, 0x41400000    # 12.0f

    :goto_c4
    move/from16 v17, v3

    move/from16 v3, v16

    invoke-static {v4, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    instance-of v3, v13, Landroid/widget/ScrollView;

    if-eqz v3, :cond_f1

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_da

    move v3, v2

    goto :goto_e0

    :cond_da
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_e0
    if-lez v3, :cond_eb

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->maxBody(Landroid/content/Context;)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_ef

    :cond_eb
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->maxBody(Landroid/content/Context;)I

    move-result v3

    :goto_ef
    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_f1
    invoke-virtual {v9, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v3, v17

    const/4 v10, -0x1

    goto :goto_9d

    .line 178
    :cond_f8
    move/from16 v17, v3

    if-eqz p3, :cond_12c

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v10, v12, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->maxBody(Landroid/content/Context;)I

    move-result v10

    const/high16 v13, 0x42600000    # 56.0f

    invoke-static {v4, v13}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v4, v5}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->estimatedHeight(Landroid/content/Context;Ljava/util/List;)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v9, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_135

    .line 179
    :cond_12c
    const/4 v12, -0x1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :goto_135
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 181
    if-eqz p3, :cond_150

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v9, Lio/nekohasekai/sagernet/ui/DialogTemplates$0;

    invoke-direct {v9, v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates$0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_150
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_154
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_167

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->detach(Landroid/view/View;)V

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_154

    .line 183
    :cond_167
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v1, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-static {v0, v7}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->setContent(Landroid/view/Window;Landroid/view/View;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 186
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 187
    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    .line 188
    return v17
.end method

.method private static adoptNative(Landroid/view/Window;)Z
    .registers 14

    .line 126
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const v4, 0x102001b

    const v5, 0x1020019

    const v6, 0x102001a

    filled-new-array {v6, v4, v5}, [I

    move-result-object v4

    move v5, v2

    :goto_22
    const/4 v6, 0x3

    if-ge v5, v6, :cond_39

    aget v6, v4, v5

    invoke-virtual {p0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_36

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 129
    :cond_39
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    return v2

    .line 130
    :cond_40
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->nativeTitle(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4b

    return v2

    .line 131
    :cond_4b
    const v4, 0x102002b

    invoke-virtual {p0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 132
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5f

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_66

    :cond_5f
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 133
    :cond_66
    if-nez v4, :cond_6f

    const v4, 0x102000b

    invoke-virtual {p0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 134
    :cond_6f
    if-nez v4, :cond_72

    return v2

    .line 135
    :cond_72
    instance-of v5, v4, Landroid/widget/ListView;

    if-eqz v5, :cond_ca

    .line 136
    move-object v6, v4

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    .line 137
    if-eqz v7, :cond_ca

    instance-of v8, v7, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;

    if-nez v8, :cond_ca

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    if-nez v8, :cond_ca

    .line 138
    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v8

    if-nez v8, :cond_91

    const/4 v8, 0x0

    goto :goto_95

    :cond_91
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 139
    :goto_95
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_a1

    move v10, v2

    goto :goto_a5

    :cond_a1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    .line 140
    :goto_a5
    new-instance v11, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;

    invoke-direct {v11, v7}, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;-><init>(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    if-eqz v8, :cond_c4

    move v7, v2

    :goto_b0
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_c4

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b0

    .line 142
    :cond_c4
    invoke-virtual {v6, v9, v10}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedList(Landroid/view/View;)V

    .line 145
    :cond_ca
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->surface(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->detach(Landroid/view/View;)V

    invoke-static {v4, v5}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->styleBody(Landroid/view/View;Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_fb

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->maxBody(Landroid/content/Context;)I

    move-result v5

    goto :goto_fc

    :cond_fb
    move v5, v10

    :goto_fc
    invoke-direct {v0, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v1, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_112
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_125

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->detach(Landroid/view/View;)V

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_112

    :cond_125
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v1, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->setContent(Landroid/view/Window;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1030002

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static adoptStacked(Landroid/view/Window;Landroid/widget/LinearLayout;I)Z
    .registers 14

    .line 87
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, p2

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_20

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 89
    :cond_20
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->surface(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 90
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    move v4, v2

    :goto_33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_b2

    .line 92
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->detach(Landroid/view/View;)V

    .line 93
    if-lt v4, v1, :cond_7e

    .line 94
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-ne v4, v9, :cond_64

    .line 95
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-static {v8, v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 96
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    goto :goto_af

    .line 98
    :cond_64
    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    goto :goto_af

    .line 101
    :cond_7e
    invoke-static {v7, v2}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->styleBody(Landroid/view/View;Z)V

    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 102
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_9d

    move-object v9, v7

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x800013

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v4, :cond_9d

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 103
    :cond_9d
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v4, :cond_ac

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_ac
    invoke-virtual {v3, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :goto_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 106
    :cond_b2
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->setContent(Landroid/view/Window;Landroid/view/View;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x1030002

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return v8
.end method

.method public static adoptWindow(Landroid/view/Window;)Z
    .registers 7

    .line 64
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 65
    :cond_4
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->ownsWindow(Landroid/view/Window;)Z

    move-result v1

    const v2, 0x1020002

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    return v3

    .line 66
    :cond_16
    invoke-virtual {p0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    if-nez v1, :cond_1d

    return v0

    .line 68
    :cond_1d
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->blocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptNative(Landroid/view/Window;)Z

    move-result p0

    return p0

    .line 69
    :cond_28
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->mainColumn(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_107

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_36

    goto/16 :goto_107

    .line 71
    :cond_36
    nop

    .line 72
    move v2, v0

    move v4, v3

    :goto_39
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_55

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v5, :cond_51

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_52

    :cond_51
    move v4, v0

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 73
    :cond_55
    if-eqz v4, :cond_60

    sget-object v0, Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;->SELECT:Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;

    const-string v1, "\u5207\u6362\u5206\u7ec4"

    invoke-static {p0, v0, v1, v3}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adopt(Landroid/view/Window;Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0

    .line 74
    :cond_60
    nop

    .line 75
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    move v4, v0

    :goto_67
    if-lez v2, :cond_78

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->actionLike(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_78

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_67

    .line 76
    :cond_78
    const/4 v2, 0x3

    if-lt v4, v2, :cond_92

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_92

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-nez v2, :cond_92

    invoke-static {p0, v1, v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptStacked(Landroid/view/Window;Landroid/widget/LinearLayout;I)Z

    move-result p0

    return p0

    .line 77
    :cond_92
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->footer(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_102

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_ad

    goto :goto_102

    .line 79
    :cond_ad
    move v2, v0

    :goto_ae
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_c3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->actionLike(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c0

    return v0

    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 80
    :cond_c3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_da

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/EditText;

    if-nez v2, :cond_da

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_db

    :cond_da
    const/4 v2, 0x0

    .line 81
    :goto_db
    if-eqz v2, :cond_101

    invoke-virtual {v2}, Landroid/widget/TextView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_e4

    goto :goto_101

    .line 82
    :cond_e4
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->edits(Landroid/view/View;)I

    move-result v3

    .line 83
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->hasScrollingChoices(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f1

    sget-object v1, Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;->SELECT:Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;

    goto :goto_f8

    :cond_f1
    if-lez v3, :cond_f6

    sget-object v1, Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;->INPUT:Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;

    goto :goto_f8

    :cond_f6
    sget-object v1, Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;->CONFIRM:Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;

    .line 84
    :goto_f8
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adopt(Landroid/view/Window;Lio/nekohasekai/sagernet/ui/DialogTemplates$Kind;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0

    .line 81
    :cond_101
    :goto_101
    return v0

    .line 78
    :cond_102
    :goto_102
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptNative(Landroid/view/Window;)Z

    move-result p0

    return p0

    .line 70
    :cond_107
    :goto_107
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptNative(Landroid/view/Window;)Z

    move-result p0

    return p0
.end method

.method private static blocked(Landroid/view/View;)Z
    .registers 5

    .line 24
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->isManagedList(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    instance-of v0, p0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2d

    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_10

    goto :goto_2d

    .line 25
    :cond_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    check-cast p0, Landroid/view/ViewGroup;

    move v0, v2

    :goto_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->blocked(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 26
    :cond_2c
    return v2

    .line 24
    :cond_2d
    :goto_2d
    return v1
.end method

.method private static countChoices(Landroid/view/View;)I
    .registers 4

    .line 42
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->actionLike(Landroid/view/View;)Z

    move-result v0

    .line 43
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->countChoices(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    return v0
.end method

.method private static detach(Landroid/view/View;)V
    .registers 2

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method private static dialogFor(Landroid/view/Window;)Landroid/app/Dialog;
    .registers 6

    .line 156
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2d

    if-eqz p0, :cond_2d

    .line 158
    instance-of v2, p0, Landroid/app/Dialog;

    if-eqz v2, :cond_13

    check-cast p0, Landroid/app/Dialog;

    return-object p0

    .line 159
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getWrapped"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_2c

    if-ne v2, p0, :cond_28

    goto :goto_2d

    .line 157
    :cond_28
    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    goto :goto_6

    .line 159
    :catch_2c
    move-exception p0

    .line 161
    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static edits(Landroid/view/View;)I
    .registers 4

    .line 29
    instance-of v0, p0, Landroid/widget/EditText;

    .line 30
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->edits(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method private static footer(Landroid/view/View;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->actionLike(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 53
    :cond_f
    instance-of v1, p0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3b

    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_3b

    .line 54
    check-cast p0, Landroid/view/ViewGroup;

    .line 55
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3b

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->actionLike(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_35

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 57
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method private static hasScrollingChoices(Landroid/view/View;)Z
    .registers 5

    .line 37
    instance-of v0, p0, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->countChoices(Landroid/view/View;)I

    move-result p0

    if-lez p0, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 38
    :cond_f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2a

    check-cast p0, Landroid/view/ViewGroup;

    move v0, v2

    :goto_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->hasScrollingChoices(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_27

    return v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 39
    :cond_2a
    return v2
.end method

.method static synthetic lambda$adopt$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 181
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static mainColumn(Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 4

    .line 19
    instance-of v0, p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-ne v2, v1, :cond_f

    return-object v0

    .line 20
    :cond_f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->mainColumn(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0

    .line 21
    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private static maxBody(Landroid/content/Context;)I
    .registers 5

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, v0

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static nativeTitle(Landroid/view/View;)Landroid/widget/TextView;
    .registers 4

    .line 122
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    :try_start_4
    const-string v0, "alertTitle"

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    check-cast p0, Landroid/widget/TextView;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception v0

    .line 123
    :cond_1c
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->nativeTitle(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_34

    return-object v1

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ownsWindow(Landroid/view/Window;)Z
    .registers 4

    .line 60
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 61
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_23

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_23

    move v0, v2

    :cond_23
    return v0
.end method

.method private static scrolling(Landroid/view/View;)Z
    .registers 5

    .line 33
    instance-of v0, p0, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 34
    :cond_6
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    check-cast p0, Landroid/view/ViewGroup;

    move v0, v2

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_22

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->scrolling(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    return v2
.end method

.method private static setContent(Landroid/view/Window;Landroid/view/View;)V
    .registers 3

    .line 152
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->dialogFor(Landroid/view/Window;)Landroid/app/Dialog;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 154
    :goto_d
    return-void
.end method

.method private static styleBody(Landroid/view/View;Z)V
    .registers 4

    .line 192
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->isManagedList(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 193
    :cond_7
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_11

    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    return-void

    .line 194
    :cond_11
    if-eqz p1, :cond_1d

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->actionLike(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    return-void

    .line 195
    :cond_1d
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_27

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 196
    :cond_27
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3e

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->styleBody(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 197
    :cond_3e
    return-void
.end method
