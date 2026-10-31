.class final Landroidx/lifecycle/ClassesInfoCache$MethodReference;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MethodReference"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .registers 5
    .param p1, "callType"    # I
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    .line 213
    iput-object p2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 214
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 240
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 241
    return v0

    .line 243
    :cond_4
    instance-of v1, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 244
    return v2

    .line 247
    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    .line 248
    .local v1, "that":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    iget v3, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    iget v4, v1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 253
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method invokeCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 8
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;
    .param p3, "target"    # Ljava/lang/Object;

    .line 220
    :try_start_0
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_3e

    goto :goto_27

    .line 228
    :pswitch_8
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 225
    :pswitch_15
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    goto :goto_27

    .line 222
    :pswitch_1f
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_26} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_26} :catch_29

    .line 223
    nop

    .line 235
    :goto_27
    nop

    .line 236
    return-void

    .line 233
    :catch_29
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to call observer method"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_15
        :pswitch_8
    .end packed-switch
.end method
