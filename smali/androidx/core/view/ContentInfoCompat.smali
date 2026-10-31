.class public final Landroidx/core/view/ContentInfoCompat;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ContentInfoCompat$Compat;,
        Landroidx/core/view/ContentInfoCompat$Compat31Impl;,
        Landroidx/core/view/ContentInfoCompat$Builder;,
        Landroidx/core/view/ContentInfoCompat$Api31Impl;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;,
        Landroidx/core/view/ContentInfoCompat$BuilderCompat;,
        Landroidx/core/view/ContentInfoCompat$CompatImpl;,
        Landroidx/core/view/ContentInfoCompat$Flags;,
        Landroidx/core/view/ContentInfoCompat$Source;
    }
.end annotation


# static fields
.field public static final FLAG_CONVERT_TO_PLAIN_TEXT:I = 0x1

.field public static final SOURCE_APP:I = 0x0

.field public static final SOURCE_AUTOFILL:I = 0x4

.field public static final SOURCE_CLIPBOARD:I = 0x1

.field public static final SOURCE_DRAG_AND_DROP:I = 0x3

.field public static final SOURCE_INPUT_METHOD:I = 0x2

.field public static final SOURCE_PROCESS_TEXT:I = 0x5


# instance fields
.field private final mCompat:Landroidx/core/view/ContentInfoCompat$Compat;


# direct methods
.method constructor <init>(Landroidx/core/view/ContentInfoCompat$Compat;)V
    .registers 2
    .param p1, "compat"    # Landroidx/core/view/ContentInfoCompat$Compat;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    .line 149
    return-void
.end method

.method static buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;
    .registers 5
    .param p0, "description"    # Landroid/content/ClipDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/List<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    .line 297
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/ClipData$Item;>;"
    new-instance v0, Landroid/content/ClipData;

    new-instance v1, Landroid/content/ClipDescription;

    invoke-direct {v1, p0}, Landroid/content/ClipDescription;-><init>(Landroid/content/ClipDescription;)V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    invoke-direct {v0, v1, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 298
    .local v0, "clip":Landroid/content/ClipData;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 301
    .end local v1    # "i":I
    :cond_24
    return-object v0
.end method

.method static flagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flags"    # I

    .line 138
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 139
    const-string v0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    return-object v0

    .line 141
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .registers 7
    .param p0, "clip"    # Landroid/content/ClipData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/content/ClipData;",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    .line 271
    .local p1, "itemPredicate":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Landroid/content/ClipData$Item;>;"
    const/4 v0, 0x0

    .line 272
    .local v0, "acceptedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    const/4 v1, 0x0

    .line 273
    .local v1, "remainingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 274
    invoke-virtual {p0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 275
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-interface {p1, v3}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 276
    if-nez v0, :cond_1b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1c

    :cond_1b
    move-object v4, v0

    :goto_1c
    move-object v0, v4

    .line 277
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 279
    :cond_21
    if-nez v1, :cond_29

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2a

    :cond_29
    move-object v4, v1

    :goto_2a
    move-object v1, v4

    .line 280
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v3    # "item":Landroid/content/ClipData$Item;
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 283
    .end local v2    # "i":I
    :cond_31
    const/4 v2, 0x0

    if-nez v0, :cond_39

    .line 284
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 286
    :cond_39
    if-nez v1, :cond_40

    .line 287
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 289
    :cond_40
    nop

    .line 290
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/core/view/ContentInfoCompat;->buildClipData(Landroid/content/ClipDescription;Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v3

    .line 289
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;
    .registers 3
    .param p0, "payload"    # Landroid/view/ContentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContentInfo;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    .line 325
    .local p1, "itemPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ClipData$Item;>;"
    invoke-static {p0, p1}, Landroidx/core/view/ContentInfoCompat$Api31Impl;->partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static sourceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # I

    .line 104
    packed-switch p0, :pswitch_data_1a

    .line 112
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_8
    const-string v0, "SOURCE_PROCESS_TEXT"

    return-object v0

    .line 109
    :pswitch_b
    const-string v0, "SOURCE_AUTOFILL"

    return-object v0

    .line 108
    :pswitch_e
    const-string v0, "SOURCE_DRAG_AND_DROP"

    return-object v0

    .line 107
    :pswitch_11
    const-string v0, "SOURCE_INPUT_METHOD"

    return-object v0

    .line 106
    :pswitch_14
    const-string v0, "SOURCE_CLIPBOARD"

    return-object v0

    .line 105
    :pswitch_17
    const-string v0, "SOURCE_APP"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static toContentInfoCompat(Landroid/view/ContentInfo;)Landroidx/core/view/ContentInfoCompat;
    .registers 3
    .param p0, "platContentInfo"    # Landroid/view/ContentInfo;

    .line 163
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    new-instance v1, Landroidx/core/view/ContentInfoCompat$Compat31Impl;

    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$Compat31Impl;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    return-object v0
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .registers 2

    .line 192
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 230
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 209
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    .line 220
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 201
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getSource()I

    move-result v0

    return v0
.end method

.method public partition(Landroidx/core/util/Predicate;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroidx/core/view/ContentInfoCompat;",
            "Landroidx/core/view/ContentInfoCompat;",
            ">;"
        }
    .end annotation

    .line 252
    .local p1, "itemPredicate":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Landroid/content/ClipData$Item;>;"
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    move-result-object v0

    .line 253
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_25

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    .line 255
    .local v1, "matched":Z
    if-eqz v1, :cond_1b

    move-object v2, p0

    goto :goto_1c

    :cond_1b
    move-object v2, v3

    :goto_1c
    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v3, p0

    :goto_20
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 257
    .end local v1    # "matched":Z
    :cond_25
    invoke-static {v0, p1}, Landroidx/core/view/ContentInfoCompat;->partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;

    move-result-object v1

    .line 258
    .local v1, "split":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ClipData;Landroid/content/ClipData;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_32

    .line 259
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 260
    :cond_32
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_3b

    .line 261
    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 263
    :cond_3b
    new-instance v2, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/ClipData;

    .line 264
    invoke-virtual {v2, v3}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    new-instance v3, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v3, p0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ClipData;

    .line 265
    invoke-virtual {v3, v4}, Landroidx/core/view/ContentInfoCompat$Builder;->setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v3

    .line 263
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public toContentInfo()Landroid/view/ContentInfo;
    .registers 2

    .line 178
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$Compat;->getWrapped()Landroid/view/ContentInfo;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
