.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/NodeActions;"
    method = "lambda$sort$0"
    proto = "(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/Object;)I"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$9;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$9;->f$0:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$sort$0(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
