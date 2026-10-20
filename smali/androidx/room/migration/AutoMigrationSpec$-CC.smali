.class public final synthetic Landroidx/room/migration/AutoMigrationSpec$-CC;
.super Ljava/lang/Object;
.source "AutoMigrationSpec.kt"


# direct methods
.method public static $default$onPostMigrate(Landroidx/room/migration/AutoMigrationSpec;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p0, "_this"    # Landroidx/room/migration/AutoMigrationSpec;
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 0
    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-void
.end method
