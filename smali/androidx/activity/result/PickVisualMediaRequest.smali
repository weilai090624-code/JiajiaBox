.class public final Landroidx/activity/result/PickVisualMediaRequest;
.super Ljava/lang/Object;
.source "PickVisualMediaRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/PickVisualMediaRequest$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001#B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001d@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/activity/result/PickVisualMediaRequest;",
        "",
        "()V",
        "<set-?>",
        "",
        "accentColor",
        "getAccentColor",
        "()J",
        "setAccentColor$activity_release",
        "(J)V",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;",
        "defaultTab",
        "getDefaultTab",
        "()Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;",
        "setDefaultTab$activity_release",
        "(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)V",
        "",
        "isCustomAccentColorApplied",
        "()Z",
        "setCustomAccentColorApplied$activity_release",
        "(Z)V",
        "isOrderedSelection",
        "setOrderedSelection$activity_release",
        "",
        "maxItems",
        "getMaxItems",
        "()I",
        "setMaxItems$activity_release",
        "(I)V",
        "Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;",
        "mediaType",
        "getMediaType",
        "()Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;",
        "setMediaType$activity_release",
        "(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)V",
        "Builder",
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

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    iput-object v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 124
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;

    invoke-virtual {v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->getMaxItems$activity_release()I

    move-result v0

    iput v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->maxItems:I

    .line 130
    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    iput-object v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 119
    return-void
.end method


# virtual methods
.method public final getAccentColor()J
    .locals 2

    .line 136
    iget-wide v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->accentColor:J

    return-wide v0
.end method

.method public final getDefaultTab()Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    return-object v0
.end method

.method public final getMaxItems()I
    .locals 1

    .line 124
    iget v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->maxItems:I

    return v0
.end method

.method public final getMediaType()Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    return-object v0
.end method

.method public final isCustomAccentColorApplied()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->isCustomAccentColorApplied:Z

    return v0
.end method

.method public final isOrderedSelection()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroidx/activity/result/PickVisualMediaRequest;->isOrderedSelection:Z

    return v0
.end method

.method public final setAccentColor$activity_release(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 137
    iput-wide p1, p0, Landroidx/activity/result/PickVisualMediaRequest;->accentColor:J

    return-void
.end method

.method public final setCustomAccentColorApplied$activity_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 134
    iput-boolean p1, p0, Landroidx/activity/result/PickVisualMediaRequest;->isCustomAccentColorApplied:Z

    return-void
.end method

.method public final setDefaultTab$activity_release(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Landroidx/activity/result/PickVisualMediaRequest;->defaultTab:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    return-void
.end method

.method public final setMaxItems$activity_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 125
    iput p1, p0, Landroidx/activity/result/PickVisualMediaRequest;->maxItems:I

    return-void
.end method

.method public final setMediaType$activity_release(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Landroidx/activity/result/PickVisualMediaRequest;->mediaType:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    return-void
.end method

.method public final setOrderedSelection$activity_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 128
    iput-boolean p1, p0, Landroidx/activity/result/PickVisualMediaRequest;->isOrderedSelection:Z

    return-void
.end method
