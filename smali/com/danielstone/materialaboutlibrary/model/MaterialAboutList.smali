.class public Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
.super Ljava/lang/Object;
.source "MaterialAboutList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;
    }
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
.method private constructor <init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    .line 12
    # getter for: Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->cards:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->access$000(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;
    .param p2, "x1"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$1;

    .line 7
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;-><init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)V
    .registers 3
    .param p1, "materialAboutCards"    # [Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    .line 16
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 17
    return-void
.end method


# virtual methods
.method public addCard(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .registers 3
    .param p1, "card"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 20
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-object p0
.end method

.method public clearCards(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .registers 3
    .param p1, "card"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 25
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    return-object p0
.end method

.method public getCards()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->cards:Ljava/util/ArrayList;

    return-object v0
.end method
