.class final Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;
.super Ljava/lang/Object;
.source "AppTrafficRankingCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Display"
.end annotation


# instance fields
.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;->label:Ljava/lang/String;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppTrafficRankingCard$Display;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
