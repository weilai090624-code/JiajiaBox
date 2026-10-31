.class public final Landroidx/work/impl/model/WorkTypeConverters;
.super Ljava/lang/Object;
.source "WorkTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkTypeConverters$StateIds;,
        Landroidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$NetworkTypeIds;,
        Landroidx/work/impl/model/WorkTypeConverters$OutOfPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u001c\u001d\u001e\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000fH\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0011H\u0007J\u0016\u0010\u0018\u001a\u00020\u000b2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0013H\u0007\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/work/impl/model/WorkTypeConverters;",
        "",
        "()V",
        "backoffPolicyToInt",
        "",
        "backoffPolicy",
        "Landroidx/work/BackoffPolicy;",
        "byteArrayToSetOfTriggers",
        "",
        "Landroidx/work/Constraints$ContentUriTrigger;",
        "bytes",
        "",
        "intToBackoffPolicy",
        "value",
        "intToNetworkType",
        "Landroidx/work/NetworkType;",
        "intToOutOfQuotaPolicy",
        "Landroidx/work/OutOfQuotaPolicy;",
        "intToState",
        "Landroidx/work/WorkInfo$State;",
        "networkTypeToInt",
        "networkType",
        "outOfQuotaPolicyToInt",
        "policy",
        "setOfTriggersToByteArray",
        "triggers",
        "stateToInt",
        "state",
        "BackoffPolicyIds",
        "NetworkTypeIds",
        "OutOfPolicyIds",
        "StateIds",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/work/impl/model/WorkTypeConverters;

    invoke-direct {v0}, Landroidx/work/impl/model/WorkTypeConverters;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I
    .registers 3
    .param p0, "backoffPolicy"    # Landroidx/work/BackoffPolicy;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "backoffPolicy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 129
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_16
    const/4 v0, 0x1

    goto :goto_19

    .line 128
    :pswitch_18
    const/4 v0, 0x0

    .line 127
    :goto_19
    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
    .end packed-switch
.end method

.method public static final byteArrayToSetOfTriggers([B)Ljava/util/Set;
    .registers 18
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "bytes"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Set;

    .line 262
    .local v2, "triggers":Ljava/util/Set;
    array-length v0, v1

    const/4 v3, 0x0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_19

    .line 264
    return-object v2

    .line 266
    :cond_19
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 267
    .local v4, "inputStream":Ljava/io/ByteArrayInputStream;
    move-object v5, v4

    check-cast v5, Ljava/io/Closeable;

    :try_start_22
    move-object v0, v5

    check-cast v0, Ljava/io/ByteArrayInputStream;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_7f

    move-object v6, v0

    .local v6, "it":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .line 268
    .local v7, "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1":I
    nop

    .line 269
    :try_start_28
    new-instance v0, Ljava/io/ObjectInputStream;

    move-object v9, v4

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v0, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v0

    check-cast v9, Ljava/io/Closeable;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_73
    .catchall {:try_start_28 .. :try_end_33} :catchall_7f

    :try_start_33
    move-object v0, v9

    check-cast v0, Ljava/io/ObjectInputStream;

    .local v0, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v10, 0x0

    .line 270
    .local v10, "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1$1":I
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v11

    :goto_3b
    if-ge v3, v11, :cond_61

    move v12, v3

    .local v12, "it":I
    const/4 v13, 0x0

    .line 271
    .local v13, "$i$a$-repeat-WorkTypeConverters$byteArrayToSetOfTriggers$1$1$1":I
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 272
    .local v14, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v15

    .line 273
    .local v15, "triggersForDescendants":Z
    new-instance v8, Landroidx/work/Constraints$ContentUriTrigger;

    move-object/from16 v16, v0

    .end local v0    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v16, "objectInputStream":Ljava/io/ObjectInputStream;
    const-string/jumbo v0, "uri"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v14, v15}, Landroidx/work/Constraints$ContentUriTrigger;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    nop

    .line 270
    .end local v12    # "it":I
    .end local v13    # "$i$a$-repeat-WorkTypeConverters$byteArrayToSetOfTriggers$1$1$1":I
    .end local v14    # "uri":Landroid/net/Uri;
    .end local v15    # "triggersForDescendants":Z
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    goto :goto_3b

    .line 275
    .end local v16    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v0    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_61
    move-object/from16 v16, v0

    .end local v0    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v10    # "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_65
    .catchall {:try_start_33 .. :try_end_65} :catchall_6a

    .line 269
    const/4 v3, 0x0

    :try_start_66
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_73
    .catchall {:try_start_66 .. :try_end_69} :catchall_7f

    goto :goto_77

    :catchall_6a
    move-exception v0

    move-object v3, v0

    .end local v2    # "triggers":Ljava/util/Set;
    .end local v4    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "it":Ljava/io/ByteArrayInputStream;
    .end local v7    # "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1":I
    .end local p0    # "bytes":[B
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .restart local v2    # "triggers":Ljava/util/Set;
    .restart local v4    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "it":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1":I
    .restart local p0    # "bytes":[B
    :catchall_6d
    move-exception v0

    move-object v8, v0

    :try_start_6f
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "triggers":Ljava/util/Set;
    .end local v4    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "it":Ljava/io/ByteArrayInputStream;
    .end local v7    # "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1":I
    .end local p0    # "bytes":[B
    throw v8
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_7f

    .line 276
    .restart local v2    # "triggers":Ljava/util/Set;
    .restart local v4    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "it":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1":I
    .restart local p0    # "bytes":[B
    :catch_73
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    :try_start_74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :goto_77
    nop

    .end local v6    # "it":Ljava/io/ByteArrayInputStream;
    .end local v7    # "$i$a$-use-WorkTypeConverters$byteArrayToSetOfTriggers$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_7f

    .line 267
    const/4 v3, 0x0

    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 280
    return-object v2

    .line 267
    :catchall_7f
    move-exception v0

    move-object v3, v0

    .end local v2    # "triggers":Ljava/util/Set;
    .end local v4    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local p0    # "bytes":[B
    :try_start_81
    throw v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .restart local v2    # "triggers":Ljava/util/Set;
    .restart local v4    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bytes":[B
    :catchall_82
    move-exception v0

    move-object v6, v0

    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static final intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;
    .registers 4
    .param p0, "value"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 142
    packed-switch p0, :pswitch_data_28

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to BackoffPolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_22
    sget-object v0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    goto :goto_27

    .line 143
    :pswitch_25
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 142
    :goto_27
    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static final intToNetworkType(I)Landroidx/work/NetworkType;
    .registers 4
    .param p0, "value"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 182
    packed-switch p0, :pswitch_data_3e

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    .line 190
    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    return-object v0

    .line 187
    :pswitch_f
    sget-object v0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    goto :goto_1d

    .line 186
    :pswitch_12
    sget-object v0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    goto :goto_1d

    .line 185
    :pswitch_15
    sget-object v0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_1d

    .line 184
    :pswitch_18
    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    goto :goto_1d

    .line 183
    :pswitch_1b
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    .line 182
    :goto_1d
    return-object v0

    .line 191
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to NetworkType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public static final intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;
    .registers 4
    .param p0, "value"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 221
    packed-switch p0, :pswitch_data_28

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to OutOfQuotaPolicy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_22
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_27

    .line 223
    :pswitch_25
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 221
    :goto_27
    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static final intToState(I)Landroidx/work/WorkInfo$State;
    .registers 4
    .param p0, "value"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 107
    packed-switch p0, :pswitch_data_34

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_22
    sget-object v0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    goto :goto_33

    .line 112
    :pswitch_25
    sget-object v0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    goto :goto_33

    .line 111
    :pswitch_28
    sget-object v0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    goto :goto_33

    .line 110
    :pswitch_2b
    sget-object v0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    goto :goto_33

    .line 109
    :pswitch_2e
    sget-object v0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    goto :goto_33

    .line 108
    :pswitch_31
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 107
    :goto_33
    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static final networkTypeToInt(Landroidx/work/NetworkType;)I
    .registers 4
    .param p0, "networkType"    # Landroidx/work/NetworkType;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "networkType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Landroidx/work/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_26

    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p0, v0, :cond_26

    .line 166
    const/4 v0, 0x5

    goto :goto_25

    .line 163
    :pswitch_1c
    const/4 v0, 0x4

    goto :goto_25

    .line 162
    :pswitch_1e
    const/4 v0, 0x3

    goto :goto_25

    .line 161
    :pswitch_20
    const/4 v0, 0x2

    goto :goto_25

    .line 160
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_25

    .line 159
    :pswitch_24
    const/4 v0, 0x0

    .line 158
    :goto_25
    return v0

    .line 168
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static final outOfQuotaPolicyToInt(Landroidx/work/OutOfQuotaPolicy;)I
    .registers 3
    .param p0, "policy"    # Landroidx/work/OutOfQuotaPolicy;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "policy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Landroidx/work/OutOfQuotaPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 208
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_16
    const/4 v0, 0x1

    goto :goto_19

    .line 207
    :pswitch_18
    const/4 v0, 0x0

    .line 205
    :goto_19
    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
    .end packed-switch
.end method

.method public static final setOfTriggersToByteArray(Ljava/util/Set;)[B
    .registers 11
    .param p0, "triggers"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;)[B"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "triggers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 238
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 240
    :cond_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_18
    move-object v2, v1

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .local v2, "it":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 242
    .local v3, "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1":I
    new-instance v4, Ljava/io/ObjectOutputStream;

    move-object v5, v0

    check-cast v5, Ljava/io/OutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_72

    :try_start_26
    move-object v5, v4

    check-cast v5, Ljava/io/ObjectOutputStream;

    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    const/4 v6, 0x0

    .line 243
    .local v6, "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1$1":I
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 244
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/Constraints$ContentUriTrigger;

    .line 245
    .local v8, "trigger":Landroidx/work/Constraints$ContentUriTrigger;
    invoke-virtual {v8}, Landroidx/work/Constraints$ContentUriTrigger;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v8}, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .end local v8    # "trigger":Landroidx/work/Constraints$ContentUriTrigger;
    goto :goto_35

    .line 248
    :cond_54
    nop

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v6    # "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_57
    .catchall {:try_start_26 .. :try_end_57} :catchall_6b

    .line 242
    const/4 v5, 0x0

    :try_start_58
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 249
    nop

    .end local v2    # "it":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_72

    .line 241
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "outputStream.toByteArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 242
    .restart local v2    # "it":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1":I
    :catchall_6b
    move-exception v5

    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "it":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1":I
    .end local p0    # "triggers":Ljava/util/Set;
    :try_start_6c
    throw v5
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .restart local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "it":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1":I
    .restart local p0    # "triggers":Ljava/util/Set;
    :catchall_6d
    move-exception v6

    :try_start_6e
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "triggers":Ljava/util/Set;
    throw v6
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_72

    .line 241
    .end local v2    # "it":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "$i$a$-use-WorkTypeConverters$setOfTriggersToByteArray$1":I
    .restart local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "triggers":Ljava/util/Set;
    :catchall_72
    move-exception v2

    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "triggers":Ljava/util/Set;
    :try_start_73
    throw v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    .restart local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "triggers":Ljava/util/Set;
    :catchall_74
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final stateToInt(Landroidx/work/WorkInfo$State;)I
    .registers 3
    .param p0, "state"    # Landroidx/work/WorkInfo$State;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 94
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_17
    const/4 v0, 0x5

    goto :goto_22

    .line 93
    :pswitch_19
    const/4 v0, 0x4

    goto :goto_22

    .line 92
    :pswitch_1b
    const/4 v0, 0x3

    goto :goto_22

    .line 91
    :pswitch_1d
    const/4 v0, 0x2

    goto :goto_22

    .line 90
    :pswitch_1f
    const/4 v0, 0x1

    goto :goto_22

    .line 89
    :pswitch_21
    const/4 v0, 0x0

    .line 88
    :goto_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
    .end packed-switch
.end method
