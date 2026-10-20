.class public final Lio/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3;
.super Ljava/lang/Object;
.source "JJHomeFragment.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;->applyTopInset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "io/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public static synthetic $r8$lambda$L8MV_mlC9GaeB7r0xUv3PN7I6QQ(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3;->onViewAttachedToWindow$lambda$0(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    return-void
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onViewAttachedToWindow$lambda$0(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    .line 186
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->access$applyStatusBarInsetFromRoot(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    new-instance v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$applyTopInset$3$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    return-void
.end method
