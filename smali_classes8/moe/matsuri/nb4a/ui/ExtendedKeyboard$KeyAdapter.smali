.class final Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ExtendedKeyboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion;,
        Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Ljava/lang/String;",
        "Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0011\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "",
        "Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;",
        "keyListener",
        "Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;",
        "<init>",
        "(Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "Companion",
        "KeyViewHolder",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion;

.field private static final diffCallback:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion$diffCallback$1;


# instance fields
.field private final keyListener:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->Companion:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion;

    .line 51
    new-instance v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion$diffCallback$1;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion$diffCallback$1;-><init>()V

    sput-object v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->diffCallback:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion$diffCallback$1;

    return-void
.end method

.method public constructor <init>(Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;)V
    .locals 1
    .param p1, "keyListener"    # Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;

    const-string v0, "keyListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->diffCallback:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$Companion$diffCallback$1;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 47
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->keyListener:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 46
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;

    invoke-virtual {p0, v0, p2}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->onBindViewHolder(Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;->bind(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 46
    invoke-virtual {p0, p1, p2}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;->Companion:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder$Companion;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter;->keyListener:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;

    invoke-virtual {v0, p1, v1}, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder$Companion;->create(Landroid/view/ViewGroup;Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$OnKeyListener;)Lmoe/matsuri/nb4a/ui/ExtendedKeyboard$KeyAdapter$KeyViewHolder;

    move-result-object v0

    return-object v0
.end method
