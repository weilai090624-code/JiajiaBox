.class public final synthetic Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$12;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$12;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lambda$request$7(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
