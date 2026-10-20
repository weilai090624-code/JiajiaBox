.class public Lcom/king/zxing/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final PRINTLN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ZXingLite"

.field public static final TAG_FORMAT:Ljava/lang/String; = "%s.%s(%s:%d)"

.field public static final VERBOSE:I = 0x2

.field public static final VERTICAL:Ljava/lang/String; = "|"

.field public static final WARN:I = 0x5

.field private static isShowLog:Z

.field private static priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    .line 35
    sput v0, Lcom/king/zxing/util/LogUtils;->priority:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 170
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 171
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 180
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 181
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 175
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 176
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 233
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 243
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 244
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 238
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 239
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 8
    .param p0, "caller"    # Ljava/lang/StackTraceElement;

    .line 103
    const-string v0, "%s.%s(%s:%d)"

    .line 104
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "callerClazzName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v3

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZXingLite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCallerStackLogTag()Ljava/lang/String;
    .locals 1

    .line 129
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriority()I
    .locals 1

    .line 90
    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    return v0
.end method

.method public static getStackTraceElement(I)Ljava/lang/StackTraceElement;
    .locals 1
    .param p0, "n"    # I

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 138
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 191
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 192
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 201
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 202
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 196
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 197
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method public static isShowLog()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    return v0
.end method

.method public static print(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 281
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 283
    :cond_0
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 276
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method public static printf(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 293
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 295
    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 310
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 311
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 305
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public static setPriority(I)V
    .locals 0
    .param p0, "priority"    # I

    .line 95
    sput p0, Lcom/king/zxing/util/LogUtils;->priority:I

    .line 96
    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0
    .param p0, "isShowLog"    # Z

    .line 80
    sput-boolean p0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    .line 81
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 148
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 149
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 159
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 160
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 154
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 155
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 212
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 213
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 222
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 223
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 217
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 218
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 254
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 255
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 264
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 265
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 259
    sget-boolean v0, Lcom/king/zxing/util/LogUtils;->isShowLog:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/king/zxing/util/LogUtils;->priority:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 260
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->getCallerStackLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    return-void
.end method
