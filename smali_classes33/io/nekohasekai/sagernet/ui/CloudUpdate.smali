.class public final Lio/nekohasekai/sagernet/ui/CloudUpdate;
.super Ljava/lang/Object;
.source "CloudUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "https://jiajiabox.linjiajia.top"

.field private static final MAIN:Landroid/os/Handler;

.field private static final cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static checked:Z

.field private static downloading:Z

.field private static owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static pending:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

.field private static pendingError:Ljava/lang/String;

.field private static pendingInstall:Ljava/io/File;

.field private static progressBar:Landroid/widget/ProgressBar;

.field private static progressText:Landroid/widget/TextView;

.field private static prompted:Z

.field private static registered:Z

.field private static resumed:Z

.field private static shown:Landroid/app/Dialog;

.field private static waitingPermission:Z

.field private static wasPaused:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Z
    .registers 1

    .line 22
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->isMain(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 22
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 22
    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 22
    sput-boolean p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->resumed:Z

    return p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 22
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/Dialog;
    .registers 1

    .line 22
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .line 22
    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$502(Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 1

    .line 22
    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$602(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 22
    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 22
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->deliver()V

    return-void
.end method

.method private static activity()Landroid/app/Activity;
    .registers 2

    .line 55
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->resumed:Z

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return-object v0
.end method

.method private static check(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://jiajiabox.linjiajia.top/api/releases"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->route()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 61
    const/16 v1, 0x2ee0

    :try_start_13
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "User-Agent"

    const-string v3, "JiajiaBox-CloudUpdate/1"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_17a

    .line 63
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_182

    const/16 v4, 0x1000

    :try_start_41
    new-array v4, v4, [B

    :goto_43
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5f

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v5

    const/high16 v7, 0x100000

    if-gt v6, v7, :cond_57

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_43

    :cond_57
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66f4\u65b0\u4fe1\u606f\u8fc7\u5927"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_16e

    :cond_5f
    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 65
    :cond_64
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "active"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_7a
    .catchall {:try_start_61 .. :try_end_7a} :catchall_182

    const/4 v3, 0x0

    if-nez v2, :cond_81

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    return-object v3

    .line 66
    :cond_81
    :try_start_81
    new-instance v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    invoke-direct {v4, v3}, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;-><init>(Lio/nekohasekai/sagernet/ui/CloudUpdate$1;)V

    const-string v5, "version_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->code:J

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v5

    iget-wide v7, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->code:J

    invoke-static {v5, v6, v7, v8}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->newer(JJ)Z

    move-result p0
    :try_end_a4
    .catchall {:try_start_81 .. :try_end_a4} :catchall_182

    if-nez p0, :cond_aa

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    return-object v3

    .line 68
    :cond_aa
    :try_start_aa
    const-string p0, "min_sdk"

    const/16 v5, 0x15

    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b4
    .catchall {:try_start_aa .. :try_end_b4} :catchall_182

    if-le p0, v5, :cond_ba

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    return-object v3

    .line 69
    :cond_ba
    :try_start_ba
    const-string p0, "abis"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v5, 0x1

    if-eqz p0, :cond_cc

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_ca

    goto :goto_cc

    :cond_ca
    const/4 v6, 0x0

    goto :goto_cd

    :cond_cc
    :goto_cc
    const/4 v6, 0x1

    .line 70
    :goto_cd
    if-eqz p0, :cond_ef

    const/4 v7, 0x0

    :goto_d0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_ef

    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_da
    if-ge v10, v9, :cond_ec

    aget-object v11, v8, v10

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_e6
    .catchall {:try_start_ba .. :try_end_e6} :catchall_182

    if-eqz v11, :cond_e9

    const/4 v6, 0x1

    :cond_e9
    add-int/lit8 v10, v10, 0x1

    goto :goto_da

    :cond_ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_d0

    .line 71
    :cond_ef
    if-nez v6, :cond_f5

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 71
    return-object v3

    .line 72
    :cond_f5
    :try_start_f5
    const-string p0, "size"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->size:J

    const-string p0, "sha256"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->sha:Ljava/lang/String;

    const-string p0, "version_name"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->name:Ljava/lang/String;

    const-string p0, "notes"

    const-string v1, ""

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->notes:Ljava/lang/String;

    .line 73
    const-string p0, "download_url"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "/downloads/releases/[a-f0-9]{24}\\.apk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 74
    iget-wide v1, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-lez v3, :cond_15e

    iget-wide v1, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->size:J

    const-wide/32 v5, 0x10000000

    cmp-long v3, v1, v5

    if-gtz v3, :cond_15e

    iget-object v1, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->sha:Ljava/lang/String;

    const-string v2, "[a-f0-9]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 75
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://jiajiabox.linjiajia.top"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->url:Ljava/net/URL;
    :try_end_15a
    .catchall {:try_start_f5 .. :try_end_15a} :catchall_182

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    return-object v4

    .line 74
    :cond_15e
    :try_start_15e
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66f4\u65b0\u4fe1\u606f\u65e0\u6548"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_166
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66f4\u65b0\u5730\u5740\u65e0\u6548"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_16e
    .catchall {:try_start_15e .. :try_end_16e} :catchall_182

    .line 64
    :catchall_16e
    move-exception p0

    if-eqz v3, :cond_179

    :try_start_171
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_175

    goto :goto_179

    :catchall_175
    move-exception v1

    :try_start_176
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_179
    :goto_179
    throw p0

    .line 62
    :cond_17a
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66f4\u65b0\u670d\u52a1\u4e0d\u53ef\u7528"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_182
    .catchall {:try_start_176 .. :try_end_182} :catchall_182

    .line 76
    :catchall_182
    move-exception p0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method

.method private static deliver()V
    .registers 12

    .line 79
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->activity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 80
    :cond_7
    sget-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->downloading:Z

    if-eqz v1, :cond_13

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    if-nez v1, :cond_12

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->showProgress(Landroid/app/Activity;)V

    :cond_12
    return-void

    .line 81
    :cond_13
    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingError:Ljava/lang/String;

    if-eqz v1, :cond_41

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingError:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingError:Ljava/lang/String;

    sget-boolean v2, Lio/nekohasekai/sagernet/ui/CloudUpdate;->wasPaused:Z

    if-eqz v2, :cond_23

    const-string v2, "\u4e0b\u8f7d\u5df2\u6682\u505c"

    goto :goto_25

    :cond_23
    const-string v2, "\u66f4\u65b0\u4e0b\u8f7d\u672a\u5b8c\u6210"

    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u518d\u6b21\u70b9\u51fb\u7ee7\u7eed\u53ef\u91cd\u8bd5\u6216\u7eed\u4f20\u3002"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$11;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/CloudUpdate$11;-><init>()V

    invoke-static {v0, v2, v1, v3}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 82
    :cond_41
    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingInstall:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    .line 83
    sget-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->waitingPermission:Z

    if-eqz v1, :cond_69

    sput-boolean v2, Lio/nekohasekai/sagernet/ui/CloudUpdate;->waitingPermission:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_69

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    if-nez v1, :cond_69

    new-instance v1, Lio/nekohasekai/sagernet/ui/CloudUpdate$12;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$12;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u5141\u8bb8\u5b89\u88c5\u66f4\u65b0"

    const-string v3, "\u5c1a\u672a\u5141\u8bb8\u5b89\u88c5\u6b64\u6765\u6e90\u7684\u5e94\u7528\u3002\u6388\u6743\u540e\u53ef\u7ee7\u7eed\u5b89\u88c5\uff0c\u5b89\u88c5\u5305\u5df2\u4fdd\u7559\u3002"

    invoke-static {v0, v2, v3, v1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 84
    :cond_69
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->install(Landroid/app/Activity;)V

    return-void

    .line 86
    :cond_6d
    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pending:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    if-eqz v1, :cond_12e

    sget-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->prompted:Z

    if-eqz v1, :cond_77

    goto/16 :goto_12e

    :cond_77
    const/4 v1, 0x1

    sput-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->prompted:Z

    sget-object v3, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pending:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    .line 88
    :try_start_7c
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    .line 89
    iget-object v6, v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->notes:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_97

    const-string v6, "\u4f53\u9a8c\u4f18\u5316\u4e0e\u95ee\u9898\u4fee\u590d\u3002"

    goto :goto_a9

    :cond_97
    iget-object v6, v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->notes:Ljava/lang/String;

    iget-object v7, v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->notes:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1770

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 90
    :goto_a9
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\u5185\u90e8\u7248\u672c\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->code:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u5b89\u88c5\u5305\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%.1f MB"

    iget-wide v8, v3, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->size:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v2

    invoke-static {v5, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7a0d\u540e"

    new-instance v2, Lio/nekohasekai/sagernet/ui/CloudUpdate$13;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/ui/CloudUpdate$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    new-instance v2, Lio/nekohasekai/sagernet/ui/CloudUpdate$14;

    invoke-direct {v2, v3}, Lio/nekohasekai/sagernet/ui/CloudUpdate$14;-><init>(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->style(Landroid/app/AlertDialog;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_124} :catch_125

    .line 91
    goto :goto_12d

    :catch_125
    move-exception v0

    const-string v1, "CloudUpdate"

    const-string v2, "Cannot show update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_12d
    return-void

    .line 86
    :cond_12e
    :goto_12e
    return-void
.end method

.method private static finishProgress()V
    .registers 2

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->downloading:Z

    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    :cond_f
    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    return-void
.end method

.method private static install(Landroid/app/Activity;)V
    .registers 7

    .line 131
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingInstall:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 133
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-lt v2, v3, :cond_3f

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    if-nez v2, :cond_3f

    sput-boolean v4, Lio/nekohasekai/sagernet/ui/CloudUpdate;->waitingPermission:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 134
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingInstall:Ljava/io/File;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_70} :catch_71

    .line 135
    goto :goto_80

    :catch_71
    move-exception v2

    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingInstall:Ljava/io/File;

    new-instance v1, Lio/nekohasekai/sagernet/ui/CloudUpdate$5;

    invoke-direct {v1, v0, p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$5;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u5b89\u88c5\u754c\u9762"

    const-string v2, "\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff0c\u6216\u4ece\u5b98\u7f51\u4e0b\u8f7d\u5b89\u88c5\u3002"

    invoke-static {p0, v0, v2, v1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 136
    :goto_80
    return-void
.end method

.method private static isMain(Landroid/app/Activity;)Z
    .registers 2

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "io.nekohasekai.sagernet.ui.MainActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$deliver$3()V
    .registers 1

    .line 81
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pending:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->start(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V

    return-void
.end method

.method static synthetic lambda$deliver$4(Landroid/app/Activity;)V
    .registers 1

    .line 83
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->install(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$deliver$5(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 90
    return-void
.end method

.method static synthetic lambda$deliver$6(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 90
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->start(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V

    return-void
.end method

.method static synthetic lambda$install$16(Ljava/io/File;Landroid/app/Activity;)V
    .registers 2

    .line 135
    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingInstall:Ljava/io/File;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->install(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$message$7(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 95
    return-void
.end method

.method static synthetic lambda$message$8(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 95
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    .registers 1

    .line 50
    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pending:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->deliver()V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/content/Context;)V
    .registers 3

    .line 50
    :try_start_0
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->check(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    move-result-object p0

    if-eqz p0, :cond_10

    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/CloudUpdate$15;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$15;-><init>(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 51
    :cond_10
    goto :goto_32

    :catch_11
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Startup check unavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CloudUpdate"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_32
    return-void
.end method

.method static synthetic lambda$onCreate$2(Landroid/content/Context;)V
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/nekohasekai/sagernet/ui/CloudUpdate$8;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$8;-><init>(Landroid/content/Context;)V

    const-string p0, "JiajiaBox-update-check"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method

.method static synthetic lambda$showProgress$14(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 121
    sget-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$showProgress$15(Landroid/content/DialogInterface;)V
    .registers 2

    .line 121
    sget-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$start$10([JJJ)V
    .registers 13

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    sub-long v3, v0, v3

    const-wide/16 v5, 0xc8

    cmp-long v7, v3, v5

    if-gez v7, :cond_14

    cmp-long v3, p1, p3

    if-eqz v3, :cond_14

    return-void

    :cond_14
    aput-wide v0, p0, v2

    sget-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    new-instance v0, Lio/nekohasekai/sagernet/ui/CloudUpdate$7;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/CloudUpdate$7;-><init>(JJ)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$start$11(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 2

    .line 113
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->finishProgress()V

    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingError:Ljava/lang/String;

    instance-of p0, p1, Lio/nekohasekai/sagernet/ui/UpdateTransfer$Cancelled;

    sput-boolean p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->wasPaused:Z

    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->deliver()V

    return-void
.end method

.method static synthetic lambda$start$12(Ljava/io/File;)V
    .registers 1

    .line 114
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->finishProgress()V

    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->pendingInstall:Ljava/io/File;

    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->deliver()V

    return-void
.end method

.method static synthetic lambda$start$13(Landroid/content/Context;Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    .registers 13

    .line 102
    nop

    .line 104
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cloud-updates"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u65e0\u6cd5\u521b\u5efa\u4e0b\u8f7d\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->code:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->sha:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9c

    array-length v3, v0

    const/4 v5, 0x0

    :goto_75
    if-ge v5, v3, :cond_9c

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_99

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 107
    :cond_9c
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v2

    .line 108
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->sha:Ljava/lang/String;

    invoke-static {v10, v1}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 109
    :cond_b1
    iget-object v2, p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->url:Ljava/net/URL;

    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->route()Ljava/net/Proxy;

    move-result-object v3

    iget-wide v5, p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->size:J

    iget-object v7, p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->sha:Ljava/lang/String;

    sget-object v8, Lio/nekohasekai/sagernet/ui/CloudUpdate;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v9, Lio/nekohasekai/sagernet/ui/CloudUpdate$2;

    invoke-direct {v9, v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$2;-><init>([J)V

    invoke-static/range {v2 .. v9}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->download(Ljava/net/URL;Ljava/net/Proxy;Ljava/io/File;JLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/nekohasekai/sagernet/ui/UpdateTransfer$Progress;)V

    .line 110
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_ce
    invoke-virtual {v4, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 112
    :cond_d4
    invoke-static {p0, v10, p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->verify(Landroid/content/Context;Ljava/io/File;Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d7} :catch_eb

    .line 113
    nop

    .line 114
    sget-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    new-instance p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$4;

    invoke-direct {p1, v10}, Lio/nekohasekai/sagernet/ui/CloudUpdate$4;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void

    .line 110
    :cond_e3
    :try_start_e3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u5b89\u88c5\u5305"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_eb} :catch_eb

    .line 113
    :catch_eb
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f6

    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    goto :goto_fa

    :cond_f6
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_fa
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/CloudUpdate$3;

    invoke-direct {v1, p1, p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$3;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$start$9(JJ)V
    .registers 8

    .line 109
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_33

    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    const-wide/16 v1, 0x64

    mul-long v1, v1, p0

    div-long/2addr v1, p2

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    long-to-double p1, p2

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object p1, p2, p0

    const-string p0, "%.1f / %.1f MB"

    invoke-static {v1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    return-void
.end method

.method private static message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$16;

    invoke-direct {p1}, Lio/nekohasekai/sagernet/ui/CloudUpdate$16;-><init>()V

    const-string p2, "\u7a0d\u540e"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    if-eqz p3, :cond_24

    new-instance p1, Lio/nekohasekai/sagernet/ui/CloudUpdate$17;

    invoke-direct {p1, p3}, Lio/nekohasekai/sagernet/ui/CloudUpdate$17;-><init>(Ljava/lang/Runnable;)V

    const-string p2, "\u7ee7\u7eed"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_24
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->style(Landroid/app/AlertDialog;)V

    .line 96
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .registers 5

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->owner:Ljava/lang/ref/WeakReference;

    .line 38
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->registered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    sput-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->registered:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Lio/nekohasekai/sagernet/ui/CloudUpdate$1;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/ui/CloudUpdate$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 47
    :cond_1a
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->checked:Z

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    sput-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->checked:Z

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 49
    sget-object v0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->MAIN:Landroid/os/Handler;

    new-instance v1, Lio/nekohasekai/sagernet/ui/CloudUpdate$6;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$6;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method private static route()Ljava/net/Proxy;
    .registers 5

    .line 56
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getMixedPort()I

    move-result v0

    invoke-direct {v3, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_27

    :cond_25
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_27
    return-object v1
.end method

.method private static showProgress(Landroid/app/Activity;)V
    .registers 6

    .line 118
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    const-string v2, "\u51c6\u5907\u4e0b\u8f7d\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->progressBar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u6b63\u5728\u66f4\u65b0 JiajiaBox"

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lio/nekohasekai/sagernet/ui/CloudUpdate$9;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$9;-><init>()V

    const-string v1, "\u6682\u505c"

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/CloudUpdate$10;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$10;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->style(Landroid/app/AlertDialog;)V

    .line 122
    return-void
.end method

.method private static signatures([Landroid/content/pm/Signature;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    if-eqz p0, :cond_2a

    array-length v0, p0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    aget-object v3, p0, v2

    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    return-object v0

    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u7f3a\u5c11\u7b7e\u540d"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static start(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    .registers 4

    .line 98
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2b

    sget-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->downloading:Z

    if-eqz v1, :cond_b

    goto :goto_2b

    :cond_b
    const/4 v1, 0x1

    sput-boolean v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->downloading:Z

    sget-object v1, Lio/nekohasekai/sagernet/ui/CloudUpdate;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->showProgress(Landroid/app/Activity;)V

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/nekohasekai/sagernet/ui/CloudUpdate$0;

    invoke-direct {v2, v0, p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$0;-><init>(Landroid/content/Context;Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V

    const-string p0, "JiajiaBox-update-download"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 116
    return-void

    .line 98
    :cond_2b
    :goto_2b
    return-void
.end method

.method private static style(Landroid/app/AlertDialog;)V
    .registers 3

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sput-object p0, Lio/nekohasekai/sagernet/ui/CloudUpdate;->shown:Landroid/app/Dialog;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    :try_start_c
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptWindow(Landroid/view/Window;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string v0, "CloudUpdate"

    const-string v1, "Cannot apply dialog style"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private static verify(Landroid/content/Context;Ljava/io/File;Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p2, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_6c

    iget-object v0, p2, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->sha:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 127
    if-eqz v1, :cond_61

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    iget-wide v4, p2, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;->code:J

    cmp-long p0, v2, v4

    if-nez p0, :cond_61

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/nekohasekai/sagernet/ui/UpdateTransfer;->newer(JJ)Z

    move-result p0

    if-eqz p0, :cond_61

    iget-object p0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->signatures([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object p0

    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->signatures([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 128
    return-void

    .line 127
    :cond_61
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u5b89\u88c5\u5305\u5305\u540d\u3001\u7248\u672c\u6216\u7b7e\u540d\u4e0d\u5339\u914d\uff0c\u5df2\u53d6\u6d88\u5b89\u88c5"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_6c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u5b89\u88c5\u5305\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static version(Landroid/content/pm/PackageInfo;)J
    .registers 3

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_e

    :cond_b
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    :goto_e
    return-wide v0
.end method
