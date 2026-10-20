.class public Lj$/sun/security/action/GetLongAction;
.super Ljava/lang/Object;
.source "GetLongAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultSet:Z

.field private defaultVal:J

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theProp"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/security/action/GetLongAction;->defaultSet:Z

    .line 78
    iput-object p1, p0, Lj$/sun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "theProp"    # Ljava/lang/String;
    .param p2, "defaultVal"    # J

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/security/action/GetLongAction;->defaultSet:Z

    .line 89
    iput-object p1, p0, Lj$/sun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    .line 90
    iput-wide p2, p0, Lj$/sun/security/action/GetLongAction;->defaultVal:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/sun/security/action/GetLongAction;->defaultSet:Z

    .line 92
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .locals 3

    .line 107
    iget-object v0, p0, Lj$/sun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 108
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lj$/sun/security/action/GetLongAction;->defaultSet:Z

    if-eqz v1, :cond_0

    .line 109
    iget-wide v1, p0, Lj$/sun/security/action/GetLongAction;->defaultVal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lj$/sun/security/action/GetLongAction;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
