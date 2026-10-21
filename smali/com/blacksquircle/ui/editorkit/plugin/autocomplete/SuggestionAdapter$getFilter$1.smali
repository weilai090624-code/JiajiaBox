.class public final Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;
.super Landroid/widget/Filter;
.source "SuggestionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u0006H\u0014R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "com/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1",
        "Landroid/widget/Filter;",
        "suggestions",
        "",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
        "performFiltering",
        "Landroid/widget/Filter$FilterResults;",
        "constraint",
        "",
        "publishResults",
        "",
        "results",
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
.field private final suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;


# direct methods
.method constructor <init>(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V
    .registers 3
    .param p1, "$receiver"    # Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    .line 43
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 11
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 48
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    # getter for: Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->suggestionProvider:Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    invoke-static {v0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->access$getSuggestionProvider$p(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    .local v0, "provider":Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-let-SuggestionAdapter$getFilter$1$performFiltering$1":I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "query":Ljava/lang/String;
    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;->getAll()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    .line 52
    .local v5, "suggestion":Lcom/blacksquircle/ui/language/base/model/Suggestion;
    invoke-virtual {v5}, Lcom/blacksquircle/ui/language/base/model/Suggestion;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "word":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 54
    invoke-static {v6, v3, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 56
    invoke-static {v1, v3}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->access$setQueryText$p(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;Ljava/lang/String;)V

    .line 57
    iget-object v7, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 60
    .end local v5    # "suggestion":Lcom/blacksquircle/ui/language/base/model/Suggestion;
    .end local v6    # "word":Ljava/lang/String;
    :cond_42
    nop

    .line 49
    .end local v0    # "provider":Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .end local v2    # "$i$a$-let-SuggestionAdapter$getFilter$1$performFiltering$1":I
    .end local v3    # "query":Ljava/lang/String;
    nop

    .line 61
    :cond_44
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    move-object v1, v0

    .local v1, "$this$performFiltering_u24lambda_u241":Landroid/widget/Filter$FilterResults;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$-apply-SuggestionAdapter$getFilter$1$performFiltering$2":I
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 63
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 64
    nop

    .line 61
    .end local v1    # "$this$performFiltering_u24lambda_u241":Landroid/widget/Filter$FilterResults;
    .end local v2    # "$i$a$-apply-SuggestionAdapter$getFilter$1$performFiltering$2":I
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    const-string v0, "results"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->clear()V

    .line 69
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->suggestions:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->addAll(Ljava/util/Collection;)V

    .line 70
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter$getFilter$1;->this$0:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
