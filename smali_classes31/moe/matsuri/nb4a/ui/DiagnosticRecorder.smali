.class public final Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;
.super Ljava/lang/Object;
.source "DiagnosticRecorder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMenu(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 7

    .line 20
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->access$makeDarkPill(Lio/nekohasekai/sagernet/ui/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 21
    const-string v1, "\u8bca\u65ad\u65e5\u5fd7"

    invoke-static {p0, v1}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 22
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42380000    # 46.0f

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 25
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance p1, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x41600000    # 14.0f

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 36
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    return-object v0
.end method

.method static synthetic lambda$addMenu$0(Landroid/content/Context;Landroid/view/View;)V
    .registers 2

    .line 26
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->open(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$open$1(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 9

    .line 53
    const/4 p4, 0x1

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "diagnostic-recording"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "diagnostic.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    const-string v2, "\u5f00\u59cb\u5f55\u5236"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 56
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_e1

    .line 57
    :try_start_24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Diagnostic recording started "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_6f

    .line 58
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_63

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_63

    :cond_5b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u65e0\u6cd5\u5f00\u59cb\u5f55\u5236"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_63
    :goto_63
    const-string p1, "start"

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->recordNetwork(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const-string p1, "\u6b63\u5728\u5f55\u5236\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5\u4ee3\u7406"

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6d} :catch_e1

    goto/16 :goto_e0

    .line 56
    :catchall_6f
    move-exception p2

    :try_start_70
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p1

    :try_start_75
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_78
    throw p2

    .line 62
    :cond_79
    const-string v2, "\u7ed3\u675f\u5f55\u5236"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 63
    const-string p1, "stop"

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->recordNetwork(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_93

    goto :goto_9b

    :cond_93
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u65e0\u6cd5\u7ed3\u675f\u5f55\u5236"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_9b
    :goto_9b
    const-string p1, "\u5f55\u5236\u5df2\u7ed3\u675f\uff0c\u53ef\u5206\u4eab\u65e5\u5fd7"

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e0

    .line 66
    :cond_a1
    const-string p2, "\u5206\u4eab\u65e5\u5fd7"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 68
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 69
    const-string p2, "android.intent.extra.STREAM"

    const-string p3, "com.linjiajia.top.cache"

    invoke-static {p0, p3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const-string p2, "\u5206\u4eab\u8bca\u65ad\u65e5\u5fd7"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_df

    .line 67
    :cond_d4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u8bf7\u5148\u5f00\u59cb\u5f55\u5236\u5e76\u590d\u73b0\u95ee\u9898"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_dc
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_df} :catch_e1

    :goto_df
    nop

    .line 75
    :goto_e0
    goto :goto_ed

    .line 73
    :catch_e1
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 76
    :goto_ed
    return-void
.end method

.method private static open(Landroid/content/Context;)V
    .registers 10

    .line 41
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "diagnostic-recording"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "\u6b63\u5728\u5f55\u5236"

    goto :goto_24

    :cond_22
    const-string v2, "\u8bca\u65ad\u65e5\u5fd7"

    :goto_24
    invoke-static {p0, v2}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    const-string v3, "\u5f00\u59cb\u5f55\u5236\u540e\u91cd\u65b0\u8fde\u63a5\u4ee3\u7406\uff0c\u6253\u5f00\u51fa\u73b0\u5206\u6d41\u5f02\u5e38\u7684\u8f6f\u4ef6\uff0c\u5e76\u8fd0\u884c\u8282\u70b9\u6d4b\u901f\u3002\u7ed3\u675f\u540e\u5206\u4eab\u65e5\u5fd7\u3002\u7eaf IPv4 \u4e0e\u53cc\u6808\u8bf7\u5206\u522b\u5f55\u5236\u5e76\u4fdd\u5b58\u3002"

    invoke-static {p0, v3}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    const-string v3, "\u5206\u4eab\u65e5\u5fd7"

    const-string v4, "\u5173\u95ed"

    const-string v5, "\u5f00\u59cb\u5f55\u5236"

    const-string v6, "\u7ed3\u675f\u5f55\u5236"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_42
    const/4 v6, 0x4

    if-ge v5, v6, :cond_59

    aget-object v6, v3, v5

    .line 49
    invoke-static {p0, v6}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    .line 50
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v8, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6, v2, v0}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 78
    :cond_59
    new-instance v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 79
    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 80
    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 81
    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 82
    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;)V

    .line 83
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pill(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private static recordNetwork(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n[NetworkDiag] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_74

    aget-object v5, v2, v4

    .line 93
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 94
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v7

    .line 95
    const-string v8, "network="

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " capabilities="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    if-eqz v7, :cond_71

    .line 97
    const-string v5, "addresses="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    const-string v6, " routes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    const-string v6, " dns="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 102
    :cond_74
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "diagnostic.log"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 103
    :try_start_85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_92
    .catchall {:try_start_85 .. :try_end_92} :catchall_96

    .line 104
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 105
    return-void

    .line 102
    :catchall_96
    move-exception p0

    :try_start_97
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9f
    throw p0
.end method
