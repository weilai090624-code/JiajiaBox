.class public Landroidx/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 871
    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 897
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 925
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 926
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 927
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 928
    return-void
.end method

.method private createListView(Landroidx/appcompat/app/AlertController;)V
    .registers 11
    .param p1, "dialog"    # Landroidx/appcompat/app/AlertController;

    .line 988
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 989
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 992
    .local v0, "listView":Landroidx/appcompat/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_34

    .line 993
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_25

    .line 994
    new-instance v8, Landroidx/appcompat/app/AlertController$AlertParams$1;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v8

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto :goto_6e

    .line 1009
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_25
    new-instance v8, Landroidx/appcompat/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$2;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_6e

    .line 1038
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_34
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_3b

    .line 1039
    iget v1, p1, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .local v1, "layout":I
    goto :goto_3d

    .line 1041
    .end local v1    # "layout":I
    :cond_3b
    iget v1, p1, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 1044
    .restart local v1    # "layout":I
    :goto_3d
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v2, :cond_5c

    .line 1045
    new-instance v8, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3}, [I

    move-result-object v7

    move-object v2, v8

    move-object v3, v4

    move v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    .local v2, "adapter":Landroid/widget/ListAdapter;
    goto :goto_6e

    .line 1047
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_5c
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_64

    .line 1048
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_6e

    .line 1050
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_64
    new-instance v2, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v1, v3, v5}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 1054
    .local v1, "adapter":Landroid/widget/ListAdapter;
    :goto_6e
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_77

    .line 1055
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v2, v0}, Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1061
    :cond_77
    iput-object v1, p1, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1062
    iget v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    iput v2, p1, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 1064
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_8a

    .line 1065
    new-instance v2, Landroidx/appcompat/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_96

    .line 1074
    :cond_8a
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_96

    .line 1075
    new-instance v2, Landroidx/appcompat/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Landroidx/appcompat/app/AlertController$AlertParams$4;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    :cond_96
    :goto_96
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_9f

    .line 1089
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1092
    :cond_9f
    iget-boolean v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_a8

    .line 1093
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_b0

    .line 1094
    :cond_a8
    iget-boolean v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_b0

    .line 1095
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1097
    :cond_b0
    :goto_b0
    iput-object v0, p1, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1098
    return-void
.end method


# virtual methods
.method public apply(Landroidx/appcompat/app/AlertController;)V
    .registers 9
    .param p1, "dialog"    # Landroidx/appcompat/app/AlertController;

    .line 931
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 932
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_32

    .line 934
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 935
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 937
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 938
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 940
    :cond_1c
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_25

    .line 941
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 943
    :cond_25
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_32

    .line 944
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 947
    :cond_32
    :goto_32
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3b

    .line 948
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    :cond_3b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4f

    .line 951
    :cond_43
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 954
    :cond_4f
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_57

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_63

    .line 955
    :cond_57
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x2

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 958
    :cond_63
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6b

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_77

    .line 959
    :cond_6b
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_77
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_83

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_83

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_86

    .line 965
    :cond_83
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V

    .line 967
    :cond_86
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_a3

    .line 968
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_9d

    .line 969
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_ac

    .line 972
    :cond_9d
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_ac

    .line 974
    :cond_a3
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_ac

    .line 975
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->setView(I)V

    .line 985
    :cond_ac
    :goto_ac
    return-void
.end method
