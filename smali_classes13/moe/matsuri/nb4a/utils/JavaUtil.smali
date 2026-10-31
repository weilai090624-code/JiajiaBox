.class public Lmoe/matsuri/nb4a/utils/JavaUtil;
.super Ljava/lang/Object;
.source "JavaUtil.java"


# static fields
.field static final DECODED_ESCAPES:[C

.field static final ENCODED_ESCAPES:[C

.field private static final HEX_ARRAY:[C

.field static final PATTERN:Ljava/util/regex/Pattern;

.field public static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const/16 v0, 0x8

    new-array v1, v0, [C

    fill-array-data v1, :array_44

    sput-object v1, Lmoe/matsuri/nb4a/utils/JavaUtil;->ENCODED_ESCAPES:[C

    .line 37
    new-array v0, v0, [C

    fill-array-data v0, :array_50

    sput-object v0, Lmoe/matsuri/nb4a/utils/JavaUtil;->DECODED_ESCAPES:[C

    .line 41
    const-string v0, "\\\\(?:(b|t|n|f|r|\\\"|\\\'|\\\\)|((?:[0-3]?[0-7])?[0-7])|u+(\\p{XDigit}{4}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/utils/JavaUtil;->PATTERN:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/utils/JavaUtil;->HEX_ARRAY:[C

    .line 192
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 193
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setNumberToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setObjectToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/utils/JavaUtil;->gson:Lcom/google/gson/Gson;

    .line 192
    return-void

    :array_44
    .array-data 2
        0x22s
        0x27s
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
    .end array-data

    :array_50
    .array-data 2
        0x22s
        0x27s
        0x5cs
        0x8s
        0xcs
        0xas
        0xds
        0x9s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 177
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 178
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_26

    .line 179
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 180
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lmoe/matsuri/nb4a/utils/JavaUtil;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 181
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lmoe/matsuri/nb4a/utils/JavaUtil;->HEX_ARRAY:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 178
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 183
    .end local v1    # "j":I
    :cond_26
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static checkIsHuaweiRom()Z
    .registers 2

    .line 143
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static createFile(Ljava/io/File;Z)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "deleted"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "deleted"
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_11

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_11

    .line 137
    :catch_c
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    :goto_11
    nop

    .line 140
    :goto_12
    return-void
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 5

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 149
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_b
    :try_start_b
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentProcessName"

    .line 157
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 158
    .local v3, "getProcessName":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_24

    return-object v2

    .line 159
    .end local v0    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v3    # "getProcessName":Ljava/lang/reflect/Method;
    :catch_24
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.linjiajia.top"

    return-object v1
.end method

.method public static handleWebviewDir(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    .line 73
    return-void

    .line 76
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v0, "pathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "dataPath":Ljava/lang/String;
    const-string v2, "/app_webview"

    .line 80
    .local v2, "webViewDir":Ljava/lang/String;
    const-string v3, "/app_hws_webview"

    .line 81
    .local v3, "huaweiWebViewDir":Ljava/lang/String;
    const-string v4, "/webview_data.lock"

    .line 82
    .local v4, "lockFile":Ljava/lang/String;
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "processName":Ljava/lang/String;
    const-string v6, "com.linjiajia.top"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_129

    const-string v7, "_"

    if-nez v6, :cond_89

    .line 84
    :try_start_28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_34

    :cond_33
    move-object v6, v5

    .line 85
    .local v6, "suffix":Ljava/lang/String;
    :goto_34
    invoke-static {v6}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lmoe/matsuri/nb4a/utils/JavaUtil;->checkIsHuaweiRom()Z

    move-result v7

    if-eqz v7, :cond_108

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_108

    .line 93
    .end local v6    # "suffix":Ljava/lang/String;
    :cond_89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6    # "suffix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lmoe/matsuri/nb4a/utils/JavaUtil;->checkIsHuaweiRom()Z

    move-result v7

    if-eqz v7, :cond_108

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_108
    :goto_108
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_128

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 102
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_127

    .line 104
    invoke-static {v9}, Lmoe/matsuri/nb4a/utils/JavaUtil;->tryLockOrRecreateFile(Ljava/io/File;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_126} :catch_129

    .line 105
    goto :goto_128

    .line 107
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_127
    goto :goto_10c

    .line 110
    .end local v0    # "pathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "dataPath":Ljava/lang/String;
    .end local v2    # "webViewDir":Ljava/lang/String;
    .end local v3    # "huaweiWebViewDir":Ljava/lang/String;
    .end local v4    # "lockFile":Ljava/lang/String;
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "suffix":Ljava/lang/String;
    :cond_128
    :goto_128
    goto :goto_12f

    .line 108
    :catch_129
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ktx/Logs;->e(Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12f
    return-void
.end method

.method public static isEmpty([B)Z
    .registers 2
    .param p0, "array"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 187
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lmoe/matsuri/nb4a/utils/JavaUtil;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNullOrBlank(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 167
    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static tryLockOrRecreateFile(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 116
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    .line 117
    .local v0, "tryLock":Ljava/nio/channels/FileLock;
    if-eqz v0, :cond_15

    .line 118
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V

    goto :goto_1c

    .line 120
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {p0, v1}, Lmoe/matsuri/nb4a/utils/JavaUtil;->createFile(Ljava/io/File;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 129
    .end local v0    # "tryLock":Ljava/nio/channels/FileLock;
    :goto_1c
    goto :goto_2f

    .line 122
    :catch_1d
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "deleted":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 128
    :cond_2c
    invoke-static {p0, v1}, Lmoe/matsuri/nb4a/utils/JavaUtil;->createFile(Ljava/io/File;Z)V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "deleted":Z
    :goto_2f
    return-void
.end method

.method public static unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p0, "encodedString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedString"
        }
    .end annotation

    .line 45
    sget-object v0, Lmoe/matsuri/nb4a/utils/JavaUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 46
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v1, "decodedString":Ljava/lang/StringBuffer;
    :goto_b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    if-ltz v3, :cond_2c

    .line 52
    sget-object v3, Lmoe/matsuri/nb4a/utils/JavaUtil;->DECODED_ESCAPES:[C

    sget-object v4, Lmoe/matsuri/nb4a/utils/JavaUtil;->ENCODED_ESCAPES:[C

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    aget-char v2, v3, v2

    .local v2, "ch":C
    goto :goto_4b

    .line 53
    .end local v2    # "ch":C
    :cond_2c
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    if-ltz v3, :cond_3f

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .restart local v2    # "ch":C
    goto :goto_4b

    .line 58
    .end local v2    # "ch":C
    :cond_3f
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .line 61
    .restart local v2    # "ch":C
    :goto_4b
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 62
    .end local v2    # "ch":C
    goto :goto_b

    .line 65
    :cond_57
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 66
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v2
.end method
