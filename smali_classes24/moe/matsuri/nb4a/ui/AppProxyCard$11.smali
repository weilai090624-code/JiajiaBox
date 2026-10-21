.class public final synthetic Lmoe/matsuri/nb4a/ui/AppProxyCard$11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lmoe/matsuri/nb4a/ui/AppProxyCard;"
    method = "lambda$load$8"
    proto = "(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$11;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$11;->f$0:Ljava/util/Map;

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->lambda$load$8(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    return p1
.end method
