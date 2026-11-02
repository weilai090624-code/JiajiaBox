.class public final Lio/nekohasekai/sagernet/ui/SpeedTestCard;
.super Landroid/widget/LinearLayout;
.source "SpeedTestCard.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final CONNECT_TIMEOUT_MS:I = 0x1388

.field private static final DOWNLOAD_CHUNK_ATTEMPTS:I = 0x3

.field private static final DOWNLOAD_URL:Ljava/lang/String; = "https://proof.ovh.net/files/100Mb.dat"

.field private static final LATENCY_MAX_ATTEMPTS:I = 0x1e

.field private static final LATENCY_SAMPLES:I = 0x14

.field private static final PING_TIMEOUT_MS:I = 0x3e8

.field private static final PING_URL:Ljava/lang/String; = "http://cp.cloudflare.com/"

.field private static final READ_TIMEOUT_MS:I = 0x3a98

.field private static final REPORT_INTERVAL_NS:J = 0xbebc200L

.field private static final STAGE_ATTEMPTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpeedTestCard"

.field private static final TEST_WINDOW_NS:J = 0x37e11d600L

.field private static final WORKER:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final action:Landroid/widget/TextView;

.field private volatile cancelled:Z

.field private confirm:Landroid/widget/TextView;

.field private volatile connection:Ljava/net/HttpURLConnection;

.field private dialog:Landroid/app/Dialog;

.field private downloadValue:Landroid/widget/TextView;

.field private volatile epoch:I

.field private jitterValue:Landroid/widget/TextView;

.field private latencyValue:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lio/nekohasekai/sagernet/ui/SpeedTestCard$2;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->main:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setOrientation(I)V

    const/16 v1, 0x10

    .line 68
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setGravity(I)V

    const v2, 0x7f08008d

    .line 69
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setBackgroundResource(I)V

    .line 70
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 71
    invoke-virtual {p0, v2, v2, v2, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setPadding(IIII)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v3, "\u8282\u70b9\u6d4b\u901f"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    const-string v4, "sans-serif-medium"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 81
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 82
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 83
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->action:Landroid/widget/TextView;

    .line 86
    const-string v4, "\u2197"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41880000    # 17.0f

    .line 87
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 89
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    const-string v2, "\u9009\u4e2d\u8282\u70b9\u5355\u7ebf\u7a0b\u6d4b\u901f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 96
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 98
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 100
    invoke-static {p1, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 101
    invoke-virtual {p0, v1, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setClickable(Z)V

    .line 104
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setFocusable(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    new-instance p1, Lio/nekohasekai/sagernet/ui/SpeedTestCard$1;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$1;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;)V

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private averageLatency(I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    move-wide v8, v1

    move-wide v10, v8

    move-wide v6, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_b
    const/16 v0, 0x1e

    const/16 v12, 0x14

    if-gt v4, v0, :cond_4e

    if-ge v3, v12, :cond_4e

    .line 294
    invoke-direct/range {p0 .. p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 297
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->pingOnce()J

    move-result-wide v12
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_2d

    add-long/2addr v8, v12

    add-int/lit8 v3, v3, 0x1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_2b

    sub-long v6, v12, v6

    .line 306
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    add-long/2addr v10, v6

    :cond_2b
    move-wide v6, v12

    goto :goto_42

    :catch_2d
    move-exception v0

    .line 299
    invoke-direct/range {p0 .. p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v12

    if-eqz v12, :cond_45

    if-nez v3, :cond_3b

    const/4 v12, 0x2

    if-ge v4, v12, :cond_3a

    goto :goto_3b

    .line 300
    :cond_3a
    throw v0

    .line 301
    :cond_3b
    :goto_3b
    const-string v12, "SpeedTestCard"

    const-string v13, "Latency sample failed, retrying"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 299
    :cond_45
    throw v0

    .line 294
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    if-lt v3, v12, :cond_67

    long-to-double v0, v8

    int-to-double v6, v3

    div-double v14, v0, v6

    if-le v3, v5, :cond_5b

    long-to-double v0, v10

    sub-int/2addr v3, v5

    int-to-double v2, v3

    div-double/2addr v0, v2

    goto :goto_5d

    :cond_5b
    const-wide/16 v0, 0x0

    :goto_5d
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-wide/from16 v16, v0

    .line 312
    invoke-direct/range {v12 .. v17}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postLatency(IDD)V

    return-void

    .line 309
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "latency test failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cancelTest()V
    .registers 3

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancelled:Z

    .line 486
    iget v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->epoch:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->epoch:I

    .line 487
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 488
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_15

    .line 489
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    return-void
.end method

.method private clear(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 415
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->connection:Ljava/net/HttpURLConnection;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->connection:Ljava/net/HttpURLConnection;

    .line 416
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method private closeDialog()V
    .registers 2

    .line 476
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private downloadMbps(I)D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x2

    if-gt v1, v2, :cond_34

    .line 333
    :try_start_5
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadMbpsOnce(I)D

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v0

    :catch_a
    move-exception v0

    .line 335
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download attempt "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpeedTestCard"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ge v1, v2, :cond_30

    const-wide/16 v2, 0x0

    .line 338
    invoke-direct {p0, p1, v2, v3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postDownload(ID)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 335
    :cond_33
    throw v0

    .line 341
    :cond_34
    throw v0
.end method

.method private downloadMbpsOnce(I)D
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-wide/16 v9, 0x0

    move-wide v2, v9

    move-wide v4, v2

    move-wide v6, v4

    .line 348
    :goto_7
    invoke-direct/range {p0 .. p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 349
    invoke-direct/range {p0 .. p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v0

    const-string v11, "cancelled"

    if-eqz v0, :cond_1b1

    const-wide v12, 0x37e11d600L

    cmp-long v0, v2, v9

    if-eqz v0, :cond_29

    .line 350
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v2

    cmp-long v0, v14, v12

    if-ltz v0, :cond_29

    goto/16 :goto_1b7

    :cond_29
    const/4 v0, 0x1

    const/4 v8, 0x0

    move-object v0, v8

    move-wide v15, v9

    const/4 v14, 0x1

    :goto_2e
    const/4 v8, 0x3

    if-gt v14, v8, :cond_197

    cmp-long v17, v15, v9

    if-nez v17, :cond_197

    const/16 v8, 0x1388

    move-wide/from16 v18, v9

    const/16 v9, 0x3a98

    .line 354
    const-string v10, "https://proof.ovh.net/files/100Mb.dat"

    invoke-direct {v1, v10, v8, v9}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->open(Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 357
    :try_start_41
    const-string v8, "GET"

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 358
    const-string v8, "Accept-Encoding"

    const-string v10, "identity"

    invoke-virtual {v9, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v8, "Connection"

    const-string v10, "keep-alive"

    invoke-virtual {v9, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v10, 0xc8

    if-lt v8, v10, :cond_133

    const/16 v10, 0x190

    if-ge v8, v10, :cond_133

    .line 363
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_64} :catch_153
    .catchall {:try_start_41 .. :try_end_64} :catchall_151

    const/high16 v8, 0x10000

    .line 364
    :try_start_66
    new-array v8, v8, [B
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_10d

    move-wide/from16 v20, v15

    move-wide v15, v6

    move-wide/from16 v6, v20

    move-wide/from16 v20, v12

    .line 365
    :goto_6f
    :try_start_6f
    invoke-virtual {v10, v8}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_e1

    .line 366
    invoke-direct/range {p0 .. p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v22
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_fe

    if-eqz v22, :cond_d2

    move-wide/from16 v22, v6

    move-object v6, v8

    .line 367
    :try_start_7f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_d0

    cmp-long v24, v2, v18

    if-nez v24, :cond_88

    move-wide v2, v7

    :cond_88
    move/from16 v24, v14

    int-to-long v13, v12

    add-long/2addr v4, v13

    add-long v13, v22, v13

    sub-long v22, v7, v15

    const-wide/32 v25, 0xbebc200

    cmp-long v27, v22, v25

    if-ltz v27, :cond_ae

    move-object/from16 v17, v6

    move-object/from16 v25, v10

    const/4 v10, 0x3

    move-wide/from16 v28, v2

    move/from16 v2, p1

    move-wide v3, v4

    move-wide/from16 v5, v28

    .line 372
    :try_start_a3
    invoke-direct/range {v1 .. v8}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postDownload(IJJJ)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a8

    move-wide v15, v7

    goto :goto_b8

    :catchall_a8
    move-exception v0

    move-object v2, v0

    move-wide/from16 v22, v13

    goto/16 :goto_11e

    :cond_ae
    move-object/from16 v17, v6

    move-object/from16 v25, v10

    const/4 v10, 0x3

    move-wide/from16 v28, v4

    move-wide v5, v2

    move-wide/from16 v3, v28

    :goto_b8
    sub-long/2addr v7, v5

    cmp-long v2, v7, v20

    if-ltz v2, :cond_c5

    move-wide/from16 v28, v5

    move-wide v4, v3

    move-wide/from16 v2, v28

    move-wide v6, v15

    move-wide v15, v13

    goto :goto_eb

    :cond_c5
    move-wide v7, v5

    move-wide v4, v3

    move-wide v2, v7

    move-wide v6, v13

    move-object/from16 v8, v17

    move/from16 v14, v24

    move-object/from16 v10, v25

    goto :goto_6f

    :catchall_d0
    move-exception v0

    goto :goto_101

    :cond_d2
    move-wide/from16 v22, v6

    move-object/from16 v25, v10

    move/from16 v24, v14

    const/4 v10, 0x3

    .line 366
    :try_start_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_df
    .catchall {:try_start_d9 .. :try_end_df} :catchall_df

    :catchall_df
    move-exception v0

    goto :goto_106

    :cond_e1
    move-wide/from16 v22, v6

    move-object/from16 v25, v10

    move/from16 v24, v14

    const/4 v10, 0x3

    move-wide v6, v15

    move-wide/from16 v15, v22

    :goto_eb
    if-eqz v25, :cond_f0

    .line 377
    :try_start_ed
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_14f
    .catchall {:try_start_ed .. :try_end_f0} :catchall_151

    :cond_f0
    const/4 v8, -0x1

    if-ne v12, v8, :cond_f7

    .line 384
    invoke-direct {v1, v9}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->release(Ljava/net/HttpURLConnection;)V

    goto :goto_fa

    .line 385
    :cond_f7
    invoke-direct {v1, v9}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->clear(Ljava/net/HttpURLConnection;)V

    :goto_fa
    move/from16 v13, v24

    goto/16 :goto_17f

    :catchall_fe
    move-exception v0

    move-wide/from16 v22, v6

    :goto_101
    move-object/from16 v25, v10

    move/from16 v24, v14

    const/4 v10, 0x3

    :goto_106
    move-wide/from16 v28, v4

    move-wide v5, v2

    move-wide/from16 v3, v28

    move-object v2, v0

    goto :goto_11e

    :catchall_10d
    move-exception v0

    move-object/from16 v25, v10

    move-wide/from16 v20, v12

    move/from16 v24, v14

    const/4 v10, 0x3

    move-wide/from16 v22, v15

    move-wide v15, v6

    move-wide/from16 v28, v2

    move-object v2, v0

    move-wide v3, v4

    move-wide/from16 v5, v28

    :goto_11e
    if-eqz v25, :cond_128

    .line 363
    :try_start_120
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_124

    goto :goto_128

    :catchall_124
    move-exception v0

    :try_start_125
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_128
    :goto_128
    throw v2
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_129} :catch_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_151

    :catch_129
    move-exception v0

    move-wide/from16 v28, v5

    move-wide v4, v3

    move-wide/from16 v2, v28

    move-wide v6, v15

    move-wide/from16 v15, v22

    goto :goto_159

    :cond_133
    move-wide/from16 v20, v12

    move/from16 v24, v14

    const/4 v10, 0x3

    .line 361
    :try_start_138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_14f} :catch_14f
    .catchall {:try_start_138 .. :try_end_14f} :catchall_151

    :catch_14f
    move-exception v0

    goto :goto_159

    :catchall_151
    move-exception v0

    goto :goto_193

    :catch_153
    move-exception v0

    move-wide/from16 v20, v12

    move/from16 v24, v14

    const/4 v10, 0x3

    .line 380
    :goto_159
    :try_start_159
    invoke-direct/range {p0 .. p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v8

    if-eqz v8, :cond_192

    .line 382
    const-string v8, "SpeedTestCard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Download chunk attempt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v24

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " failed"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17c
    .catchall {:try_start_159 .. :try_end_17c} :catchall_151

    .line 385
    invoke-direct {v1, v9}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->clear(Ljava/net/HttpURLConnection;)V

    :goto_17f
    cmp-long v8, v15, v18

    if-nez v8, :cond_18a

    if-ge v13, v10, :cond_18a

    const-wide/16 v8, 0x12c

    .line 387
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    :cond_18a
    add-int/lit8 v14, v13, 0x1

    move-wide/from16 v9, v18

    move-wide/from16 v12, v20

    goto/16 :goto_2e

    .line 380
    :cond_192
    :try_start_192
    throw v0
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_151

    .line 385
    :goto_193
    invoke-direct {v1, v9}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->clear(Ljava/net/HttpURLConnection;)V

    .line 386
    throw v0

    :cond_197
    move-wide/from16 v18, v9

    cmp-long v8, v15, v18

    if-nez v8, :cond_1ad

    cmp-long v6, v4, v18

    if-lez v6, :cond_1a2

    goto :goto_1b9

    :cond_1a2
    if-eqz v0, :cond_1a5

    .line 391
    throw v0

    .line 392
    :cond_1a5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "empty download chunk"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ad
    move-wide/from16 v9, v18

    goto/16 :goto_7

    .line 349
    :cond_1b1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b7
    :goto_1b7
    move-wide/from16 v18, v9

    :goto_1b9
    move-wide/from16 v28, v4

    move-wide v4, v2

    move-wide/from16 v2, v28

    .line 395
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v0, v2, v18

    if-eqz v0, :cond_1d8

    cmp-long v0, v4, v18

    if-eqz v0, :cond_1d8

    cmp-long v0, v6, v4

    if-lez v0, :cond_1d8

    .line 397
    invoke-static/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->mbps(JJJ)D

    move-result-wide v2

    move/from16 v4, p1

    .line 398
    invoke-direct {v1, v4, v2, v3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postDownload(ID)V

    return-wide v2

    .line 396
    :cond_1d8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "no data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static formatMbps(D)Ljava/lang/String;
    .registers 5

    .line 457
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const-string p0, "%.1f Mbps"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCurrent(I)Z
    .registers 3

    .line 424
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancelled:Z

    if-nez v0, :cond_14

    iget v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->epoch:I

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->dialog:Landroid/app/Dialog;

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

    .line 47
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "cloudflare-speed-test"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static mbps(JJJ)D
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1f

    cmp-long v2, p2, v0

    if-lez v2, :cond_1f

    cmp-long v0, p4, p2

    if-gtz v0, :cond_f

    goto :goto_1f

    :cond_f
    long-to-double p0, p0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double p0, p0, v0

    sub-long/2addr p4, p2

    long-to-double p2, p4

    div-double/2addr p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, p2

    return-wide p0

    :cond_1f
    :goto_1f
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private metricDivider(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .line 249
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 251
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 252
    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 253
    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private metricSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;
    .registers 8

    .line 232
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 235
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41300000    # 11.0f

    .line 237
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 238
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p2, 0x0

    .line 239
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 240
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 241
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40e00000    # 7.0f

    .line 243
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    invoke-virtual {v0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private metricValue(Landroid/content/Context;I)Landroid/widget/TextView;
    .registers 4

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p1, p2

    .line 221
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 222
    const-string p1, "sans-serif-medium"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 223
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const p1, -0x430a3d71    # -0.03f

    .line 225
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 226
    const-string p1, "tnum"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 227
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private open(Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 404
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 405
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 406
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 407
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 408
    const-string p2, "Cache-Control"

    const-string p3, "no-cache"

    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string p2, "User-Agent"

    const-string p3, "JiajiaBox-SpeedTest/1.0"

    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->connection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private pingOnce()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    :try_start_0
    const-string v0, "libcore.Libcore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    const-string v1, "libcore.BoxInstance"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 319
    const-string v2, "urlTest"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-class v1, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v1, v4, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v1, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v5

    const-string v4, "http://cp.cloudflare.com/"

    aput-object v4, v2, v6

    aput-object v1, v2, v7

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_43} :catch_44

    return-wide v0

    :catch_44
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 324
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_50

    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 325
    :cond_50
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private postDownload(ID)V
    .registers 6

    .line 446
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->main:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$0;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;ID)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postDownload(IJJJ)V
    .registers 8

    .line 442
    invoke-static/range {p2 .. p7}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->mbps(JJJ)D

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postDownload(ID)V

    return-void
.end method

.method private postLatency(IDD)V
    .registers 14

    .line 434
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->main:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$8;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;IDD)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStatus(ILjava/lang/String;)V
    .registers 5

    .line 428
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->main:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;

    invoke-direct {v1, p0, p1, p2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$4;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private release(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 420
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->connection:Ljava/net/HttpURLConnection;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->connection:Ljava/net/HttpURLConnection;

    :cond_7
    return-void
.end method

.method private runTest(I)V
    .registers 6

    const/4 v0, 0x0

    .line 272
    :try_start_1
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->averageLatency(I)V

    .line 273
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3d

    .line 274
    :cond_b
    const-string v1, "\u4e0b\u884c\u6d4b\u901f\u4e2d\u2026"

    invoke-direct {p0, p1, v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postStatus(ILjava/lang/String;)V

    .line 275
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadMbps(I)D

    .line 276
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3d

    .line 277
    :cond_1a
    const-string v1, "\u6d4b\u901f\u5b8c\u6210"

    invoke-direct {p0, p1, v1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postStatus(ILjava/lang/String;)V

    .line 278
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception v1

    .line 280
    const-string v2, "SpeedTestCard"

    const-string v3, "Speed test failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 282
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    const-string v0, "\u6d4b\u901f\u5931\u8d25"

    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->postStatus(ILjava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static setValue(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    .line 461
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 463
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 464
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1b

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    const/4 v1, -0x1

    :goto_1b
    if-ltz v1, :cond_2e

    .line 470
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f1eb852    # 0.62f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 472
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDialog()V
    .registers 14

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_20d

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_20d

    .line 111
    :cond_14
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    new-instance v1, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {v1, v0, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->dialog:Landroid/app/Dialog;

    .line 114
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->action:Landroid/widget/TextView;

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    .line 118
    const-string v3, "\u8282\u70b9\u6d4b\u901f"

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    const-string v4, "\u9009\u4e2d\u8282\u70b9\u5355\u7ebf\u7a0b\u6d4b\u901f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 122
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 124
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 125
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41200000    # 10.0f

    .line 126
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 127
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 130
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x11

    .line 131
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    const-string v9, "\u4e0b\u884c\u901f\u7387"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41300000    # 11.0f

    .line 134
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 137
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 138
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x1e

    .line 139
    invoke-direct {p0, v0, v8}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->metricValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadValue:Landroid/widget/TextView;

    .line 140
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x40c00000    # 6.0f

    .line 141
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 142
    iget-object v10, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadValue:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 144
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 145
    invoke-virtual {v2, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v0, v11}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v8, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 151
    invoke-virtual {v2, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 156
    invoke-direct {p0, v0, v7}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->metricValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->latencyValue:Landroid/widget/TextView;

    .line 157
    invoke-direct {p0, v0, v7}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->metricValue(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->jitterValue:Landroid/widget/TextView;

    .line 158
    const-string v8, "\u5ef6\u8fdf"

    iget-object v12, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->latencyValue:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v12}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->metricSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v8

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->metricDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    const-string v8, "\u6296\u52a8"

    iget-object v12, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->jitterValue:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v12}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->metricSection(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v8

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    invoke-virtual {v2, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    .line 166
    const-string v8, "\u7b49\u5f85\u786e\u8ba4"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 170
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 171
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 172
    invoke-static {v0, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 173
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 176
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    const-string v9, "\u5173\u95ed"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v9, Lio/nekohasekai/sagernet/ui/SpeedTestCard$5;

    invoke-direct {v9, p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$5;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->plainAction(Landroid/widget/TextView;)V

    .line 180
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41000000    # 8.0f

    .line 181
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 182
    invoke-virtual {v3, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->confirm:Landroid/widget/TextView;

    .line 184
    const-string v9, "\u786e\u8ba4"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->confirm:Landroid/widget/TextView;

    new-instance v9, Lio/nekohasekai/sagernet/ui/SpeedTestCard$6;

    invoke-direct {v9, p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$6;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->confirm:Landroid/widget/TextView;

    invoke-static {v3, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 187
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 188
    invoke-static {v0, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    invoke-virtual {v2, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadValue:Landroid/widget/TextView;

    const-string v5, "0.0 Mbps"

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->latencyValue:Landroid/widget/TextView;

    const-string v5, "-- ms"

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->jitterValue:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 197
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    new-instance v3, Lio/nekohasekai/sagernet/ui/SpeedTestCard$7;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$7;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 203
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_20a

    .line 205
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {v3, v7}, Landroid/view/Window;->setGravity(I)V

    const/4 v4, 0x2

    .line 207
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const v4, 0x3eb33333    # 0.35f

    .line 208
    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v4, 0x3f5c28f6    # 0.86f

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 210
    invoke-virtual {v3, v0, v6}, Landroid/view/Window;->setLayout(II)V

    .line 215
    :cond_20a
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->showMorph(Landroid/app/Dialog;)V

    :cond_20d
    :goto_20d
    return-void
.end method

.method private startTest()V
    .registers 4

    .line 259
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 260
    :cond_b
    iput-boolean v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancelled:Z

    .line 261
    iget v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->epoch:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->epoch:I

    .line 262
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->confirm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    const-string v2, "\u6d4b\u8bd5\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadValue:Landroid/widget/TextView;

    const-string v2, "0.0 Mbps"

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->latencyValue:Landroid/widget/TextView;

    const-string v2, "-- ms"

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->jitterValue:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 267
    sget-object v1, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/nekohasekai/sagernet/ui/SpeedTestCard$3;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard$3;-><init>(Lio/nekohasekai/sagernet/ui/SpeedTestCard;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 480
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancelTest()V

    .line 481
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->closeDialog()V

    return-void
.end method

.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-SpeedTestCard(Landroid/view/View;)V
    .registers 2

    .line 106
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->showDialog()V

    return-void
.end method

.method synthetic lambda$postDownload$8$io-nekohasekai-sagernet-ui-SpeedTestCard(ID)V
    .registers 4

    .line 447
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->downloadValue:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    invoke-static {p2, p3}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->formatMbps(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method synthetic lambda$postLatency$7$io-nekohasekai-sagernet-ui-SpeedTestCard(IDD)V
    .registers 8

    .line 435
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3d

    .line 436
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->latencyValue:Landroid/widget/TextView;

    const-string v0, " ms"

    if-eqz p1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 437
    :cond_23
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->jitterValue:Landroid/widget/TextView;

    if-eqz p1, :cond_3d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->setValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method synthetic lambda$postStatus$6$io-nekohasekai-sagernet-ui-SpeedTestCard(ILjava/lang/String;)V
    .registers 3

    .line 429
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->isCurrent(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->status:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method synthetic lambda$showDialog$2$io-nekohasekai-sagernet-ui-SpeedTestCard(Landroid/view/View;)V
    .registers 2

    .line 178
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->closeDialog()V

    return-void
.end method

.method synthetic lambda$showDialog$3$io-nekohasekai-sagernet-ui-SpeedTestCard(Landroid/view/View;)V
    .registers 2

    .line 185
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->startTest()V

    return-void
.end method

.method synthetic lambda$showDialog$4$io-nekohasekai-sagernet-ui-SpeedTestCard(Landroid/content/DialogInterface;)V
    .registers 3

    .line 199
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->dialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->dialog:Landroid/app/Dialog;

    .line 200
    :cond_7
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->action:Landroid/widget/TextView;

    const-string v0, "\u2197"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancelTest()V

    return-void
.end method

.method synthetic lambda$startTest$5$io-nekohasekai-sagernet-ui-SpeedTestCard(I)V
    .registers 2

    .line 267
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->runTest(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 494
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/SpeedTestCard;->cancel()V

    .line 495
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method
