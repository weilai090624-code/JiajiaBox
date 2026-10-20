.class public Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
.super Ljava/lang/Object;
.source "MaterialAboutCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    }
.end annotation


# instance fields
.field private cardColor:I

.field private customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private id:Ljava/lang/String;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
            ">;"
        }
    .end annotation
.end field

.field private outline:Z

.field private title:Ljava/lang/CharSequence;

.field private titleColor:I

.field private titleRes:I


# direct methods
.method public varargs constructor <init>(I[Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)V
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "materialAboutItems"    # [Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "NO-UUID"

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 22
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    .line 23
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    .line 47
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 48
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "NO-UUID"

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 22
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    .line 23
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$000(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 33
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$100(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 34
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$200(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    .line 35
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$300(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    .line 36
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$400(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    .line 37
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$500(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 38
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->access$600(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .param p2, "x1"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;-><init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)V
    .locals 4
    .param p1, "card"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "NO-UUID"

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 22
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    .line 23
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getTitleRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 163
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getTitleColor()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    .line 164
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getCardColor()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->isOutline()Z

    move-result v0

    iput-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    .line 167
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getCustomAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 168
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 169
    .local v1, "item":Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v1    # "item":Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "materialAboutItems"    # [Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "NO-UUID"

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    .line 22
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    .line 23
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    .line 43
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    .locals 1

    .line 174
    new-instance v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    invoke-direct {v0, p0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;-><init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->clone()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    move-result-object v0

    return-object v0
.end method

.method public getCardColor()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    return v0
.end method

.method public getCustomAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    return v0
.end method

.method public isOutline()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialAboutCard{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->titleColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->outline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->cardColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
