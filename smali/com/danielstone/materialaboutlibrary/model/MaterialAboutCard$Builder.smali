.class public Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
.super Ljava/lang/Object;
.source "MaterialAboutCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cardColor:I

.field private customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->title:Ljava/lang/CharSequence;

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleRes:I

    .line 80
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleColor:I

    .line 83
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->cardColor:I

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->outline:Z

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->items:Ljava/util/ArrayList;

    .line 89
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->cardColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    .line 75
    iget-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->outline:Z

    return v0
.end method


# virtual methods
.method public addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 1
    .param p1, "item"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 124
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    .locals 2

    .line 134
    new-instance v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;-><init>(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$1;)V

    return-object v0
.end method

.method public cardColor(I)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 0
    .param p1, "cardColor"    # I

    .line 109
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->cardColor:I

    .line 110
    return-object p0
.end method

.method public customAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 0
    .param p1, "customAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 129
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->customAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 130
    return-object p0
.end method

.method public outline(Z)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 0
    .param p1, "outline"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->outline:Z

    .line 120
    return-object p0
.end method

.method public title(I)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 1
    .param p1, "titleRes"    # I

    .line 98
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleRes:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->title:Ljava/lang/CharSequence;

    .line 100
    return-object p0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 92
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->title:Ljava/lang/CharSequence;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleRes:I

    .line 94
    return-object p0
.end method

.method public titleColor(I)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 104
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->titleColor:I

    .line 105
    return-object p0
.end method
