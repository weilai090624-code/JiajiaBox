.class public final Landroidx/preference/PreferenceGroupKt$iterator$1;
.super Ljava/lang/Object;
.source "PreferenceGroup.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceGroupKt;->iterator(Landroidx/preference/PreferenceGroup;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/preference/Preference;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt$iterator$1\n+ 2 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n*L\n1#1,98:1\n55#2:99\n*S KotlinDebug\n*F\n+ 1 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt$iterator$1\n*L\n86#1:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\t\u0010\u0007\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "androidx/preference/PreferenceGroupKt$iterator$1",
        "",
        "Landroidx/preference/Preference;",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "remove",
        "",
        "preference-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_iterator:Landroidx/preference/PreferenceGroup;

.field private index:I


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->$this_iterator:Landroidx/preference/PreferenceGroup;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 86
    iget v0, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->index:I

    iget-object v1, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->$this_iterator:Landroidx/preference/PreferenceGroup;

    .local v1, "$this$size$iv":Landroidx/preference/PreferenceGroup;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$f$getSize":I
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .end local v1    # "$this$size$iv":Landroidx/preference/PreferenceGroup;
    .end local v2    # "$i$f$getSize":I
    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0
.end method

.method public next()Landroidx/preference/Preference;
    .locals 3

    .line 87
    iget-object v0, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->$this_iterator:Landroidx/preference/PreferenceGroup;

    iget v1, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->index:I

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "getPreference(index++)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupKt$iterator$1;->next()Landroidx/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 89
    iget-object v0, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->$this_iterator:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->$this_iterator:Landroidx/preference/PreferenceGroup;

    iget v2, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->index:I

    iget v2, p0, Landroidx/preference/PreferenceGroupKt$iterator$1;->index:I

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 90
    return-void
.end method
