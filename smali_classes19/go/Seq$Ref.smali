.class public final Lgo/Seq$Ref;
.super Ljava/lang/Object;
.source "Seq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ref"
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;

.field private refcnt:I

.field public final refnum:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    if-ltz p1, :cond_0

    .line 138
    iput p1, p0, Lgo/Seq$Ref;->refnum:I

    .line 139
    const/4 p1, 0x0

    iput p1, p0, Lgo/Seq$Ref;->refcnt:I

    .line 140
    iput-object p2, p0, Lgo/Seq$Ref;->obj:Ljava/lang/Object;

    .line 141
    return-void

    .line 136
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ref instantiated with a Go refnum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$100(Lgo/Seq$Ref;)I
    .locals 0

    .line 127
    iget p0, p0, Lgo/Seq$Ref;->refcnt:I

    return p0
.end method

.method static synthetic access$110(Lgo/Seq$Ref;)I
    .locals 2

    .line 127
    iget v0, p0, Lgo/Seq$Ref;->refcnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lgo/Seq$Ref;->refcnt:I

    return v0
.end method


# virtual methods
.method inc()V
    .locals 3

    .line 145
    iget v0, p0, Lgo/Seq$Ref;->refcnt:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 148
    iget v0, p0, Lgo/Seq$Ref;->refcnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgo/Seq$Ref;->refcnt:I

    .line 149
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refnum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgo/Seq$Ref;->refnum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
