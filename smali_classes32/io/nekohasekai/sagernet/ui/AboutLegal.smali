.class public final Lio/nekohasekai/sagernet/ui/AboutLegal;
.super Ljava/lang/Object;
.source "AboutLegal.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IO:Ljava/util/concurrent/ExecutorService;

.field private static final MAIN:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/AboutLegal$8;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/AboutLegal;->IO:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/AboutLegal;->MAIN:Landroid/os/Handler;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/AboutLegal;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 6

    .line 45
    const-string v0, "JiajiaBox \u5f00\u6e90\u58f0\u660e"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->card(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 46
    const-string v1, "JiajiaBox \u7684\u539f\u521b\u4ee3\u7801\u4e0e\u672c\u9879\u76ee\u4fee\u6539\u90e8\u5206\u57fa\u4e8e MIT License \u5f00\u6e90\uff0c\u7248\u6743\u6240\u6709 \u00a9 2026 weilai090624-code\u3002"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 47
    const-string v1, "\u672c\u58f0\u660e\u4ec5\u9002\u7528\u4e8e JiajiaBox \u7684\u539f\u521b\u4ee3\u7801\u4e0e\u4fee\u6539\u5185\u5bb9\uff1b\u968f\u5e94\u7528\u5206\u53d1\u7684\u4e0a\u6e38\u7ec4\u4ef6\u4ecd\u53d7\u5176\u5404\u81ea\u8bb8\u53ef\u8bc1\u7ea6\u675f\uff0c\u539f\u4f5c\u8005\u3001\u7248\u6743\u548c\u8bb8\u53ef\u6761\u4ef6\u7ee7\u7eed\u6709\u6548\u3002"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$1;-><init>(Landroid/app/Activity;)V

    const-string v2, "MIT License \u00b7 \u5b8c\u6574\u6761\u6b3e"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 49
    const-string v0, "\u5f00\u6e90\u9e23\u8c22"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->card(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 50
    const-string v1, "\u4ee3\u7406\u6838\u5fc3 \u00b7 nekohasekai \u4e0e\u8d21\u732e\u8005 \u00b7 GPL-3.0-or-later"

    const-string v2, "https://github.com/SagerNet/sing-box"

    const-string v3, "sing-box"

    invoke-static {p0, v0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "NekoBox Go \u57fa\u7840\u5e93 \u00b7 GPL-3.0-or-later\uff08\u5177\u4f53\u6761\u4ef6\u4ee5\u5176\u4e0a\u6e38 LICENSE \u4e3a\u51c6\uff09"

    const-string v2, "https://github.com/MatsuriDayo/libneko"

    const-string v3, "libneko"

    invoke-static {p0, v0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "libcore"

    const-string v2, "SagerNet \u7f51\u7edc\u4e0e\u6838\u5fc3\u6865\u63a5 \u00b7 GPL-3.0-or-later"

    const-string v3, "https://github.com/SagerNet/SagerNet"

    invoke-static {p0, v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "SagerNet"

    const-string v2, "Android \u5ba2\u6237\u7aef\u4e0e\u6838\u5fc3\u6865\u63a5\u7684\u4e0a\u6e38\u57fa\u7840"

    invoke-static {p0, v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "Android GUI \u4e0a\u6e38\u8d21\u732e"

    const-string v2, "https://github.com/shadowsocks/shadowsocks-android"

    const-string v3, "shadowsocks-android"

    invoke-static {p0, v0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "\u5185\u7f6e Web Dashboard \u4e0a\u6e38"

    const-string v2, "https://github.com/MetaCubeX/Yacd-meta"

    const-string v3, "Yacd-meta"

    invoke-static {p0, v0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "\u5730\u7403\u663c\u591c\u53ca\u4e91\u5c42\u8d34\u56fe \u00b7 INOVE \u00b7 CC BY 4.0\uff08\u5df2\u8f6c\u6362\u683c\u5f0f\u4e0e\u7f29\u5c0f\u4e91\u56fe\uff09"

    const-string v2, "https://www.solarsystemscope.com/textures/"

    const-string v3, "Solar System Scope"

    invoke-static {p0, v0, v3, v1, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$2;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$2;-><init>(Landroid/app/Activity;)V

    const-string v2, "CC BY 4.0 \u00b7 \u5730\u7403\u8d34\u56fe\u5b8c\u6574\u8bb8\u53ef"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 58
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$3;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u5168\u7403\u8fde\u63a5\u5730\u7403 \u00b7 \u5b9e\u73b0\u4e0e\u6570\u636e\u8bf4\u660e"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 59
    const-string v0, "\u8bb8\u53ef\u8bc1\u4e0e\u7248\u6743"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->card(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 60
    const-string v1, "JiajiaBox \u57fa\u4e8e NekoBox for Android / SagerNet \u4fee\u6539\uff0c\u5e76\u4f7f\u7528 sing-box\u3001libcore \u4e0e libneko \u7b49\u4e0a\u6e38\u7ec4\u4ef6\u3002JiajiaBox \u539f\u521b\u4ee3\u7801\u9002\u7528 MIT License\uff1bsing-box \u4e0e libcore \u7684\u76f8\u5173\u90e8\u5206\u9002\u7528 GPL-3.0-or-later\uff0clibneko \u7684\u5177\u4f53\u6761\u4ef6\u4ee5\u5176\u4e0a\u6e38\u53d1\u5e03\u4e3a\u51c6\u3002"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 61
    const-string v1, "Copyright \u00a9 2026 weilai090624-code\uff08JiajiaBox \u539f\u521b\u4ee3\u7801\u4e0e\u4fee\u6539\uff09\nCopyright \u00a9 2023\u20132024 MatsuriDayo & NekoBox Authors\nCopyright \u00a9 2021 nekohasekai\uff08SagerNet / libcore\uff09\nCopyright \u00a9 2022 nekohasekai\uff08sing-box\uff09\n\u539f\u59cb\u58f0\u660e\u548c\u5b8c\u6574\u6761\u6b3e\u53ef\u5728\u4e0b\u65b9\u79bb\u7ebf\u9605\u8bfb\u3002"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 62
    const-string v1, "\u518d\u5206\u53d1\u65f6\u8bf7\u540c\u65f6\u4fdd\u7559 JiajiaBox \u7684 MIT \u58f0\u660e\u548c\u5404\u4e0a\u6e38\u7ec4\u4ef6\u7684\u7248\u6743\u3001\u8bb8\u53ef\u8bc1\u53ca\u901a\u77e5\u6587\u4ef6\u3002\u672c\u8f6f\u4ef6\u4e0d\u63d0\u4f9b\u4efb\u4f55\u62c5\u4fdd\uff1b\u5177\u4f53\u6761\u4ef6\u4ee5\u5bf9\u5e94\u8bb8\u53ef\u8bc1\u5168\u6587\u4e3a\u51c6\u3002"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$4;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$4;-><init>(Landroid/app/Activity;)V

    const-string v2, "GNU GPL v3 \u00b7 \u5b8c\u6574\u6761\u6b3e"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 64
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$5;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$5;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u4e0a\u6e38\u7248\u6743\u4e0e\u8bb8\u53ef\u58f0\u660e"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 65
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$6;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$6;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u4e0a\u6e38\u4f5c\u8005\u4e0e\u8d21\u732e\u8005"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$7;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AboutLegal$7;-><init>(Landroid/app/Activity;)V

    const-string v2, "JiajiaBox \u4fee\u6539\u4e0e\u5206\u53d1\u8bf4\u660e"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 67
    const-string v0, "\u6e90\u7801\u4e0e\u7248\u672c\u5173\u7cfb"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->card(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 68
    const-string v0, "\u4e0a\u6e38\u9879\u76ee\u94fe\u63a5\u7528\u4e8e\u6eaf\u6e90\uff0c\u4e0d\u80fd\u4ee3\u66ff\u5305\u542b\u672c\u8f6f\u4ef6\u4fee\u6539\u7684\u5bf9\u5e94\u6e90\u7801\u3002\u5206\u53d1 GPL \u8986\u76d6\u7684\u53ef\u6267\u884c\u7248\u672c\u65f6\uff0c\u8fd8\u9700\u63d0\u4f9b\u76f8\u5e94\u6e90\u7801\u548c\u5fc5\u8981\u6784\u5efa\u811a\u672c\u3002"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 69
    const-string v0, "\u672c\u7248\u672c\u5bf9\u5e94\u6e90\u7801\u53d1\u5e03\u5730\u5740\uff1a https://github.com/weilai090624-code/JiajiaBox"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 70
    const-string v0, "\u672c\u8f6f\u4ef6\u4e3a\u72ec\u7acb\u4fee\u6539\u7248\u672c\uff0c\u975e NekoBox\u3001SagerNet \u6216 sing-box \u5b98\u65b9\u53d1\u884c\u7248\uff0c\u4e0d\u8868\u793a\u4e0a\u6e38\u8ba4\u53ef\u6216\u80cc\u4e66\u3002"

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method private static button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 42
    invoke-static {p0, p2, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x800013

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v3

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v0

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/AboutLegal$11;

    invoke-direct {v0, p3}, Lio/nekohasekai/sagernet/ui/AboutLegal$11;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result p0

    iput p0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static card(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8

    .line 40
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v2

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v3

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v4

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p0, p2, v1, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    const-string v1, "sans-serif-medium"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_d9

    .line 74
    :cond_e
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const-string v3, "\u6b63\u5728\u8bfb\u53d6\u2026"

    const/16 v4, 0xe

    invoke-static {p0, v3, v4, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v6

    invoke-static {p0, v5}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v5

    invoke-virtual {v3, v2, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v5, "\u5173\u95ed"

    invoke-static {p0, v5, v4, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lio/nekohasekai/sagernet/ui/AboutLegal$9;

    invoke-direct {v5, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_c1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x440c0000    # 560.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f6b851f    # 0.92f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x44340000    # 720.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x3f570a3d    # 0.84f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 77
    :cond_c1
    sget-object p1, Lio/nekohasekai/sagernet/ui/AboutLegal;->CACHE:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_cf

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 78
    :cond_cf
    sget-object p1, Lio/nekohasekai/sagernet/ui/AboutLegal;->IO:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AboutLegal$10;

    invoke-direct {v1, p0, p2, v0, v3}, Lio/nekohasekai/sagernet/ui/AboutLegal$10;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/TextView;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_d9
    :goto_d9
    return-void
.end method

.method private static dp(Landroid/app/Activity;F)I
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$append$3(Landroid/app/Activity;)V
    .registers 3

    .line 48
    const-string v0, "JiajiaBox MIT License"

    const-string v1, "JiajiaBox-MIT-LICENSE.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$append$4(Landroid/app/Activity;)V
    .registers 3

    .line 57
    const-string v0, "Creative Commons Attribution 4.0"

    const-string v1, "CC-BY-4.0.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$append$5(Landroid/app/Activity;)V
    .registers 3

    .line 58
    const-string v0, "\u5168\u7403\u8fde\u63a5\u5730\u7403"

    const-string v1, "Global-Globe-NOTICE.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$append$6(Landroid/app/Activity;)V
    .registers 3

    .line 63
    const-string v0, "GNU GPL v3"

    const-string v1, "GPL-3.0.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$append$7(Landroid/app/Activity;)V
    .registers 3

    .line 64
    const-string v0, "\u4e0a\u6e38\u7248\u6743\u4e0e\u8bb8\u53ef\u58f0\u660e"

    const-string v1, "UPSTREAM-NOTICES.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$append$8(Landroid/app/Activity;)V
    .registers 3

    .line 65
    const-string v0, "\u4e0a\u6e38\u4f5c\u8005\u4e0e\u8d21\u732e\u8005"

    const-string v1, "AUTHORS.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$append$9(Landroid/app/Activity;)V
    .registers 3

    .line 66
    const-string v0, "JiajiaBox \u4fee\u6539\u4e0e\u5206\u53d1\u8bf4\u660e"

    const-string v1, "JiajiaBox-NOTICE.txt"

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->document(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$button$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$document$10(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 76
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$document$11(Landroid/app/Dialog;Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method

.method static synthetic lambda$document$12(Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/TextView;)V
    .registers 10

    const-string v0, "licenses/"

    .line 78
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_5e

    :try_start_1a
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_52

    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [C

    :goto_2a
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/nekohasekai/sagernet/ui/AboutLegal;->CACHE:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_48

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_52

    if-eqz v0, :cond_68

    :try_start_44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5e

    goto :goto_68

    :catchall_48
    move-exception p1

    :try_start_49
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v1

    :try_start_4e
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    if-eqz v0, :cond_5d

    :try_start_55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    throw p1
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p1

    const-string v0, "AboutLegal"

    const-string v1, "Cannot read bundled license"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "\u65e0\u6cd5\u8bfb\u53d6\u672c\u5730\u8bb8\u53ef\u8bc1\u6587\u6863\u3002\u8bf7\u91cd\u65b0\u5b89\u88c5\u5b8c\u6574\u5b89\u88c5\u5305\u3002"

    :cond_68
    :goto_68
    sget-object p1, Lio/nekohasekai/sagernet/ui/AboutLegal;->MAIN:Landroid/os/Handler;

    new-instance v0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;

    invoke-direct {v0, p2, p0, p3, v2}, Lio/nekohasekai/sagernet/ui/AboutLegal$12;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$link$2(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    const-string p1, "\u6ca1\u6709\u53ef\u6253\u5f00\u94fe\u63a5\u7684\u5e94\u7528"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "about-licenses"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static link(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  \u2197"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/nekohasekai/sagernet/ui/AboutLegal$0;

    invoke-direct {v0, p0, p4}, Lio/nekohasekai/sagernet/ui/AboutLegal$0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lio/nekohasekai/sagernet/ui/AboutLegal;->button(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p0, p1, p3}, Lio/nekohasekai/sagernet/ui/AboutLegal;->paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method private static paragraph(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 6

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 41
    invoke-static {p0, p2, v0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 5

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->dp(Landroid/app/Activity;F)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    if-eqz p3, :cond_22

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    return-object v0

    :cond_22
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-object v0
.end method
