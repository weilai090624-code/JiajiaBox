.class final Lgo/Seq$RefMap;
.super Ljava/lang/Object;
.source "Seq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RefMap"
.end annotation


# instance fields
.field private keys:[I

.field private live:I

.field private next:I

.field private objs:[Lgo/Seq$Ref;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lgo/Seq$RefMap;->next:I

    .line 302
    iput v0, p0, Lgo/Seq$RefMap;->live:I

    .line 303
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    .line 304
    new-array v0, v0, [Lgo/Seq$Ref;

    iput-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 306
    return-void
.end method

.method private grow()V
    .registers 7

    .line 361
    iget v0, p0, Lgo/Seq$RefMap;->live:I

    invoke-static {v0}, Lgo/Seq$RefMap;->roundPow2(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 362
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    array-length v1, v1

    if-le v0, v1, :cond_1c

    .line 363
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 364
    iget-object v1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lgo/Seq$Ref;

    goto :goto_20

    .line 366
    :cond_1c
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    .line 367
    iget-object v1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 370
    :goto_20
    nop

    .line 371
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    iget-object v5, p0, Lgo/Seq$RefMap;->keys:[I

    array-length v5, v5

    if-ge v3, v5, :cond_40

    .line 372
    iget-object v5, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aget-object v5, v5, v3

    if-eqz v5, :cond_3d

    .line 373
    iget-object v5, p0, Lgo/Seq$RefMap;->keys:[I

    aget v5, v5, v3

    aput v5, v0, v4

    .line 374
    iget-object v5, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aget-object v5, v5, v3

    aput-object v5, v1, v4

    .line 375
    add-int/lit8 v4, v4, 0x1

    .line 371
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 378
    :cond_40
    move v3, v4

    :goto_41
    array-length v5, v0

    if-ge v3, v5, :cond_4c

    .line 379
    aput v2, v0, v3

    .line 380
    const/4 v5, 0x0

    aput-object v5, v1, v3

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 383
    :cond_4c
    iput-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    .line 384
    iput-object v1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    .line 385
    iput v4, p0, Lgo/Seq$RefMap;->next:I

    .line 387
    iget v0, p0, Lgo/Seq$RefMap;->live:I

    iget v1, p0, Lgo/Seq$RefMap;->next:I

    if-ne v0, v1, :cond_59

    .line 390
    return-void

    .line 388
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad state: live="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgo/Seq$RefMap;->live:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgo/Seq$RefMap;->next:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static roundPow2(I)I
    .registers 2

    .line 393
    const/4 v0, 0x1

    .line 394
    :goto_1
    if-ge v0, p0, :cond_6

    .line 395
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 397
    :cond_6
    return v0
.end method


# virtual methods
.method get(I)Lgo/Seq$Ref;
    .registers 5

    .line 309
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    const/4 v1, 0x0

    iget v2, p0, Lgo/Seq$RefMap;->next:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    .line 310
    if-ltz p1, :cond_10

    .line 311
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aget-object p1, v0, p1

    return-object p1

    .line 313
    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method put(ILgo/Seq$Ref;)V
    .registers 8

    .line 327
    const-string v0, ")"

    if-eqz p2, :cond_85

    .line 330
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    iget v2, p0, Lgo/Seq$RefMap;->next:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    .line 331
    if-ltz v1, :cond_43

    .line 332
    iget-object v2, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aget-object v2, v2, v1

    if-nez v2, :cond_1f

    .line 333
    iget-object v2, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aput-object p2, v2, v1

    .line 334
    iget v2, p0, Lgo/Seq$RefMap;->live:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgo/Seq$RefMap;->live:I

    .line 336
    :cond_1f
    iget-object v2, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aget-object v1, v2, v1

    if-ne v1, p2, :cond_26

    .line 339
    return-void

    .line 337
    :cond_26
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacing an existing ref (with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 341
    :cond_43
    iget v0, p0, Lgo/Seq$RefMap;->next:I

    iget-object v2, p0, Lgo/Seq$RefMap;->keys:[I

    array-length v2, v2

    if-lt v0, v2, :cond_55

    .line 342
    invoke-direct {p0}, Lgo/Seq$RefMap;->grow()V

    .line 343
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    iget v1, p0, Lgo/Seq$RefMap;->next:I

    invoke-static {v0, v3, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    .line 345
    :cond_55
    not-int v0, v1

    .line 346
    iget v1, p0, Lgo/Seq$RefMap;->next:I

    if-ge v0, v1, :cond_70

    .line 348
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    iget-object v2, p0, Lgo/Seq$RefMap;->keys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lgo/Seq$RefMap;->next:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    iget-object v2, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    iget v4, p0, Lgo/Seq$RefMap;->next:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    :cond_70
    iget-object v1, p0, Lgo/Seq$RefMap;->keys:[I

    aput p1, v1, v0

    .line 352
    iget-object p1, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aput-object p2, p1, v0

    .line 353
    iget p1, p0, Lgo/Seq$RefMap;->live:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgo/Seq$RefMap;->live:I

    .line 354
    iget p1, p0, Lgo/Seq$RefMap;->next:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgo/Seq$RefMap;->next:I

    .line 355
    return-void

    .line 328
    :cond_85
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put a null ref (with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method remove(I)V
    .registers 5

    .line 317
    iget-object v0, p0, Lgo/Seq$RefMap;->keys:[I

    const/4 v1, 0x0

    iget v2, p0, Lgo/Seq$RefMap;->next:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    .line 318
    if-ltz p1, :cond_1c

    .line 319
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1c

    .line 320
    iget-object v0, p0, Lgo/Seq$RefMap;->objs:[Lgo/Seq$Ref;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 321
    iget p1, p0, Lgo/Seq$RefMap;->live:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgo/Seq$RefMap;->live:I

    .line 324
    :cond_1c
    return-void
.end method
