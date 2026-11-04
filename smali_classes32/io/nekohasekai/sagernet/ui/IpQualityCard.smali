.class public final Lio/nekohasekai/sagernet/ui/IpQualityCard;
.super Landroid/widget/LinearLayout;
.source "IpQualityCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x1770

.field private static final MAX_RESPONSE_BYTES:I = 0x40000

.field private static final READ_TIMEOUT_MS:I = 0x61a8

.field private static final RISK_URL:Ljava/lang/String; = "https://ip.net.coffee/api/iprisk/"

.field private static final TAG:Ljava/lang/String; = "IpQualityCard"

.field private static final TRACE_URL:Ljava/lang/String; = "https://ip.net.coffee/cdn-cgi/trace"

.field private static final WORKER:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final action:Landroid/widget/TextView;

.field private asnValue:Landroid/widget/TextView;

.field private volatile cancelled:Z

.field private confirm:Landroid/widget/TextView;

.field private volatile connection:Ljava/net/HttpURLConnection;

.field private dialog:Landroid/app/Dialog;

.field private volatile epoch:I

.field private flagsValue:Landroid/widget/TextView;

.field private ipValue:Landroid/widget/TextView;

.field private ispValue:Landroid/widget/TextView;

.field private levelValue:Landroid/widget/TextView;

.field private locationValue:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private scoreValue:Landroid/widget/TextView;

.field private status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    sget-object v0, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->SHARED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->main:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setOrientation(I)V

    const/16 v1, 0x10

    .line 66
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setGravity(I)V

    const v2, 0x7f08008d

    .line 67
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 69
    invoke-virtual {p0, v2, v2, v2, v2}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setPadding(IIII)V

    .line 71
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v3, "IP \u8d28\u91cf"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    const-string v3, "sans-serif-medium"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 78
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 80
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 81
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->action:Landroid/widget/TextView;

    .line 84
    const-string v3, "\u2197"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 85
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v2, "\u5f53\u524d\u51fa\u53e3 IP \u98ce\u9669\u68c0\u6d4b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 94
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 96
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 97
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41000000    # 8.0f

    .line 98
    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 99
    invoke-virtual {p0, v1, v2}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setClickable(Z)V

    .line 102
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setFocusable(Z)V

    .line 103
    const-string p1, "IP \u8d28\u91cf\u67e5\u8be2"

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    new-instance p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$0;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$0;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;)V

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addDivider(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .registers 8

    .line 443
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 445
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float p3, p3

    .line 446
    invoke-static {p1, p3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 447
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private apply(Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;)V
    .registers 8

    .line 303
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->trust:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "%d / 100"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget v0, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->trust:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 305
    :goto_22
    iget v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->trust:I

    const/16 v2, 0x2d

    if-lt v1, v2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 306
    :goto_2a
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->accent(Landroid/content/Context;)I

    move-result v2

    goto :goto_40

    :cond_37
    if-eqz v3, :cond_3d

    const v2, -0x2e75ce

    goto :goto_40

    :cond_3d
    const v2, -0x29b0a1

    :goto_40
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    const-string v0, "\u4f18\u8d28"

    goto :goto_51

    :cond_4a
    if-eqz v3, :cond_4f

    const-string v0, "\u4e00\u822c"

    goto :goto_51

    :cond_4f
    const-string v0, "\u8f83\u5dee"

    :goto_51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ipValue:Landroid/widget/TextView;

    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 310
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->country:Ljava/lang/String;

    goto :goto_76

    .line 311
    :cond_66
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->countryCode:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/GlobeCountries;->name(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_76
    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " \u00b7 "

    if-nez v1, :cond_a7

    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->city:Ljava/lang/String;

    iget-object v3, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->country:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->city:Ljava/lang/String;

    goto :goto_a7

    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->city:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_a7
    :goto_a7
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->locationValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "\u672a\u77e5"

    if-eqz v3, :cond_b2

    move-object v0, v4

    :cond_b2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->asnValue:Landroid/widget/TextView;

    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->asn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c1

    move-object v1, v4

    goto :goto_c3

    :cond_c1
    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->asn:Ljava/lang/String;

    :goto_c3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ispValue:Landroid/widget/TextView;

    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d1

    goto :goto_d3

    :cond_d1
    iget-object v4, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    :goto_d3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    iget-boolean v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->proxy:Z

    if-eqz v1, :cond_e4

    const-string v1, "\u4ee3\u7406"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_e4
    iget-boolean v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->vpn:Z

    if-eqz v1, :cond_ed

    const-string v1, "VPN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_ed
    iget-boolean v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->tor:Z

    if-eqz v1, :cond_f6

    const-string v1, "Tor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_f6
    iget-boolean v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->datacenter:Z

    if-eqz v1, :cond_ff

    const-string v1, "\u673a\u623f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_ff
    iget-boolean v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->abuser:Z

    if-eqz v1, :cond_108

    const-string v1, "\u5386\u53f2\u6ee5\u7528"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_108
    iget-boolean v1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->crawler:Z

    if-eqz v1, :cond_111

    const-string v1, "\u722c\u866b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_111
    iget-boolean p1, p1, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->mobile:Z

    if-eqz p1, :cond_11a

    const-string p1, "\u79fb\u52a8\u7f51\u7edc"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_11a
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->flagsValue:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_125

    const-string v0, "\u672a\u53d1\u73b0\u98ce\u9669\u7279\u5f81"

    goto :goto_129

    :cond_125
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_129
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private cancelQuery()V
    .registers 3

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancelled:Z

    .line 461
    iget v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->epoch:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->epoch:I

    .line 462
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_15

    .line 464
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    return-void
.end method

.method private clear(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->connection:Ljava/net/HttpURLConnection;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->connection:Ljava/net/HttpURLConnection;

    .line 390
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method private closeDialog()V
    .registers 2

    .line 451
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private fetch()Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AS"

    const-string v1, "HTTP "

    .line 267
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->fetchCurrentIp()Ljava/lang/String;

    move-result-object v2

    .line 268
    new-instance v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard$1;)V

    .line 269
    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->ip:Ljava/lang/String;

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://ip.net.coffee/api/iprisk/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->open(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 273
    :try_start_28
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 274
    const-string v5, "Accept"

    const-string v6, "application/json"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_110

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_110

    .line 277
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->readBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    const-string v5, "ip"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->ip:Ljava/lang/String;

    .line 279
    const-string v2, "country"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->country:Ljava/lang/String;

    .line 280
    const-string v2, "countryCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->countryCode:Ljava/lang/String;

    .line 281
    const-string v2, "city"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->city:Ljava/lang/String;

    .line 282
    const-string v2, "asn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_73
    .catchall {:try_start_28 .. :try_end_73} :catchall_122

    .line 283
    const-string v5, "asname"

    if-lez v2, :cond_84

    :try_start_77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    :cond_84
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_88
    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->asn:Ljava/lang/String;

    .line 284
    const-string v0, "asOrganization"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    .line 285
    iget-object v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    .line 286
    :cond_a0
    iget-object v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "company_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->isp:Ljava/lang/String;

    .line 287
    :cond_b0
    const-string v0, "trust_score"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->trust:I

    .line 288
    const-string v0, "is_proxy"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->proxy:Z

    .line 289
    const-string v0, "is_vpn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->vpn:Z

    .line 290
    const-string v0, "is_tor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->tor:Z

    .line 291
    const-string v0, "is_datacenter"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f1

    const-string v0, "hosting"

    const-string v5, "company_type"

    .line 292
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    :cond_f1
    const/4 v2, 0x1

    :cond_f2
    iput-boolean v2, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->datacenter:Z

    .line 293
    const-string v0, "is_mobile"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->mobile:Z

    .line 294
    const-string v0, "is_abuser"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->abuser:Z

    .line 295
    const-string v0, "is_crawler"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;->crawler:Z
    :try_end_10c
    .catchall {:try_start_77 .. :try_end_10c} :catchall_122

    .line 298
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->clear(Ljava/net/HttpURLConnection;)V

    return-object v3

    .line 276
    :cond_110
    :try_start_110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_122
    .catchall {:try_start_110 .. :try_end_122} :catchall_122

    :catchall_122
    move-exception v0

    .line 298
    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->clear(Ljava/net/HttpURLConnection;)V

    .line 299
    throw v0
.end method

.method private fetchCurrentIp()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HTTP "

    .line 342
    const-string v1, "https://ip.net.coffee/cdn-cgi/trace"

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->open(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 344
    :try_start_8
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 345
    const-string v2, "Accept"

    const-string v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_56

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_56

    .line 348
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->readBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_4e

    aget-object v4, v0, v3

    .line 350
    const-string v5, "ip="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x3

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_68

    if-nez v5, :cond_4b

    .line 357
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->clear(Ljava/net/HttpURLConnection;)V

    return-object v4

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 355
    :cond_4e
    :try_start_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "missing IP in trace"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_56
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    .line 357
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->clear(Ljava/net/HttpURLConnection;)V

    .line 358
    throw v0
.end method

.method private infoSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;
    .registers 8

    .line 410
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 413
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 415
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 416
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x0

    .line 417
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 418
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 419
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 421
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 422
    invoke-virtual {v0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private infoValue(Landroid/content/Context;I)Landroid/widget/TextView;
    .registers 4

    .line 398
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p1, p2

    .line 399
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 400
    const-string p1, "sans-serif-medium"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 401
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 402
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 p1, 0x2

    .line 403
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 404
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 405
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private isCurrent(I)Z
    .registers 3

    .line 394
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancelled:Z

    if-nez v0, :cond_14

    iget v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->epoch:I

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ip-quality-query"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private metricDivider(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .line 433
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 435
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 436
    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 437
    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private open(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1770

    .line 378
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x61a8

    .line 379
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 381
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 382
    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "User-Agent"

    const-string v1, "JiajiaBox-IPQuality/1.0"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->connection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private readBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x2000

    .line 364
    :try_start_b
    new-array v1, v1, [B

    .line 366
    :goto_d
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x40000

    if-gt v3, v4, :cond_29

    .line 370
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 368
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_3b

    :cond_31
    if-eqz p1, :cond_36

    .line 372
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 373
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_3b
    move-exception v0

    if-eqz p1, :cond_46

    .line 363
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw v0
.end method

.method private resetValues()V
    .registers 3

    .line 330
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 331
    :cond_5
    const-string v1, "-- / 100"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u67e5\u8be2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ipValue:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->locationValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->asnValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ispValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->flagsValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private runQuery(I)V
    .registers 5

    .line 244
    :try_start_0
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->fetch()Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->main:Landroid/os/Handler;

    new-instance v2, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;

    invoke-direct {v2, p0, p1, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$7;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;ILio/nekohasekai/sagernet/ui/IpQualityCard$Result;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 254
    const-string v1, "IpQualityCard"

    const-string v2, "IP quality query failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->main:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/IpQualityCard$8;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/IpQualityCard$8;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sectionParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 427
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 428
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private showDialog()V
    .registers 17

    move-object/from16 v0, p0

    .line 108
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_27d

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_27d

    .line 109
    :cond_16
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    new-instance v2, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {v2, v1, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 111
    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->dialog:Landroid/app/Dialog;

    .line 112
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->action:Landroid/widget/TextView;

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 115
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    .line 116
    const-string v4, "IP \u8d28\u91cf"

    invoke-static {v1, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    const-string v5, "\u5f53\u524d\u51fa\u53e3 IP \u98ce\u9669\u68c0\u6d4b"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 120
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x0

    .line 121
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 122
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 123
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41200000    # 10.0f

    .line 124
    invoke-static {v1, v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    invoke-virtual {v3, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    .line 128
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x11

    .line 129
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v11, "\u4fe1\u4efb\u8bc4\u5206"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41300000    # 11.0f

    .line 132
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 133
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 135
    invoke-static {v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 136
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x22

    .line 137
    invoke-direct {v0, v1, v10}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    const/high16 v12, 0x42080000    # 34.0f

    .line 138
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    const v13, -0x430a3d71    # -0.03f

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 140
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    const-string v13, "tnum"

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 141
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x40c00000    # 6.0f

    .line 142
    invoke-static {v1, v13}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 143
    iget-object v13, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->scoreValue:Landroid/widget/TextView;

    invoke-virtual {v4, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    const/high16 v13, 0x41400000    # 12.0f

    .line 145
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 148
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    const-string v14, "sans-serif-medium"

    invoke-static {v14, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    invoke-static {v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 150
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x40a00000    # 5.0f

    .line 151
    invoke-static {v1, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v14

    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v14, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    invoke-virtual {v4, v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 154
    invoke-static {v1, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v14

    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 155
    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xe

    .line 157
    invoke-direct {v0, v1, v3, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->addDivider(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    .line 159
    invoke-direct {v0, v1, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ipValue:Landroid/widget/TextView;

    .line 160
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 161
    const-string v4, "\u51fa\u53e3 IP"

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ipValue:Landroid/widget/TextView;

    invoke-direct {v0, v1, v4, v8}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->sectionParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v8, 0xd

    .line 166
    invoke-direct {v0, v1, v8}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->locationValue:Landroid/widget/TextView;

    .line 167
    invoke-direct {v0, v1, v8}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->asnValue:Landroid/widget/TextView;

    .line 168
    const-string v10, "\u5730\u533a"

    iget-object v14, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->locationValue:Landroid/widget/TextView;

    invoke-direct {v0, v1, v10, v14}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->metricDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v15}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v14, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    const-string v10, "ASN"

    iget-object v12, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->asnValue:Landroid/widget/TextView;

    invoke-direct {v0, v1, v10, v12}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v5, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->sectionParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 172
    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-direct {v0, v1, v8}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->ispValue:Landroid/widget/TextView;

    .line 175
    const-string v10, "\u8fd0\u8425\u5546"

    invoke-direct {v0, v1, v10, v4}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->sectionParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-direct {v0, v1, v8}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->flagsValue:Landroid/widget/TextView;

    const/4 v8, 0x2

    .line 177
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 178
    const-string v4, "\u7f51\u7edc\u7279\u5f81"

    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->flagsValue:Landroid/widget/TextView;

    invoke-direct {v0, v1, v4, v10}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->infoSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->sectionParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    .line 181
    const-string v10, "\u7b49\u5f85\u786e\u8ba4"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 183
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 184
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 185
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 186
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 187
    invoke-static {v1, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 188
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 191
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    const-string v11, "\u5173\u95ed"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v11, Lio/nekohasekai/sagernet/ui/IpQualityCard$2;

    invoke-direct {v11, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$2;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-static {v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->plainAction(Landroid/widget/TextView;)V

    .line 195
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v1, v12}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41000000    # 8.0f

    .line 196
    invoke-static {v1, v12}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 197
    invoke-virtual {v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    .line 199
    const-string v11, "\u67e5\u8be2"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    new-instance v11, Lio/nekohasekai/sagernet/ui/IpQualityCard$3;

    invoke-direct {v11, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$3;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    invoke-static {v4, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 202
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 203
    invoke-static {v1, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 204
    invoke-virtual {v3, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->resetValues()V

    .line 208
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 209
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 210
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 211
    new-instance v4, Lio/nekohasekai/sagernet/ui/IpQualityCard$4;

    invoke-direct {v4, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$4;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_27a

    .line 218
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v4, v9}, Landroid/view/Window;->setGravity(I)V

    .line 220
    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    const v5, 0x3eb33333    # 0.35f

    .line 221
    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 222
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v5, 0x3f5c28f6    # 0.86f

    mul-float v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 223
    invoke-virtual {v4, v1, v7}, Landroid/view/Window;->setLayout(II)V

    .line 228
    :cond_27a
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AppMotion;->showMorph(Landroid/app/Dialog;)V

    :cond_27d
    :goto_27d
    return-void
.end method

.method private startQuery()V
    .registers 4

    .line 233
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 234
    :cond_b
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancelled:Z

    .line 235
    iget v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->epoch:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->epoch:I

    .line 236
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    const-string v2, "\u67e5\u8be2\u4e2d\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->resetValues()V

    .line 239
    sget-object v1, Lio/nekohasekai/sagernet/ui/IpQualityCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/nekohasekai/sagernet/ui/IpQualityCard$5;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/IpQualityCard$5;-><init>(Lio/nekohasekai/sagernet/ui/IpQualityCard;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 455
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancelQuery()V

    .line 456
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->closeDialog()V

    return-void
.end method

.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-IpQualityCard(Landroid/view/View;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->showDialog()V

    return-void
.end method

.method synthetic lambda$runQuery$6$io-nekohasekai-sagernet-ui-IpQualityCard(ILio/nekohasekai/sagernet/ui/IpQualityCard$Result;)V
    .registers 4

    .line 246
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->isCurrent(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 247
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    invoke-direct {p0, p2}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->apply(Lio/nekohasekai/sagernet/ui/IpQualityCard$Result;)V

    .line 249
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    const-string p2, "\u67e5\u8be2\u5b8c\u6210 \u00b7 \u6570\u636e\u6e90 ip.net.coffee"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    const-string p2, "\u91cd\u65b0\u67e5\u8be2"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$runQuery$7$io-nekohasekai-sagernet-ui-IpQualityCard(I)V
    .registers 4

    .line 256
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->isCurrent(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 257
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->levelValue:Landroid/widget/TextView;

    const-string v1, "\u67e5\u8be2\u5931\u8d25"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->status:Landroid/widget/TextView;

    const-string v1, "\u67e5\u8be2\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    const-string v1, "\u91cd\u8bd5"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->confirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$showDialog$2$io-nekohasekai-sagernet-ui-IpQualityCard(Landroid/view/View;)V
    .registers 2

    .line 193
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->closeDialog()V

    return-void
.end method

.method synthetic lambda$showDialog$3$io-nekohasekai-sagernet-ui-IpQualityCard(Landroid/view/View;)V
    .registers 2

    .line 200
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->startQuery()V

    return-void
.end method

.method synthetic lambda$showDialog$4$io-nekohasekai-sagernet-ui-IpQualityCard(Landroid/content/DialogInterface;)V
    .registers 3

    .line 212
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->dialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->dialog:Landroid/app/Dialog;

    .line 213
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/IpQualityCard;->action:Landroid/widget/TextView;

    const-string v0, "\u2197"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancelQuery()V

    return-void
.end method

.method synthetic lambda$startQuery$5$io-nekohasekai-sagernet-ui-IpQualityCard(I)V
    .registers 2

    .line 239
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->runQuery(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 469
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/IpQualityCard;->cancel()V

    .line 470
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
