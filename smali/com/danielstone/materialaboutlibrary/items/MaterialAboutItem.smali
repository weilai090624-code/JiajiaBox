.class public abstract Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
.super Ljava/lang/Object;
.source "MaterialAboutItem.java"


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "NO-UUID"

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->id:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->id:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public abstract clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDetailString()Ljava/lang/String;
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method
