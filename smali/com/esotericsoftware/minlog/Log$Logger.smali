.class public Lcom/esotericsoftware/minlog/Log$Logger;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/minlog/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# instance fields
.field private final firstLogTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/minlog/Log$Logger;->firstLogTime:J

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 15
    .param p1, "level"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "ex"    # Ljava/lang/Throwable;

    .line 169
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/esotericsoftware/minlog/Log$Logger;->firstLogTime:J

    sub-long/2addr v5, v7

    .line 172
    .local v5, "time":J
    const-wide/32 v7, 0xea60

    div-long v7, v5, v7

    .line 173
    .local v7, "minutes":J
    const-wide/16 v9, 0x3e8

    div-long v9, v5, v9

    const-wide/16 v11, 0x3c

    rem-long/2addr v9, v11

    .line 174
    .local v9, "seconds":J
    const/16 v11, 0x30

    const-wide/16 v12, 0x9

    cmp-long v14, v7, v12

    if-gtz v14, :cond_0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    const/16 v14, 0x3a

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    cmp-long v14, v9, v12

    if-gtz v14, :cond_1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    const-string v11, " ERROR: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_0

    .line 185
    :pswitch_1
    const-string v11, "  WARN: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_0

    .line 188
    :pswitch_2
    const-string v11, "  INFO: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    goto :goto_0

    .line 191
    :pswitch_3
    const-string v11, " DEBUG: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_0

    .line 194
    :pswitch_4
    const-string v11, " TRACE: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_0
    if-eqz v1, :cond_2

    .line 199
    const/16 v11, 0x5b

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v11, "] "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_2
    move-object/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    if-eqz v2, :cond_3

    .line 207
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12, v4}, Ljava/io/StringWriter;-><init>(I)V

    move-object v4, v12

    .line 208
    .local v4, "writer":Ljava/io/StringWriter;
    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 209
    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .end local v4    # "writer":Ljava/io/StringWriter;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/minlog/Log$Logger;->print(Ljava/lang/String;)V

    .line 214
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected print(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    return-void
.end method
