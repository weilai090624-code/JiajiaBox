.class public Lcom/king/zxing/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 28
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/king/zxing/util/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public static requestPermission(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 48
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/king/zxing/util/PermissionUtils;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 58
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public static requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 68
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public static requestPermissionsResult(Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 3
    .param p0, "requestPermission"    # Ljava/lang/String;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .line 79
    array-length v0, p1

    .line 80
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    aget v2, p2, v1

    if-nez v2, :cond_0

    .line 83
    const/4 v2, 0x1

    return v2

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static requestPermissionsResult([Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 5
    .param p0, "requestPermissions"    # [Ljava/lang/String;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .line 98
    array-length v0, p1

    .line 99
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 100
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 101
    aget-object v3, p0, v2

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    aget v3, p2, v1

    if-eqz v3, :cond_0

    .line 103
    const/4 v3, 0x0

    return v3

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
