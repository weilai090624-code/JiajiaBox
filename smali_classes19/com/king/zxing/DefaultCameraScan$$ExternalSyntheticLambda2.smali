.class public final synthetic Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/king/zxing/DefaultCameraScan;


# direct methods
.method public synthetic constructor <init>(Lcom/king/zxing/DefaultCameraScan;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda2;->f$0:Lcom/king/zxing/DefaultCameraScan;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda2;->f$0:Lcom/king/zxing/DefaultCameraScan;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v0, p1}, Lcom/king/zxing/DefaultCameraScan;->lambda$initData$0$com-king-zxing-DefaultCameraScan(Lcom/google/zxing/Result;)V

    return-void
.end method
