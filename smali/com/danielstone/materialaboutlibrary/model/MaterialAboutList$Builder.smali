.class public Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;
.super Ljava/lang/Object;
.source "MaterialAboutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->cards:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;

    .line 33
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->cards:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addCard(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;
    .locals 1
    .param p1, "card"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 37
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .locals 2

    .line 42
    new-instance v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;-><init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$1;)V

    return-object v0
.end method
