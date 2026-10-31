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

.field private dataSignature:J

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

.field private renderedError:Ljava/lang/String;

.field private renderedFilter:I

.field private renderedSignature:J

.field private final tick:Ljava/lang/Runnable;

.field private final title:Landroid/widget/TextView;

.field private types:Lorg/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$-6JLuoM18IuGcOlJ7R__6kB5aI4(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 1

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->request()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lio/nekohasekai/sagernet/ui/ConnectionCard$1;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    .line 34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;

    .line 35
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    const-wide/high16 v2, -0x8000000000000000L

    .line 36
    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedSignature:J

    const/4 v2, -0x1

    iput v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedFilter:I

    .line 38
    const-string v3, "\u8fde\u63a5\u540e\u663e\u793a\u5b9e\u65f6\u8fde\u63a5"

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    .line 40
    const-string v3, "\u4ee3\u7406"

    const-string v4, "\u76f4\u8fde"

    const-string v5, "\u5168\u90e8"

    const-string v6, "\u9ed8\u8ba4\u4ee3\u7406"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filters:[Ljava/lang/String;

    .line 41
    new-instance v3, Lio/nekohasekai/sagernet/ui/ConnectionCard$2;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$2;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setOrientation(I)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->routingCard(Landroid/view/View;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v7

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v4

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v6

    invoke-virtual {p0, v5, v7, v4, v6}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->setPadding(IIII)V

    .line 44
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    const-string v5, "\u8fde\u63a5\u8be6\u60c5"

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->title:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8 \u00b7 0 \u25be"

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    const-string v6, "\u5207\u6362\u8fde\u63a5\u7b5b\u9009"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v6, Lio/nekohasekai/sagernet/ui/ConnectionCard$3;

    invoke-direct {v6, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$3;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v8

    invoke-direct {v3, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->headerHeight()I

    move-result v5

    invoke-direct {v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v3, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v4, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;

    invoke-direct {v4, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$LocalList;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, v7}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lio/nekohasekai/sagernet/ui/ConnectionRows;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    return-object p0
.end method

.method static synthetic access$1002(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lio/nekohasekai/sagernet/ui/ConnectionRows;)Lio/nekohasekai/sagernet/ui/ConnectionRows;
    .registers 2

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    return-object p1
.end method

.method static synthetic access$1100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1202(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lio/nekohasekai/sagernet/ui/ConnectionCard;J)J
    .registers 3

    .line 27
    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dataSignature:J

    return-wide p1
.end method

.method static synthetic access$1400(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->render()V

    return-void
.end method

.method static synthetic access$200(Lio/nekohasekai/sagernet/ui/ConnectionCard;)I
    .registers 1

    .line 27
    iget p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    return p0
.end method

.method static synthetic access$300(Lio/nekohasekai/sagernet/ui/ConnectionCard;F)I
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/Map;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$600(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lorg/json/JSONObject;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$702(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .line 27
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$800(Lio/nekohasekai/sagernet/ui/ConnectionCard;)I
    .registers 1

    .line 27
    iget p0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    return p0
.end method

.method static synthetic access$900(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Z
    .registers 1

    .line 27
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result p0

    return p0
.end method

.method private active()Z
    .registers 2

    .line 55
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

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private cancelPublication()V
    .registers 3

    .line 61
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->cancel(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_15
    return-void
.end method

.method private dp(F)I
    .registers 3

    .line 52
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private static fingerprint(Lio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/ConnectionRows;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-wide v0, -0x61c8864680b583ebL

    if-eqz p3, :cond_b

    .line 98
    invoke-static {v0, v1, p3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    :cond_b
    if-nez p0, :cond_e

    return-wide v0

    :cond_e
    if-nez p1, :cond_15

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_15
    const/4 p3, 0x0

    .line 99
    :goto_16
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    array-length v2, v2

    if-ge p3, v2, :cond_ab

    .line 100
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 101
    const-string v4, "metadata"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_44

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_44
    const-string v5, "processPath"

    const-string v6, "\u672a\u8bc6\u522b\u5e94\u7528"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object v5, v6

    :cond_5c
    :goto_5c
    const-string v6, "host"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6e

    const-string v6, "destinationIP"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    :cond_6e
    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, v5}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, v6}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    const-string v5, "destinationPort"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    const-string v4, "rule"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v3, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->kind(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    const-string v4, "chains"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->mix(JLjava/lang/String;)J

    move-result-wide v0

    goto :goto_2b

    :cond_a7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_16

    :cond_ab
    return-wide v0
.end method

.method private headerHeight()I
    .registers 3

    .line 53
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v0

    return v0
.end method

.method private static mix(JLjava/lang/String;)J
    .registers 8

    const-wide v0, 0x100000001b3L

    if-nez p2, :cond_a

    mul-long p0, p0, v0

    return-wide p0

    :cond_a
    const/4 v2, 0x0

    .line 107
    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1c

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr p0, v3

    mul-long p0, p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return-wide p0
.end method

.method private reconcile()V
    .registers 5

    .line 57
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    if-nez v1, :cond_9

    goto :goto_2b

    :cond_9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->cancelPublication()V

    return-void

    .line 59
    :cond_1c
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->request()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method private render()V
    .registers 7

    .line 92
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->counts:[I

    iget v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    aget v0, v0, v2

    :goto_d
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->caption:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filters:[Ljava/lang/String;

    iget v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x96

    if-le v0, v4, :cond_2c

    const-string v0, "\uff08\u524d150\uff09"

    goto :goto_2e

    :cond_2c
    const-string v0, ""

    :goto_2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u25be"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->empty:Landroid/widget/TextView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    if-eqz v2, :cond_44

    goto :goto_46

    :cond_44
    const-string v2, "\u6682\u65e0\u5339\u914d\u7684\u5f53\u524d\u8fde\u63a5"

    :goto_46
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedError:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v0, :cond_53

    if-eqz v2, :cond_5a

    goto :goto_59

    :cond_53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    :goto_59
    const/4 v1, 0x1

    .line 95
    :cond_5a
    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dataSignature:J

    iget-wide v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedSignature:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6c

    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    iget v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedFilter:I

    if-ne v0, v4, :cond_6c

    if-eqz v1, :cond_6b

    goto :goto_6c

    :cond_6b
    return-void

    :cond_6c
    :goto_6c
    iput-wide v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedSignature:J

    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedFilter:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->error:Ljava/lang/String;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->renderedError:Ljava/lang/String;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->notifyDataSetChanged()V

    return-void
.end method

.method private request()V
    .registers 6

    .line 67
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_40

    .line 68
    :cond_f
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$4;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_40

    .line 69
    :cond_25
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 70
    sget-object v3, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lio/nekohasekai/sagernet/ui/ConnectionCard$5;

    invoke-direct {v4, p0, v1, v2, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$5;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;Landroid/content/Context;Ljava/util/Map;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private static set(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 119
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

    .line 51
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

    .line 41
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

    .line 45
    iget p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filters:[Ljava/lang/String;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->render()V

    return-void
.end method

.method synthetic lambda$request$2$io-nekohasekai-sagernet-ui-ConnectionCard(ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;J)V
    .registers 17

    .line 83
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->epoch:I

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->active()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1d

    .line 84
    :cond_b
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;J)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->publication:Ljava/lang/Runnable;

    .line 87
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->publish(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 83
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method synthetic lambda$request$3$io-nekohasekai-sagernet-ui-ConnectionCard(Landroid/content/Context;Ljava/util/Map;I)V
    .registers 16

    .line 0
    const/4 v1, 0x0

    .line 73
    :try_start_1
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->snapshot(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "connections"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->currentTypes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_91

    :try_start_f
    new-instance v3, Lio/nekohasekai/sagernet/ui/ConnectionRows;

    invoke-direct {v3, v0, v2}, Lio/nekohasekai/sagernet/ui/ConnectionRows;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_8e

    .line 75
    :try_start_14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v4, v3, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v5, :cond_47

    aget-object v8, v4, v7

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_26
    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    const-string v10, "metadata"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_26

    const-string v10, "processPath"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 76
    :cond_47
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_62} :catch_8a

    if-nez v5, :cond_52

    .line 78
    :try_start_64
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

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-object v5, v4

    :goto_83
    :try_start_83
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_8a

    goto :goto_52

    :cond_87
    move-object v9, v1

    move-object v6, v3

    goto :goto_a8

    :catch_8a
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_94

    :catch_8e
    move-exception v0

    move-object p1, v0

    goto :goto_94

    :catch_91
    move-exception v0

    move-object p1, v0

    move-object v2, v1

    .line 80
    :goto_94
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_9b

    const-string p1, "\u4ee3\u7406\u672a\u8fd0\u884c\u6216\u6b63\u5728\u91cd\u8fde"

    goto :goto_a6

    :cond_9b
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_a2

    const-string p1, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u8d85\u65f6"

    goto :goto_a6

    :cond_a2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_a6
    move-object v9, p1

    move-object v6, v1

    :goto_a8
    move-object v7, v2

    .line 81
    invoke-static {v6, v7, p2, v9}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->fingerprint(Lio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v10

    .line 82
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard;->main:Landroid/os/Handler;

    new-instance v3, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;

    move-object v4, p0

    move-object v8, p2

    move v5, p3

    invoke-direct/range {v3 .. v11}, Lio/nekohasekai/sagernet/ui/ConnectionCard$0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;ILio/nekohasekai/sagernet/ui/ConnectionRows;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;J)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->reconcile()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 63
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

    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->reconcile()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->reconcile()V

    return-void
.end method

.method public preferredHeight()I
    .registers 4

    const/high16 v0, 0x41e00000    # 28.0f

    .line 54
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

    const/high16 v2, 0x42000000    # 32.0f

    mul-float v1, v1, v2

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method
