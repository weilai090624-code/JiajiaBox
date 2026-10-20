.class public abstract Lio/nekohasekai/sagernet/ui/NamedFragment;
.super Landroidx/fragment/app/Fragment;
.source "NamedFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\r\u001a\u00020\u0008H$R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/NamedFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "contentLayoutId",
        "",
        "(I)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "name$delegate",
        "Lkotlin/Lazy;",
        "name0",
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
.field private final name$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Vghkqf2ue31UKaNmTQUvvhthxHw(Lio/nekohasekai/sagernet/ui/NamedFragment;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NamedFragment;->name_delegate$lambda$0(Lio/nekohasekai/sagernet/ui/NamedFragment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 10
    new-instance v0, Lio/nekohasekai/sagernet/ui/NamedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/NamedFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/NamedFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/NamedFragment;->name$delegate:Lkotlin/Lazy;

    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentLayoutId"    # I

    .line 8
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 10
    new-instance v0, Lio/nekohasekai/sagernet/ui/NamedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/NamedFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/NamedFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/NamedFragment;->name$delegate:Lkotlin/Lazy;

    .line 8
    return-void
.end method

.method private final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NamedFragment;->name$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static final name_delegate$lambda$0(Lio/nekohasekai/sagernet/ui/NamedFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/NamedFragment;

    .line 10
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/NamedFragment;->name0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final name()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/NamedFragment;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract name0()Ljava/lang/String;
.end method
