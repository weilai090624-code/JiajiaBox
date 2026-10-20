.class public final Lio/nekohasekai/sagernet/bg/Executable;
.super Ljava/lang/Object;
.source "Executable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExecutable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executable.kt\nio/nekohasekai/sagernet/bg/Executable\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,39:1\n28#2:40\n*S KotlinDebug\n*F\n+ 1 Executable.kt\nio/nekohasekai/sagernet/bg/Executable\n*L\n18#1:40\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/Executable;",
        "",
        "<init>",
        "()V",
        "EXECUTABLES",
        "",
        "",
        "killAll",
        "",
        "alsoKillBg",
        "",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EXECUTABLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lio/nekohasekai/sagernet/bg/Executable;


# direct methods
.method public static synthetic $r8$lambda$9f2VpcJxuEqttqOCJHlnpaSLmos(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/bg/Executable;->killAll$lambda$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/nekohasekai/sagernet/bg/Executable;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/bg/Executable;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/bg/Executable;->INSTANCE:Lio/nekohasekai/sagernet/bg/Executable;

    .line 12
    nop

    .line 13
    const-string v0, "libtuic.so"

    const-string v1, "libhysteria.so"

    const-string v2, "libtrojan.so"

    const-string v3, "libtrojan-go.so"

    const-string v4, "libnaive.so"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/bg/Executable;->EXECUTABLES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic killAll$default(Lio/nekohasekai/sagernet/bg/Executable;ZILjava/lang/Object;)V
    .locals 0

    .line 16
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/bg/Executable;->killAll(Z)V

    return-void
.end method

.method private static final killAll$lambda$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    .local p0, "$this$isDigitsOnly$iv":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 40
    .local v0, "$i$f$isDigitsOnly":I
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 18
    .end local v0    # "$i$f$isDigitsOnly":I
    .end local p0    # "$this$isDigitsOnly$iv":Ljava/lang/CharSequence;
    return p0
.end method


# virtual methods
.method public final killAll(Z)V
    .locals 17
    .param p1, "alsoKillBg"    # Z

    .line 18
    const-string v1, " ("

    const-string v2, "SIGKILL "

    new-instance v0, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/nekohasekai/sagernet/bg/Executable$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/bg/Executable$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v3, v6

    .line 19
    .local v7, "process":Ljava/io/File;
    nop

    .line 20
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 21
    new-instance v8, Ljava/io/File;

    const-string v9, "cmdline"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v9, Ljava/io/Reader;

    instance-of v0, v9, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    check-cast v9, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v0, v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v9, v0

    :goto_1
    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v9

    check-cast v0, Ljava/io/BufferedReader;

    .local v0, "it":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 22
    .local v8, "$i$a$-use-Executable$killAll$exe$1":I
    move-object v10, v0

    check-cast v10, Ljava/io/Reader;

    invoke-static {v10}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .end local v0    # "it":Ljava/io/BufferedReader;
    .end local v8    # "$i$a$-use-Executable$killAll$exe$1":I
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 25
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    .line 26
    const/4 v8, 0x1

    new-array v12, v8, [C

    aput-char v5, v12, v5

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 19
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 27
    .local v8, "exe":Ljava/io/File;
    sget-object v9, Lio/nekohasekai/sagernet/bg/Executable;->EXECUTABLES:Ljava/util/Set;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "getName(...)"

    if-nez v9, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, ":bg"

    const/4 v12, 0x2

    invoke-static {v9, v11, v5, v12, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v9, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v9}, Landroid/system/Os;->kill(II)V

    .line 29
    sget-object v0, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") succeed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/system/ErrnoException;
    iget v9, v0, Landroid/system/ErrnoException;->errno:I

    sget v10, Landroid/system/OsConstants;->ESRCH:I

    if-eq v9, v10, :cond_3

    .line 32
    sget-object v9, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/String;)V

    .line 33
    sget-object v9, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v10, v0

    check-cast v10, Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 21
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v8    # "exe":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v8, v0

    .end local v7    # "process":Ljava/io/File;
    .end local p1    # "alsoKillBg":Z
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v7    # "process":Ljava/io/File;
    .restart local p1    # "alsoKillBg":Z
    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_5
    invoke-static {v9, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v7    # "process":Ljava/io/File;
    .end local p1    # "alsoKillBg":Z
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 24
    .restart local v7    # "process":Ljava/io/File;
    .restart local p1    # "alsoKillBg":Z
    :catch_1
    move-exception v0

    .line 25
    .local v0, "<unused var>":Ljava/io/IOException;
    nop

    .line 18
    .end local v0    # "<unused var>":Ljava/io/IOException;
    .end local v7    # "process":Ljava/io/File;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 37
    :cond_4
    return-void
.end method
