.class public Lcom/esotericsoftware/minlog/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/minlog/Log$Logger;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field public static INFO:Z = false

.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x5

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x6

.field public static final LEVEL_TRACE:I = 0x1

.field public static final LEVEL_WARN:I = 0x4

.field public static TRACE:Z

.field public static WARN:Z

.field private static level:I

.field private static logger:Lcom/esotericsoftware/minlog/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    const/4 v0, 0x3

    sput v0, Lcom/esotericsoftware/minlog/Log;->level:I

    .line 28
    sget v1, Lcom/esotericsoftware/minlog/Log;->level:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    .line 30
    sget v1, Lcom/esotericsoftware/minlog/Log;->level:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    .line 32
    sget v1, Lcom/esotericsoftware/minlog/Log;->level:I

    if-gt v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    .line 34
    sget v0, Lcom/esotericsoftware/minlog/Log;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    .line 36
    sget v0, Lcom/esotericsoftware/minlog/Log;->level:I

    if-gt v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    sput-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    .line 78
    new-instance v0, Lcom/esotericsoftware/minlog/Log$Logger;

    invoke-direct {v0}, Lcom/esotericsoftware/minlog/Log$Logger;-><init>()V

    sput-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static DEBUG()V
    .locals 1

    .line 66
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    .line 67
    return-void
.end method

.method public static ERROR()V
    .locals 1

    .line 54
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    .line 55
    return-void
.end method

.method public static INFO()V
    .locals 1

    .line 62
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    .line 63
    return-void
.end method

.method public static NONE()V
    .locals 1

    .line 50
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    .line 51
    return-void
.end method

.method public static TRACE()V
    .locals 1

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    .line 71
    return-void
.end method

.method public static WARN()V
    .locals 1

    .line 58
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    .line 59
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 137
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 133
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 129
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 93
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 85
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 81
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 121
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 125
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 117
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 113
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static set(I)V
    .locals 3
    .param p0, "level"    # I

    .line 41
    sput p0, Lcom/esotericsoftware/minlog/Log;->level:I

    .line 42
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    .line 43
    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    .line 44
    const/4 v0, 0x3

    if-gt p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    .line 45
    const/4 v0, 0x2

    if-gt p0, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    .line 46
    if-gt p0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    sput-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    .line 47
    return-void
.end method

.method public static setLogger(Lcom/esotericsoftware/minlog/Log$Logger;)V
    .locals 0
    .param p0, "logger"    # Lcom/esotericsoftware/minlog/Log$Logger;

    .line 75
    sput-object p0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    .line 76
    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 153
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 157
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 149
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 145
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 105
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 109
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 101
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 97
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->logger:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :cond_0
    return-void
.end method
