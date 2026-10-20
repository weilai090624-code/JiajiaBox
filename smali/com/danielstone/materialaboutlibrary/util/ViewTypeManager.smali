.class public abstract Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;
.super Ljava/lang/Object;
.source "ViewTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager$ItemLayout;,
        Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager$ItemType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLayout(I)I
.end method

.method public abstract getViewHolder(ILandroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
.end method

.method public abstract setupItem(ILcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Landroid/content/Context;)V
.end method
