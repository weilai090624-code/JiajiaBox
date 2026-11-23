.class public final La/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a$Release;
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String;

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

.field private static pending:La/a/a$Release;

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

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, La/a/a;->MAIN:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/a/a;->owner:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, La/a/a;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "2\r\u00ec\u00c7\u00a5\u00cf;\u001c%\u0006\u00e7\u0081\u00a2\u0084bA#\u0008\u00e2\u00ce\u00a7\u00cbkQ%"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a;->BASE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Z
    .registers 1

    invoke-static {p0}, La/a/a;->isMain(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, La/a/a;->owner:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    sput-object p0, La/a/a;->owner:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    sput-boolean p0, La/a/a;->resumed:Z

    return p0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    sget-object v0, La/a/a;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/Dialog;
    .registers 1

    sget-object v0, La/a/a;->shown:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    sput-object p0, La/a/a;->shown:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$502(Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 1

    sput-object p0, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$602(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    sput-object p0, La/a/a;->progressText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700()V
    .registers 0

    invoke-static {}, La/a/a;->deliver()V

    return-void
.end method

.method private static activity()Landroid/app/Activity;
    .registers 2

    sget-object v0, La/a/a;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-boolean v1, La/a/a;->resumed:Z

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

.method private static check(Landroid/content/Context;)La/a/a$Release;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    const-string v1, "2\r\u00ec\u00c7\u00a5\u00cf;\u001c%\u0006\u00e7\u0081\u00a2\u0084bA#\u0008\u00e2\u00ce\u00a7\u00cbkQ%N\u00e1\u00ef\u00d7\u00f2\u008e~V<\u0019\u00e4\u00d3\u00a6"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x2ee0

    :try_start_15
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "\u000f\n\u00fd\u00c5\u00fb\u00b4sV<\u0005"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0010\u0010\u00f9\u00dd\u00bf\u0094V\\*\\\u00d3\u00c3\u00a1\u0098h~:\r\u00e9\u00d3\u00a3\u00ca5"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\u001b\u001a\u00fb\u00d2\u00a6\u00819v<\u0012\u00ff\u00cb\u00a7\u0083k"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3\u001d\u00fd\u00d9\u00a2\u009c`J"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1cc

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_1d8

    const/16 v4, 0x1000

    :try_start_53
    new-array v4, v4, [B

    :goto_55
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_75

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v5

    const/high16 v7, 0x100000

    if-gt v6, v7, :cond_69

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_55

    :cond_69
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66ae\u65c9\u4f79\u60d8\u8f11\u59d2"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_1c0

    :cond_75
    if-eqz v3, :cond_7a

    :try_start_77
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7a
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, ";\u001a\u00ec\u00de\u00a0\u0090"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_94
    .catchall {:try_start_77 .. :try_end_94} :catchall_1d8

    const/4 v3, 0x0

    if-nez v2, :cond_9b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :cond_9b
    :try_start_9b
    new-instance v4, La/a/a$Release;

    invoke-direct {v4, v3}, La/a/a$Release;-><init>(La/a/a$1;)V

    const-string v5, ",\u001c\u00ea\u00c4\u00bf\u009azl1\u001e\u00f4\u00ca"

    invoke-static {v5}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, La/a/a$Release;->code:J

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {p0}, La/a/a;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v5

    iget-wide v7, v4, La/a/a$Release;->code:J

    invoke-static {v5, v6, v7, v8}, La/a/c;->newer(JJ)Z

    move-result p0
    :try_end_c2
    .catchall {:try_start_9b .. :try_end_c2} :catchall_1d8

    if-nez p0, :cond_c8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :cond_c8
    :try_start_c8
    const-string p0, "7\u0010\u00f6\u00e8\u00a5\u0091\u007f"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x15

    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_d6
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_1d8

    if-le p0, v5, :cond_dc

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :cond_dc
    :try_start_dc
    const-string p0, ";\u001b\u00f1\u00c4"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v5, 0x1

    if-eqz p0, :cond_f2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_f0

    goto :goto_f2

    :cond_f0
    const/4 v6, 0x0

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 v6, 0x1

    :goto_f3
    if-eqz p0, :cond_115

    const/4 v7, 0x0

    :goto_f6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_115

    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_100
    if-ge v10, v9, :cond_112

    aget-object v11, v8, v10

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_10c
    .catchall {:try_start_dc .. :try_end_10c} :catchall_1d8

    if-eqz v11, :cond_10f

    const/4 v6, 0x1

    :cond_10f
    add-int/lit8 v10, v10, 0x1

    goto :goto_100

    :cond_112
    add-int/lit8 v7, v7, 0x1

    goto :goto_f6

    :cond_115
    if-nez v6, :cond_11b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :cond_11b
    :try_start_11b
    const-string p0, ")\u0010\u00e2\u00d2"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, La/a/a$Release;->size:J

    const-string p0, ")\u0011\u00f9\u0085\u00e3\u00c3"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, La/a/a$Release;->sha:Ljava/lang/String;

    const-string p0, ",\u001c\u00ea\u00c4\u00bf\u009azl<\u0010\u00fd\u00ca"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, La/a/a$Release;->name:Ljava/lang/String;

    const-string p0, "4\u0016\u00ec\u00d2\u00a5"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, La/a/a$Release;->notes:Ljava/lang/String;

    const-string p0, ";\t\u00f1\u00e8\u00b2\u009ac]>\u001e\u00f1\u00cb\u0091\u0098~G"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "u\u0018\u00e8\u00de\u00f9\u0087q_7\u0010\u00e3\u00ca\u00bd\u00c2WJg\u000f\u00b8\u008a\u00ff\u00b8\u007f\u0011v\u001c\u00dc\u00b1\u00df\u00ad\u0097"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    iget-wide v1, v4, La/a/a$Release;->size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-lez v3, :cond_1a8

    iget-wide v1, v4, La/a/a$Release;->size:J

    const-wide/32 v5, 0x10000000

    cmp-long v3, v1, v5

    if-gtz v3, :cond_1a8

    iget-object v1, v4, La/a/a$Release;->sha:Ljava/lang/String;

    const-string v2, "\u0001\u0018\u00b5\u00d1\u00e6\u00d8-n)G\u00a4\u00d2"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\r\u00ec\u00c7\u00a5\u00cf;\u001c%\u0006\u00e7\u0081\u00a2\u0084bA#\u0008\u00e2\u00ce\u00a7\u00cbkQ%"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, La/a/a$Release;->url:Ljava/net/URL;
    :try_end_1a4
    .catchall {:try_start_11b .. :try_end_1a4} :catchall_1d8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v4

    :cond_1a8
    :try_start_1a8
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66ae\u65c9\u4f79\u60d8\u6536\u65bd"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b4
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66ae\u65c9\u57a8\u57f7\u6536\u65bd"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1c0
    .catchall {:try_start_1a8 .. :try_end_1c0} :catchall_1d8

    :catchall_1c0
    move-exception p0

    if-eqz v3, :cond_1cb

    :try_start_1c3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1c6
    .catchall {:try_start_1c3 .. :try_end_1c6} :catchall_1c7

    goto :goto_1cb

    :catchall_1c7
    move-exception v1

    :try_start_1c8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1cb
    :goto_1cb
    throw p0

    :cond_1cc
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u66ae\u65c9\u6795\u5216\u4edb\u531a\u753c"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1d8
    .catchall {:try_start_1c8 .. :try_end_1d8} :catchall_1d8

    :catchall_1d8
    move-exception p0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method

.method private static deliver()V
    .registers 12

    invoke-static {}, La/a/a;->activity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-boolean v1, La/a/a;->downloading:Z

    if-eqz v1, :cond_13

    sget-object v1, La/a/a;->shown:Landroid/app/Dialog;

    if-nez v1, :cond_12

    invoke-static {v0}, La/a/a;->showProgress(Landroid/app/Activity;)V

    :cond_12
    return-void

    :cond_13
    sget-object v1, La/a/a;->pendingError:Ljava/lang/String;

    if-eqz v1, :cond_4d

    sget-object v1, La/a/a;->pendingError:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, La/a/a;->pendingError:Ljava/lang/String;

    sget-boolean v2, La/a/a;->wasPaused:Z

    if-eqz v2, :cond_27

    const-string v2, "\u4e51\u8f04\u5d6a\u6635\u508a"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_27
    const-string v2, "\u66ae\u65c9\u4e93\u8fca\u67fc\u5b79\u6204"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "P\u51f4\u6bb9\u700e\u512d\u7e12\u7ef9\u53dc\u919f\u8ba4\u6286\u7e42\u4fee\u30ef"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, La/a/a$11;

    invoke-direct {v3}, La/a/a$11;-><init>()V

    invoke-static {v0, v2, v1, v3}, La/a/a;->message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_4d
    sget-object v1, La/a/a;->pendingInstall:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_81

    sget-boolean v1, La/a/a;->waitingPermission:Z

    if-eqz v1, :cond_7d

    sput-boolean v2, La/a/a;->waitingPermission:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_7d

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    if-nez v1, :cond_7d

    new-instance v1, La/a/a$12;

    invoke-direct {v1, v0}, La/a/a$12;-><init>(Landroid/app/Activity;)V

    const-string v2, "\u511b\u8bc1\u5b11\u8872\u6622\u6545"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5c40\u6753\u51d9\u8b0f\u5b5f\u8830\u6b70\u6756\u6ec2\u76f5\u5e04\u7587\u30cc\u6365\u674f\u5425\u53a5\u7e8e\u7e65\u5b2e\u8803\uffe9\u5b8d\u88e6\u5347\u5d93\u4f5d\u75c6\u30bc"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, La/a/a;->message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_7d
    invoke-static {v0}, La/a/a;->install(Landroid/app/Activity;)V

    return-void

    :cond_81
    sget-object v1, La/a/a;->pending:La/a/a$Release;

    if-eqz v1, :cond_18e

    sget-boolean v1, La/a/a;->prompted:Z

    if-eqz v1, :cond_8b

    goto/16 :goto_18e

    :cond_8b
    const/4 v1, 0x1

    sput-boolean v1, La/a/a;->prompted:Z

    sget-object v3, La/a/a;->pending:La/a/a$Release;

    invoke-static {v0}, La/a/b;->get(Landroid/content/Context;)J

    move-result-wide v4

    iget-wide v6, v3, La/a/a$Release;->code:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_9b

    return-void

    :cond_9b
    :try_start_9b
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-static {v4}, La/a/a;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    iget-object v6, v3, La/a/a$Release;->notes:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_ba

    const-string v6, "\u4f09\u9af5\u4f80\u53a1\u4ed8\u951b\u988c\u4fdd\u595f\u3073"

    invoke-static {v6}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_cc

    :cond_ba
    iget-object v6, v3, La/a/a$Release;->notes:Ljava/lang/String;

    iget-object v7, v3, La/a/a$Release;->notes:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1770

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_cc
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u538b\u73c9\u6528\u72ff\u67fa"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, La/a/a$Release;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "P\u51fc\u9070\u72ff\u67fa\uffef"

    invoke-static {v8}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "z\u21eb\u00b8"

    invoke-static {v5}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v3, La/a/a$Release;->code:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "P\u5bf0\u885d\u53b2\uffcc"

    invoke-static {v5}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "\u007fW\u00a9\u00d1\u00f6\u00b8V"

    invoke-static {v7}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v3, La/a/a$Release;->size:J

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

    const-string v2, "Ps"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7a57\u5477"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, La/a/a$13;

    invoke-direct {v2}, La/a/a$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7a91\u530a\u666c\u6507"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, La/a/a$14;

    invoke-direct {v2, v3}, La/a/a$14;-><init>(La/a/a$Release;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8da9\u8fbe\u6bfc\u72ff\u67fa"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, La/a/a;->activity()Landroid/app/Activity;

    move-result-object v8

    iget-wide v9, v3, La/a/a$Release;->code:J

    new-instance v2, La/a/b$Listener;

    invoke-direct {v2, v8, v9, v10}, La/a/b$Listener;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, La/a/a;->style(Landroid/app/AlertDialog;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_17c} :catch_17d

    goto :goto_18d

    :catch_17d
    move-exception v0

    const-string v1, "\u0019\u0015\u00f7\u00c2\u00b2\u00a0dW3\u0005\u00f5"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0019\u0018\u00f6\u00d9\u00b9\u00814@:\u001e\u00e7\u008f\u00bb\u009dhJ>\u000c"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18d
    return-void

    :cond_18e
    :goto_18e
    return-void
.end method

.method private static finishProgress()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, La/a/a;->downloading:Z

    sget-object v0, La/a/a;->shown:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    sget-object v0, La/a/a;->shown:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sput-object v1, La/a/a;->shown:Landroid/app/Dialog;

    :cond_f
    sput-object v1, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    sput-object v1, La/a/a;->progressText:Landroid/widget/TextView;

    return-void
.end method

.method private static install(Landroid/app/Activity;)V
    .registers 7

    sget-object v0, La/a/a;->pendingInstall:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-lt v2, v3, :cond_47

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    if-nez v2, :cond_47

    sput-boolean v4, La/a/a;->waitingPermission:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, ";\u0017\u00fc\u00c5\u00b9\u009cp\u001d!\u0014\u00e4\u00db\u00a7\u0083kXd$\u00c9\u00e9\u0087\u00a2A|\u0017/\u00cb\u00d1\u00f1\u008a\u00b2D{\t(\u00c8\u00e5\u009a\u00a1Aq\u0014#"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*\u0018\u00fb\u00dc\u00b7\u0092q\t"

    invoke-static {v5}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

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

    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "t\u001a\u00f9\u00d4\u00be\u0090"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v5, ";\u0017\u00fc\u00c5\u00b9\u009cp\u001d;\u001f\u00e4\u00ca\u00a0\u0099\"J)\u001d\u00e1\u00c8\u00a8\u00cbRj\u00076"

    invoke-static {v5}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, ";\t\u00e8\u00db\u00bf\u0096uG;\u001e\u00fe\u0080\u00b8\u0083h\u0005+\u0007\u00ec\u00d5\u00a9\u008c`\r2\u0000\u00e3\u00f4\u00df\u00ba\u00996[+\u001b\u00ff\u00df\u00a3\u0091"

    invoke-static {v5}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sput-object v1, La/a/a;->pendingInstall:Ljava/io/File;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_84} :catch_85

    goto :goto_9c

    :catch_85
    move-exception v2

    sput-object v1, La/a/a;->pendingInstall:Ljava/io/File;

    new-instance v1, La/a/a$5;

    invoke-direct {v1, v0, p0}, La/a/a$5;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    const-string v0, "\u65ba\u6cac\u62cb\u5fb7\u5b5f\u8830\u7558\u9751"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u8bad\u7a74\u5496\u917a\u8b03\ufff9\u6202\u4efd\u5bca\u7f20\u4e9b\u8fd2\u5b47\u8828\u300e"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, v1}, La/a/a;->message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_9c
    return-void
.end method

.method private static isMain(Landroid/app/Activity;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "3\u0016\u00b6\u00d9\u00b3\u009e{[3\u0002\u00f5\u00c4\u00af\u0084\"X+\u000e\u00ed\u00d5\u00a8\u0080p\r7\u0008\u00ae\u00d2\u00df\u00b4\u0092ZY-\u0011\u00e1\u00df\u00a1\u008d"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$deliver$3()V
    .registers 1

    sget-object v0, La/a/a;->pending:La/a/a$Release;

    invoke-static {v0}, La/a/a;->start(La/a/a$Release;)V

    return-void
.end method

.method static synthetic lambda$deliver$4(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, La/a/a;->install(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$deliver$5(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$deliver$6(La/a/a$Release;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0}, La/a/a;->start(La/a/a$Release;)V

    return-void
.end method

.method static synthetic lambda$install$16(Ljava/io/File;Landroid/app/Activity;)V
    .registers 2

    sput-object p0, La/a/a;->pendingInstall:Ljava/io/File;

    invoke-static {p1}, La/a/a;->install(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$message$7(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method static synthetic lambda$message$8(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(La/a/a$Release;)V
    .registers 1

    sput-object p0, La/a/a;->pending:La/a/a$Release;

    invoke-static {}, La/a/a;->deliver()V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-static {p0}, La/a/a;->check(Landroid/content/Context;)La/a/a$Release;

    move-result-object p0

    if-eqz p0, :cond_10

    sget-object v0, La/a/a;->MAIN:Landroid/os/Handler;

    new-instance v1, La/a/a$15;

    invoke-direct {v1, p0}, La/a/a$15;-><init>(La/a/a$Release;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    :cond_10
    goto :goto_3a

    :catch_11
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\r\u00f9\u00c5\u00a2\u0080d\u00131\u0019\u00f5\u00cc\u00a5\u00cdyE+\u001f\u00e9\u00ce\u00aa\u0084fO\'[\u00a0"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    const-string v0, "\u0019\u0015\u00f7\u00c2\u00b2\u00a0dW3\u0005\u00f5"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method static synthetic lambda$onCreate$2(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, La/a/a$8;

    invoke-direct {v1, p0}, La/a/a$8;-><init>(Landroid/content/Context;)V

    const-string p0, "\u0010\u0010\u00f9\u00dd\u00bf\u0094V\\*\\\u00e5\u00df\u00aa\u008cxNg\n\u00e0\u00c2\u00a5\u008e"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic lambda$showProgress$14(Landroid/content/DialogInterface;I)V
    .registers 2

    sget-object p0, La/a/a;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$showProgress$15(Landroid/content/DialogInterface;)V
    .registers 2

    sget-object p0, La/a/a;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$start$10([JJJ)V
    .registers 13

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

    sget-object p0, La/a/a;->MAIN:Landroid/os/Handler;

    new-instance v0, La/a/a$7;

    invoke-direct {v0, p1, p2, p3, p4}, La/a/a$7;-><init>(JJ)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$start$11(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {}, La/a/a;->finishProgress()V

    sput-object p0, La/a/a;->pendingError:Ljava/lang/String;

    instance-of p0, p1, La/a/c$Cancelled;

    sput-boolean p0, La/a/a;->wasPaused:Z

    invoke-static {}, La/a/a;->deliver()V

    return-void
.end method

.method static synthetic lambda$start$12(Ljava/io/File;)V
    .registers 1

    invoke-static {}, La/a/a;->finishProgress()V

    sput-object p0, La/a/a;->pendingInstall:Ljava/io/File;

    invoke-static {}, La/a/a;->deliver()V

    return-void
.end method

.method static synthetic lambda$start$13(Landroid/content/Context;La/a/a$Release;)V
    .registers 13

    nop

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "9\u0015\u00f7\u00c2\u00b2\u00d8aC6\u0010\u00e4\u00ca\u00bd"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_29

    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u65ba\u6cac\u5283\u5e4d\u4edd\u8f88\u76fa\u5f66"

    invoke-static {p1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, La/a/a$Release;->code:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "w"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, La/a/a$Release;->sha:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "t\t\u00f9\u00c5\u00a2"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

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

    const-string v3, "t\u0018\u00e8\u00dc"

    invoke-static {v3}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b4

    array-length v3, v0

    const/4 v5, 0x0

    :goto_89
    if-ge v5, v3, :cond_b4

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "t"

    invoke-static {v9}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_b4
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v2

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v1, p1, La/a/a$Release;->sha:Ljava/lang/String;

    invoke-static {v10, v1}, La/a/c;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ec

    :cond_c9
    iget-object v2, p1, La/a/a$Release;->url:Ljava/net/URL;

    invoke-static {}, La/a/a;->route()Ljava/net/Proxy;

    move-result-object v3

    iget-wide v5, p1, La/a/a$Release;->size:J

    iget-object v7, p1, La/a/a$Release;->sha:Ljava/lang/String;

    sget-object v8, La/a/a;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v9, La/a/a$2;

    invoke-direct {v9, v0}, La/a/a$2;-><init>([J)V

    invoke-static/range {v2 .. v9}, La/a/c;->download(Ljava/net/URL;Ljava/net/Proxy;Ljava/io/File;JLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;La/a/c$Progress;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_e6
    invoke-virtual {v4, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_fb

    :cond_ec
    invoke-static {p0, v10, p1}, La/a/a;->verify(Landroid/content/Context;Ljava/io/File;La/a/a$Release;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ef} :catch_107

    nop

    sget-object p0, La/a/a;->MAIN:Landroid/os/Handler;

    new-instance p1, La/a/a$4;

    invoke-direct {p1, v10}, La/a/a$4;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_fb
    :try_start_fb
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u65ba\u6cac\u4f45\u5bef\u5b5f\u8830\u5311"

    invoke-static {p1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_107} :catch_107

    :catch_107
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_116

    const-string p1, "\u7f0b\u7ea5\u5f9a\u5e8f\uffda\u8b02\u7a19\u543d\u919f\u8ba4\u3092"

    invoke-static {p1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11a

    :cond_116
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_11a
    sget-object v0, La/a/a;->MAIN:Landroid/os/Handler;

    new-instance v1, La/a/a$3;

    invoke-direct {v1, p1, p0}, La/a/a$3;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$start$9(JJ)V
    .registers 8

    sget-object v0, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_37

    sget-object v0, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    const-wide/16 v1, 0x64

    mul-long v1, v1, p0

    div-long/2addr v1, p2

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, La/a/a;->progressText:Landroid/widget/TextView;

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

    const-string p0, "\u007fW\u00a9\u00d1\u00f6\u00da4\u0016|@\u00f6\u008f\u0083\u00af"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    return-void
.end method

.method private static message(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, La/a/a$16;

    invoke-direct {p1}, La/a/a$16;-><init>()V

    const-string p2, "\u7a57\u5477"

    invoke-static {p2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    if-eqz p3, :cond_2c

    new-instance p1, La/a/a$17;

    invoke-direct {p1, p3}, La/a/a$17;-><init>(Ljava/lang/Runnable;)V

    const-string p2, "\u7ebd\u7e94"

    invoke-static {p2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2c
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, La/a/a;->style(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/a/a;->owner:Ljava/lang/ref/WeakReference;

    sget-boolean v0, La/a/a;->registered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    sput-boolean v1, La/a/a;->registered:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v2, La/a/a$1;

    invoke-direct {v2}, La/a/a$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1a
    sget-boolean v0, La/a/a;->checked:Z

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    sput-boolean v1, La/a/a;->checked:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, La/a/a;->MAIN:Landroid/os/Handler;

    new-instance v1, La/a/a$6;

    invoke-direct {v1, p0}, La/a/a$6;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static route()Ljava/net/Proxy;
    .registers 5

    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getConnected()Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "kK\u00af\u0099\u00e6\u00db$\u001dc"

    invoke-static {v4}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getMixedPort()I

    move-result v0

    invoke-direct {v3, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_2b

    :cond_29
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_2b
    return-object v1
.end method

.method private static showProgress(Landroid/app/Activity;)V
    .registers 6

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

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v1, La/a/a;->progressText:Landroid/widget/TextView;

    sget-object v1, La/a/a;->progressText:Landroid/widget/TextView;

    const-string v2, "\u519c\u597e\u4e93\u8fca\u20f0"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, La/a/a;->progressText:Landroid/widget/TextView;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, La/a/a;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object v1, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    sget-object v1, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    sget-object v1, La/a/a;->progressBar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u6b39\u5751\u666c\u6507\u00f6\u00bf}R8\u0018\u00f1\u00ed\u00a1\u0095"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, La/a/a$9;

    invoke-direct {v0}, La/a/a$9;-><init>()V

    const-string v1, "\u66d8\u5025"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, La/a/a$10;

    invoke-direct {v0}, La/a/a$10;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p0}, La/a/a;->style(Landroid/app/AlertDialog;)V

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

    if-eqz p0, :cond_2e

    array-length v0, p0

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2d

    aget-object v3, p0, v2

    const-string v4, "\t1\u00d9\u009a\u00e4\u00c0\""

    invoke-static {v4}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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

    :cond_2d
    return-object v0

    :cond_2e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u7f60\u5c68\u7be6\u54ba"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static start(La/a/a$Release;)V
    .registers 4

    invoke-static {}, La/a/a;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2f

    sget-boolean v1, La/a/a;->downloading:Z

    if-eqz v1, :cond_b

    goto :goto_2f

    :cond_b
    const/4 v1, 0x1

    sput-boolean v1, La/a/a;->downloading:Z

    sget-object v1, La/a/a;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v0}, La/a/a;->showProgress(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, La/a/a$0;

    invoke-direct {v2, v0, p0}, La/a/a$0;-><init>(Landroid/content/Context;La/a/a$Release;)V

    const-string p0, "\u0010\u0010\u00f9\u00dd\u00bf\u0094V\\*\\\u00e5\u00df\u00aa\u008cxNg\r\u00e7\u00d0\u00a8\u0089kB&"

    invoke-static {p0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2f
    :goto_2f
    return-void
.end method

.method private static style(Landroid/app/AlertDialog;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sput-object p0, La/a/a;->shown:Landroid/app/Dialog;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    :try_start_c
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptWindow(Landroid/view/Window;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_24

    :catch_14
    move-exception p0

    const-string v0, "\u0019\u0015\u00f7\u00c2\u00b2\u00a0dW3\u0005\u00f5"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0019\u0018\u00f6\u00d9\u00b9\u00814R\"\u0001\u00fc\u00d6\u00ee\u0089eJ&\u0006\u00ef\u0087\u00b5\u0091}O\'"

    invoke-static {v1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method private static verify(Landroid/content/Context;Ljava/io/File;La/a/a$Release;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p2, La/a/a$Release;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_70

    iget-object v0, p2, La/a/a$Release;->sha:Ljava/lang/String;

    invoke-static {p1, v0}, La/a/c;->valid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

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

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    invoke-static {v1}, La/a/a;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    iget-wide v4, p2, La/a/a$Release;->code:J

    cmp-long p0, v2, v4

    if-nez p0, :cond_61

    invoke-static {v0}, La/a/a;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    invoke-static {v1}, La/a/a;->version(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, La/a/c;->newer(JJ)Z

    move-result p0

    if-eqz p0, :cond_61

    iget-object p0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, La/a/a;->signatures([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object p0

    iget-object p2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p2}, La/a/a;->signatures([Landroid/content/pm/Signature;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    return-void

    :cond_61
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u5bd3\u88bc\u539d\u53b2\u54db\u30f4\u725c\u671f\u6244\u7b0f\u549d\u4ea2\u53f7\u91a0\uff00\u5dd9\u539c\u6de1\u5b01\u8862"

    invoke-static {p1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u5bd3\u88bc\u539d\u6896\u9a5a\u59c4\u8d31"

    invoke-static {p1}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static version(Landroid/content/pm/PackageInfo;)J
    .registers 3

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
