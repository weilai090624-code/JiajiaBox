.class public abstract Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SuggestionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\u000bR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
        "context",
        "Landroid/content/Context;",
        "resourceId",
        "",
        "(Landroid/content/Context;I)V",
        "queryText",
        "",
        "suggestionProvider",
        "Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;",
        "createViewHolder",
        "Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "getFilter",
        "Landroid/widget/Filter;",
        "getView",
        "Landroid/view/View;",
        "position",
        "convertView",
        "setSuggestionProvider",
        "",
        "SuggestionViewHolder",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private queryText:Ljava/lang/String;

.field private suggestionProvider:Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public static final synthetic access$getSuggestionProvider$p(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1
    .param p0, "$this"    # Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    .line 27
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->suggestionProvider:Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    return-object v0
.end method

.method public static final synthetic access$setQueryText$p(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->queryText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createViewHolder(Landroid/view/ViewGroup;)Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 43
    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;

    invoke-direct {v0, p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;-><init>(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V

    check-cast v0, Landroid/widget/Filter;

    .line 72
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p3}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;

    move-result-object v0

    .line 39
    .local v0, "viewHolder":Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;
    invoke-virtual {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->queryText:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;->bind(Lcom/blacksquircle/ui/language/base/model/Suggestion;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$SuggestionViewHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public final setSuggestionProvider(Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;)V
    .locals 1
    .param p1, "suggestionProvider"    # Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    const-string/jumbo v0, "suggestionProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->suggestionProvider:Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    .line 76
    return-void
.end method
