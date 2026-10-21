.class public final Lmoe/matsuri/nb4a/ui/AppProxyCard;
.super Ljava/lang/Object;
.source "AppProxyCard.java"


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "com.android.permission.GET_INSTALLED_APPS"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Landroid/widget/BaseAdapter;

.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final dialog:Landroid/app/Dialog;

.field private final ids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final list:Landroid/widget/ListView;

.field private loading:Z

.field private nextId:J

.field private final search:Landroid/widget/EditText;

.field private final selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

.field private final status:Landroid/widget/TextView;

.field private final system:Landroid/widget/Switch;

.field private final visible:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 14

    .line 82
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->apps:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->labels:Ljava/util/Map;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->ids:Ljava/util/Map;

    .line 50
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->nextId:J

    .line 51
    new-instance v1, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;

    invoke-direct {v1, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->adapter:Landroid/widget/BaseAdapter;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->worker:Ljava/util/concurrent/ExecutorService;

    .line 83
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->activity:Landroid/app/Activity;

    .line 84
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 86
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 87
    new-instance v3, Lmoe/matsuri/nb4a/ui/AppProxySelection;

    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getIndividual()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmoe/matsuri/nb4a/ui/AppProxySelection;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    .line 88
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 91
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    const-string v6, "\u5206\u5e94\u7528\u4ee3\u7406"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v5, Landroid/widget/RadioGroup;

    invoke-direct {v5, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 97
    const-string v7, "\u4ec5\u4ee3\u7406\u9009\u4e2d\u5e94\u7528"

    const-string v8, "\u7ed5\u8fc7\u9009\u4e2d\u5e94\u7528"

    const-string v9, "\u5173\u95ed"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 98
    const/4 v8, 0x0

    move v9, v8

    :goto_8c
    const/4 v10, 0x3

    if-ge v9, v10, :cond_a6

    .line 99
    new-instance v10, Landroid/widget/RadioButton;

    invoke-direct {v10, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 100
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setId(I)V

    .line 101
    aget-object v9, v7, v9

    invoke-virtual {v10, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v10, v6}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 103
    invoke-virtual {v5, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 98
    move v9, v11

    goto :goto_8c

    .line 105
    :cond_a6
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getProxyApps()Z

    move-result v7

    const/4 v9, 0x2

    if-nez v7, :cond_b1

    move v10, v4

    goto :goto_bb

    :cond_b1
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getBypass()Z

    move-result v7

    if-eqz v7, :cond_ba

    goto :goto_bb

    :cond_ba
    move v10, v9

    :goto_bb
    invoke-virtual {v5, v10}, Landroid/widget/RadioGroup;->check(I)V

    .line 106
    new-instance v7, Lmoe/matsuri/nb4a/ui/AppProxyCard$3;

    invoke-direct {v7}, Lmoe/matsuri/nb4a/ui/AppProxyCard$3;-><init>()V

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 111
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    .line 113
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 114
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 115
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    const v7, -0x474740

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 116
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    const-string v10, "\u641c\u7d22\u5e94\u7528\u540d\u79f0\u6216\u5305\u540d"

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->system:Landroid/widget/Switch;

    .line 119
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->system:Landroid/widget/Switch;

    const-string v10, "\u663e\u793a\u7cfb\u7edf\u5e94\u7528"

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->system:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setTextColor(I)V

    .line 121
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->system:Landroid/widget/Switch;

    new-instance v10, Lmoe/matsuri/nb4a/ui/AppProxyCard$4;

    invoke-direct {v10, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$4;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->system:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->status:Landroid/widget/TextView;

    .line 124
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->status:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    .line 127
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 128
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 129
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedList(Landroid/view/View;)V

    .line 130
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x43660000    # 230.0f

    mul-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v7, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    new-instance v5, Lmoe/matsuri/nb4a/ui/AppProxyCard$5;

    invoke-direct {v5, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$5;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    new-instance v5, Lmoe/matsuri/nb4a/ui/AppProxyCard$2;

    invoke-direct {v5, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$2;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    const-string v5, "\u6388\u6743 / \u5237\u65b0"

    invoke-direct {p0, v5, v2}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->action(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 147
    new-instance v6, Lmoe/matsuri/nb4a/ui/AppProxyCard$6;

    invoke-direct {v6, p0, p1}, Lmoe/matsuri/nb4a/ui/AppProxyCard$6;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const-string v6, "\u6e05\u7a7a"

    invoke-direct {p0, v6, v2}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->action(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    .line 153
    new-instance v7, Lmoe/matsuri/nb4a/ui/AppProxyCard$7;

    invoke-direct {v7, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$7;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const-string v7, "\u5b8c\u6210"

    invoke-direct {p0, v7, v2}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->action(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 160
    new-instance v7, Lmoe/matsuri/nb4a/ui/AppProxyCard$8;

    invoke-direct {v7, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$8;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v1, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {v1, p1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 166
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 167
    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 168
    invoke-virtual {v1, v8}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 169
    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;)V

    .line 170
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 171
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Window;->addFlags(I)V

    .line 173
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x3e6147ae    # 0.22f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 174
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, p1}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 175
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    new-instance v3, Lmoe/matsuri/nb4a/ui/AppProxyCard$9;

    invoke-direct {v3, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$9;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 176
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 177
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lmoe/matsuri/nb4a/ui/AppProxyCard$10;

    invoke-direct {v2, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$10;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 180
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->load()V

    .line 182
    :try_start_203
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 183
    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v4, :cond_222

    .line 184
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_222

    .line 185
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c1a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_220
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_203 .. :try_end_220} :catch_221

    goto :goto_222

    .line 187
    :catch_221
    move-exception p1

    :cond_222
    :goto_222
    nop

    .line 188
    return-void
.end method

.method static synthetic access$000(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/List;
    .registers 1

    .line 37
    iget-object p0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/Map;
    .registers 1

    .line 37
    iget-object p0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->ids:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$208(Lmoe/matsuri/nb4a/ui/AppProxyCard;)J
    .registers 5

    .line 37
    iget-wide v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->nextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->nextId:J

    return-wide v0
.end method

.method static synthetic access$300(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Landroid/app/Activity;
    .registers 1

    .line 37
    iget-object p0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/Map;
    .registers 1

    .line 37
    iget-object p0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->labels:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Lmoe/matsuri/nb4a/ui/AppProxySelection;
    .registers 1

    .line 37
    iget-object p0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    return-object p0
.end method

.method static synthetic access$600(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->filter()V

    return-void
.end method

.method private action(Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .line 191
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    div-int/lit8 p1, p2, 0x2

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    return-object v0
.end method

.method private filter()V
    .registers 6

    .line 228
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 232
    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->system:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_44

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_44

    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_1f

    .line 233
    :cond_44
    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->labels:Ljava/util/Map;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    if-nez v3, :cond_52

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 235
    :cond_52
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto :goto_1f

    .line 236
    :cond_7e
    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    goto :goto_1f

    .line 239
    :cond_84
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 240
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 241
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->syncChecks()V

    .line 242
    return-void
.end method

.method static synthetic lambda$load$8(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .registers 3

    .line 209
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$0(Landroid/widget/RadioGroup;I)V
    .registers 5

    .line 107
    sget-object p0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setProxyApps(Z)V

    .line 108
    if-eq p1, v1, :cond_17

    sget-object p0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_14

    move v0, v1

    :cond_14
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/database/DataStore;->setBypass(Z)V

    .line 109
    :cond_17
    sget-object p0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 110
    return-void
.end method

.method private load()V
    .registers 3

    .line 199
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->loading:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    .line 200
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->loading:Z

    .line 201
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->status:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u8bfb\u53d6\u5e94\u7528\u5217\u8868\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lmoe/matsuri/nb4a/ui/AppProxyCard$0;

    invoke-direct {v1, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard$0;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void

    .line 199
    :cond_22
    :goto_22
    return-void
.end method

.method public static open(Landroid/content/Context;)V
    .registers 2

    .line 74
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_16

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    if-ne v0, p0, :cond_13

    return-void

    .line 77
    :cond_13
    nop

    .line 78
    move-object p0, v0

    goto :goto_1

    .line 79
    :cond_16
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_21

    new-instance v0, Lmoe/matsuri/nb4a/ui/AppProxyCard;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;-><init>(Landroid/app/Activity;)V

    .line 80
    :cond_21
    return-void
.end method

.method private syncChecks()V
    .registers 4

    .line 245
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 246
    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 247
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, v1, :cond_26

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 245
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_29
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e94\u7528 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a \u00b7 \u5df2\u9009 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    invoke-virtual {v2}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method


# virtual methods
.method synthetic lambda$load$10$moe-matsuri-nb4a-ui-AppProxyCard()V
    .registers 7

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    nop

    .line 207
    :try_start_b
    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 209
    :cond_3d
    new-instance v2, Lmoe/matsuri/nb4a/ui/AppProxyCard$11;

    invoke-direct {v2, v1}, Lmoe/matsuri/nb4a/ui/AppProxyCard$11;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_45} :catch_47

    .line 210
    const/4 v2, 0x0

    goto :goto_4a

    :catch_47
    move-exception v2

    const-string v2, "\u65e0\u6cd5\u8bfb\u53d6\u5e94\u7528\u5217\u8868\uff0c\u8bf7\u6388\u6743\u540e\u5237\u65b0"

    .line 211
    :goto_4a
    nop

    .line 212
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;

    invoke-direct {v4, p0, v0, v1, v2}, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;-><init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method synthetic lambda$load$9$moe-matsuri-nb4a-ui-AppProxyCard(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->loading:Z

    .line 214
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 215
    :cond_c
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->labels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->labels:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 218
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 219
    iget-object p2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->apps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 220
    :cond_43
    iget-object p2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    invoke-virtual {p2, p1}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->applications(Ljava/util/Map;)V

    .line 221
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->filter()V

    .line 222
    if-nez p3, :cond_56

    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_60

    :cond_56
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->status:Landroid/widget/TextView;

    if-eqz p3, :cond_5b

    goto :goto_5d

    :cond_5b
    const-string p3, "\u8bfb\u53d6\u5e94\u7528\u5217\u8868\u53d7\u9650\uff0c\u8bf7\u70b9\u6388\u6743 / \u5237\u65b0\u5e76\u5f00\u542f\u5e94\u7528\u5217\u8868\u6743\u9650"

    :goto_5d
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_60
    return-void
.end method

.method synthetic lambda$new$1$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 121
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->filter()V

    return-void
.end method

.method synthetic lambda$new$2$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 134
    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_9

    return-void

    .line 135
    :cond_9
    iget-object p2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->toggle(Ljava/lang/String;)V

    .line 136
    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object p2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    invoke-virtual {p2}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->saved()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/nekohasekai/sagernet/database/DataStore;->setIndividual(Ljava/lang/String;)V

    .line 137
    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 138
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->syncChecks()V

    .line 139
    return-void
.end method

.method synthetic lambda$new$3$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 148
    const-string p2, "com.android.permission.GET_INSTALLED_APPS"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2e

    .line 149
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31

    .line 150
    :cond_2e
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->load()V

    .line 151
    :goto_31
    return-void
.end method

.method synthetic lambda$new$4$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/view/View;)V
    .registers 3

    .line 154
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;

    invoke-virtual {p1}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->clear()V

    .line 155
    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/DataStore;->setIndividual(Ljava/lang/String;)V

    .line 156
    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 157
    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->filter()V

    .line 158
    return-void
.end method

.method synthetic lambda$new$5$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/view/View;)V
    .registers 2

    .line 160
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$6$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/content/DialogInterface;)V
    .registers 2

    .line 175
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method synthetic lambda$new$7$moe-matsuri-nb4a-ui-AppProxyCard(Z)V
    .registers 2

    .line 178
    if-eqz p1, :cond_d

    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->load()V

    .line 179
    :cond_d
    return-void
.end method
