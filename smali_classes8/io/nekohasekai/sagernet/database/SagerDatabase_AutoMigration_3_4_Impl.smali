.class final Lio/nekohasekai/sagernet/database/SagerDatabase_AutoMigration_3_4_Impl;
.super Landroidx/room/migration/Migration;
.source "SagerDatabase_AutoMigration_3_4_Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 15
    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "db"
        }
    .end annotation

    .line 19
    return-void
.end method
