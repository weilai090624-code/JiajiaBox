.class final Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
.super Ljava/lang/Object;
.source "AppListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxiedApp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
        "",
        "pm",
        "Landroid/content/pm/PackageManager;",
        "appInfo",
        "Landroid/content/pm/ApplicationInfo;",
        "packageName",
        "",
        "<init>",
        "(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V",
        "getPackageName",
        "()Ljava/lang/String;",
        "name",
        "",
        "getName",
        "()Ljava/lang/CharSequence;",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "uid",
        "",
        "getUid",
        "()I",
        "sys",
        "",
        "getSys",
        "()Z",
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
.field private final appInfo:Landroid/content/pm/ApplicationInfo;

.field private final name:Ljava/lang/CharSequence;

.field private final packageName:Ljava/lang/String;

.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    const-string v0, "pm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->pm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->packageName:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "loadLabel(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->name:Ljava/lang/CharSequence;

    .line 54
    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "loadIcon(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSys()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getUid()I
    .locals 1

    .line 60
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method
