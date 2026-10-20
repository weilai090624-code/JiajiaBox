.class public final Landroidx/activity/result/PickVisualMediaRequest$Builder;
.super Ljava/lang/Object;
.source "PickVisualMediaRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/PickVisualMediaRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/activity/result/PickVisualMediaRequest$Builder;",
        "",
        "()V",
        "accentColor",
        "",
        "defaultTab",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;",
        "isCustomAccentColorApplied",
        "",
        "isOrderedSelection",
        "maxItems",
        "",
        "mediaType",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;",
        "build",
        "Landroidx/activity/result/PickVisualMediaRequest;",
        "setAccentColor",
        "setDefaultTab",
        "setMaxItems",
        "setMediaType",
        "setOrderedSelection",
        "activity_release"
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
.field private accentColor:J

.field private defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

.field private isCustomAccentColorApplied:Z

.field private isOrderedSelection:Z

.field private maxItems:I

.field private mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    iput-object v0, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 143
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->maxItems:I

    .line 145
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    iput-object v0, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 140
    return-void
.end method


# virtual methods
.method public final build()Landroidx/activity/result/PickVisualMediaRequest;
    .locals 5

    .line 225
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest;-><init>()V

    move-object v1, v0

    .local v1, "$this$build_u24lambda_u240":Landroidx/activity/result/PickVisualMediaRequest;
    const/4 v2, 0x0

    .line 226
    .local v2, "$i$a$-apply-PickVisualMediaRequest$Builder$build$1":I
    iget-object v3, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    invoke-virtual {v1, v3}, Landroidx/activity/result/PickVisualMediaRequest;->setMediaType$activity_release(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)V

    .line 227
    iget v3, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->maxItems:I

    invoke-virtual {v1, v3}, Landroidx/activity/result/PickVisualMediaRequest;->setMaxItems$activity_release(I)V

    .line 228
    iget-boolean v3, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->isOrderedSelection:Z

    invoke-virtual {v1, v3}, Landroidx/activity/result/PickVisualMediaRequest;->setOrderedSelection$activity_release(Z)V

    .line 229
    iget-object v3, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    invoke-virtual {v1, v3}, Landroidx/activity/result/PickVisualMediaRequest;->setDefaultTab$activity_release(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)V

    .line 230
    iget-boolean v3, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->isCustomAccentColorApplied:Z

    invoke-virtual {v1, v3}, Landroidx/activity/result/PickVisualMediaRequest;->setCustomAccentColorApplied$activity_release(Z)V

    .line 231
    iget-wide v3, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->accentColor:J

    invoke-virtual {v1, v3, v4}, Landroidx/activity/result/PickVisualMediaRequest;->setAccentColor$activity_release(J)V

    .line 232
    nop

    .line 225
    .end local v1    # "$this$build_u24lambda_u240":Landroidx/activity/result/PickVisualMediaRequest;
    .end local v2    # "$i$a$-apply-PickVisualMediaRequest$Builder$build$1":I
    nop

    .line 232
    return-object v0
.end method

.method public final setAccentColor(J)Landroidx/activity/result/PickVisualMediaRequest$Builder;
    .locals 1
    .param p1, "accentColor"    # J

    .line 214
    iput-wide p1, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->accentColor:J

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->isCustomAccentColorApplied:Z

    .line 216
    return-object p0
.end method

.method public final setDefaultTab(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)Landroidx/activity/result/PickVisualMediaRequest$Builder;
    .locals 1
    .param p1, "defaultTab"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    const-string v0, "defaultTab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 201
    return-object p0
.end method

.method public final setMaxItems(I)Landroidx/activity/result/PickVisualMediaRequest$Builder;
    .locals 0
    .param p1, "maxItems"    # I

    .line 171
    iput p1, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->maxItems:I

    .line 172
    return-object p0
.end method

.method public final setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;
    .locals 1
    .param p1, "mediaType"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    const-string v0, "mediaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 160
    return-object p0
.end method

.method public final setOrderedSelection(Z)Landroidx/activity/result/PickVisualMediaRequest$Builder;
    .locals 0
    .param p1, "isOrderedSelection"    # Z

    .line 185
    iput-boolean p1, p0, Landroidx/activity/result/PickVisualMediaRequest$Builder;->isOrderedSelection:Z

    .line 186
    return-object p0
.end method
