.class final Lgo/Universe$proxyerror;
.super Ljava/lang/Exception;
.source "Universe.java"

# interfaces
.implements Lgo/Seq$Proxy;
.implements Lgo/error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo/Universe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "proxyerror"
.end annotation


# instance fields
.field private final refnum:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lgo/Universe$proxyerror;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method


# virtual methods
.method public native error()Ljava/lang/String;
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lgo/Universe$proxyerror;->error()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final incRefnum()I
    .registers 2

    .line 27
    iget v0, p0, Lgo/Universe$proxyerror;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    .line 28
    iget v0, p0, Lgo/Universe$proxyerror;->refnum:I

    return v0
.end method
