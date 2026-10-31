.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .registers 5
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "source"    # I

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_11

    .line 516
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    goto :goto_18

    .line 518
    :cond_11
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 520
    :goto_18
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .registers 4
    .param p1, "other"    # Landroidx/core/view/ContentInfoCompat;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_11

    .line 502
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    goto :goto_18

    .line 504
    :cond_11
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 506
    :goto_18
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .registers 2

    .line 589
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;
    .registers 3
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 530
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setClip(Landroid/content/ClipData;)V

    .line 531
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 580
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setExtras(Landroid/os/Bundle;)V

    .line 581
    return-object p0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 555
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setFlags(I)V

    .line 556
    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .registers 3
    .param p1, "linkUri"    # Landroid/net/Uri;

    .line 568
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setLinkUri(Landroid/net/Uri;)V

    .line 569
    return-object p0
.end method

.method public setSource(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .registers 3
    .param p1, "source"    # I

    .line 542
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setSource(I)V

    .line 543
    return-object p0
.end method
