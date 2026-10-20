.class public final Llibcore/StunResult;
.super Ljava/lang/Object;
.source "StunResult.java"

# interfaces
.implements Lgo/Seq$Proxy;


# instance fields
.field private final refnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    invoke-static {}, Llibcore/Libcore;->touch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Llibcore/StunResult;->__New()I

    move-result v0

    iput v0, p0, Llibcore/StunResult;->refnum:I

    iget v0, p0, Llibcore/StunResult;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibcore/StunResult;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method private static native __New()I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 33
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Llibcore/StunResult;

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    check-cast p1, Llibcore/StunResult;

    .line 37
    invoke-virtual {p0}, Llibcore/StunResult;->getText()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Llibcore/StunResult;->getText()Ljava/lang/String;

    move-result-object v2

    .line 39
    if-nez v1, :cond_1

    .line 40
    if-eqz v2, :cond_2

    .line 41
    return v0

    .line 43
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    return v0

    .line 46
    :cond_2
    invoke-virtual {p0}, Llibcore/StunResult;->getSuccess()Z

    move-result v1

    .line 47
    invoke-virtual {p1}, Llibcore/StunResult;->getSuccess()Z

    move-result p1

    .line 48
    if-eq v1, p1, :cond_3

    .line 49
    return v0

    .line 51
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 34
    :cond_4
    :goto_0
    return v0
.end method

.method public final native getSuccess()Z
.end method

.method public final native getText()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 4

    .line 55
    invoke-virtual {p0}, Llibcore/StunResult;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/StunResult;->getSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final incRefnum()I
    .locals 1

    .line 16
    iget v0, p0, Llibcore/StunResult;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    .line 17
    iget v0, p0, Llibcore/StunResult;->refnum:I

    return v0
.end method

.method public final native setSuccess(Z)V
.end method

.method public final native setText(Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v1, "StunResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "Text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Llibcore/StunResult;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "Success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Llibcore/StunResult;->getSuccess()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
