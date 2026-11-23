.class public final Lio/nekohasekai/sagernet/ui/ConnectionCard;
.super Landroid/widget/LinearLayout;
.source "ConnectionCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;,
        Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;,
        Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;
    }
.end annotation


# instance fields
.field private final adapter:Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

.field private final caption:Landroid/widget/TextView;

.field private data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

.field private final empty:Landroid/widget/TextView;

.field private epoch:I

.field private error:Ljava/lang/String;

.field private filter:I

.field private final filters:[Ljava/lang/String;

.field private labels:Ljava/util/Map;
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

.field private final loading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final main:Landroid/os/Handler;

.field private publication:Ljava/lang/Runnable;

.field private final search:Landroid/widget/EditText;

.field private final tick:Ljava/lang/Runnable;

.field private final title:Landroid/widget/TextView;

.field private types:Lorg/json/JSONObject;

.field private visible:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-6JLuoM18IuGcOlJ7R__6kB5aI4(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->request()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lio/nekohasekai/sagernet/ui/ConnectionCard$1;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->visible:Ljava/util/List;

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    .line 42
    const-string v0, "\u8fde\u63a5\u540e\u663e\u793a\u5b9e\u65f6\u8fde\u63a5"

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    .line 44
    const-string v0, "\u4ee3\u7406"

    const-string v2, "\u76f4\u8fde"

    const-string v3, "\u5168\u90e8"

    const-string v4, "\u9ed8\u8ba4\u4ee3\u7406"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filters:[Ljava/lang/String;

    .line 45
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setOrientation(I)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->routingCard(Landroid/view/View;)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v5

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v2

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v4

    invoke-virtual {p0, v3, v5, v2, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setPadding(IIII)V

    .line 48
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    const-string v4, "\u8fde\u63a5\u8be6\u60c5"

    const/16 v5, 0xe

    invoke-direct {p0, v4, v5, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    const v4, 0x800013

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    const-string v4, "\u641c\u7d22\u5e94\u7528\u3001\u57df\u540d\u6216 IP"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v4

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3, v5}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 51
    const-string v0, "\u5168\u90e8 \u00b7 0 \u25be"

    const/16 v3, 0xa

    invoke-direct {p0, v0, v3, v5}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    const-string v3, "\u5207\u6362\u8fde\u63a5\u7b5b\u9009"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    new-instance v3, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->title:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v4

    const/4 v6, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v8

    invoke-direct {v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    new-instance v2, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;

    invoke-direct {v2, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v5}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->render()V

    return-void
.end method

.method static synthetic access$1002(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 30
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1202(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lio/nekohasekai/sagernet/ui/ConnectionRows;)Lio/nekohasekai/sagernet/ui/ConnectionRows;
    .registers 2

    .line 30
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    return-object p1
.end method

.method static synthetic access$1302(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/List;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->visible:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/ConnectionCard;F)I
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/Map;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 30
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$600(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lorg/json/JSONObject;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$702(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 30
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$800(Lio/nekohasekai/sagernet/ui/ConnectionCard;)I
    .registers 1

    .line 30
    iget p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    return p0
.end method

.method static synthetic access$900(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Z
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result p0

    return p0
.end method

.method private active()Z
    .registers 2

    .line 64
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->isShown()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private cancelPublication()V
    .registers 3

    .line 70
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->cancel(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 61
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private headerHeight()I
    .registers 3

    .line 62
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v0

    return v0
.end method

.method private match(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 7

    .line 113
    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    :cond_d
    const-string v1, "processPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_2e

    const-string v2, ""

    :cond_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "destinationIP"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "destinationPort"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rule"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chains"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private rebuild()V
    .registers 6

    .line 107
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    if-nez v1, :cond_1f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->visible:Ljava/util/List;

    return-void

    .line 109
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->visible:Ljava/util/List;

    return-void

    .line 110
    :cond_30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iget-object v2, v2, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->match(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_57
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->visible:Ljava/util/List;

    .line 111
    return-void
.end method

.method private reconcile()V
    .registers 5

    .line 66
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    goto :goto_30

    :cond_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->cancelPublication()V

    return-void

    .line 68
    :cond_20
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void

    .line 66
    :cond_30
    :goto_30
    return-void
.end method

.method private render()V
    .registers 8

    .line 101
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->rebuild()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->visible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    goto :goto_25

    :cond_1d
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    iget-object v2, v2, Lio/nekohasekai/sagernet/ui/ConnectionRows;->counts:[I

    iget v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    aget v2, v2, v3

    .line 102
    :goto_25
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filters:[Ljava/lang/String;

    iget v6, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    const-string v2, " \u5339\u914d"

    goto :goto_52

    :cond_49
    const/16 v4, 0x96

    if-le v2, v4, :cond_50

    const-string v2, "\uff08\u524d150\uff09"

    goto :goto_52

    :cond_50
    const-string v2, ""

    :goto_52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u25be"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    if-eqz v2, :cond_6c

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    goto :goto_8e

    :cond_6c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v0, "\u6682\u65e0\u5339\u914d\u7684\u5f53\u524d\u8fde\u63a5"

    goto :goto_8e

    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u6709\u5339\u914d\u300c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300d\u7684\u8fde\u63a5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8e
    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method private request()V
    .registers 6

    .line 76
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_42

    .line 77
    :cond_f
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_41

    .line 78
    :cond_25
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 79
    sget-object v3, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1, v2, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;Landroid/content/Context;Ljava/util/Map;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void

    .line 77
    :cond_41
    :goto_41
    return-void

    .line 76
    :cond_42
    :goto_42
    return-void
.end method

.method private static set(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 6

    .line 60
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p3, :cond_28

    const-string p2, "sans-serif-medium"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_28
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-ConnectionCard()V
    .registers 5

    .line 45
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-ConnectionCard(Landroid/view/View;)V
    .registers 3

    .line 51
    iget p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filters:[Ljava/lang/String;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->render()V

    return-void
.end method

.method synthetic lambda$request$2$io-nekohasekai-sagernet-ui-ConnectionCard(ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .registers 14

    .line 92
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    if-ne p1, v0, :cond_1f

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1f

    .line 93
    :cond_b
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$2;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/nekohasekai/sagernet/ui/ConnectionCard$2;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    .line 96
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->publish(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 97
    return-void

    .line 92
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method synthetic lambda$request$3$io-nekohasekai-sagernet-ui-ConnectionCard(Landroid/content/Context;Ljava/util/Map;I)V
    .registers 15

    .line 80
    nop

    .line 82
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->snapshot(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "connections"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->currentTypes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_92

    :try_start_10
    new-instance v3, Lio/nekohasekai/sagernet/ui/ConnectionRows;

    invoke-direct {v3, v1, v2}, Lio/nekohasekai/sagernet/ui/ConnectionRows;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_90

    .line 84
    :try_start_15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v4, v3, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v5, :cond_48

    aget-object v8, v4, v7

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_27
    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    const-string v10, "metadata"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_27

    const-string v10, "processPath"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 85
    :cond_48
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 86
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_63} :catch_8d

    if-nez v5, :cond_53

    .line 87
    :try_start_65
    const-string v5, " "

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_83

    goto :goto_85

    :catch_83
    move-exception v5

    move-object v5, v4

    :goto_85
    :try_start_85
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_8d

    goto :goto_53

    .line 89
    :cond_89
    move-object v9, v0

    move-object v7, v2

    move-object v6, v3

    goto :goto_a9

    :catch_8d
    move-exception p1

    move-object v0, v3

    goto :goto_94

    :catch_90
    move-exception p1

    goto :goto_94

    :catch_92
    move-exception p1

    move-object v2, v0

    :goto_94
    instance-of v1, p1, Ljava/net/ConnectException;

    if-eqz v1, :cond_9b

    const-string p1, "\u4ee3\u7406\u672a\u8fd0\u884c\u6216\u6b63\u5728\u91cd\u8fde"

    goto :goto_a6

    :cond_9b
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_a2

    const-string p1, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u8d85\u65f6"

    goto :goto_a6

    :cond_a2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_a6
    move-object v9, p1

    move-object v6, v0

    move-object v7, v2

    .line 90
    :goto_a9
    nop

    .line 91
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda0;

    move-object v3, v0

    move-object v4, p0

    move v5, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lio/nekohasekai/sagernet/ui/ConnectionCard$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->reconcile()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 72
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->cancelPublication()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->reconcile()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->reconcile()V

    return-void
.end method

.method public preferredHeight()I
    .registers 4

    .line 63
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x41e00000    # 28.0f

    mul-float v1, v1, v2

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method
