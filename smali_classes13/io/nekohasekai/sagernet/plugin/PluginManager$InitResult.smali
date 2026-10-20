.class public final Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
.super Ljava/lang/Object;
.source "PluginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;",
        "",
        "path",
        "",
        "info",
        "Landroid/content/pm/ProviderInfo;",
        "<init>",
        "(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V",
        "getPath",
        "()Ljava/lang/String;",
        "getInfo",
        "()Landroid/content/pm/ProviderInfo;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final info:Landroid/content/pm/ProviderInfo;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    .line 21
    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;Ljava/lang/String;Landroid/content/pm/ProviderInfo;ILjava/lang/Object;)Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->copy(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Landroid/content/pm/ProviderInfo;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    invoke-direct {v0, p1, p2}, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;-><init>(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;

    iget-object v3, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInfo()Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2}, Landroid/content/pm/ProviderInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitResult(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/plugin/PluginManager$InitResult;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
