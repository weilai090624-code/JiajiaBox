.class Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "KeyValuePair_Dao_TempDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl$4;->this$0:Lio/nekohasekai/sagernet/database/preference/KeyValuePair_Dao_TempDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 78
    const-string v0, "DELETE FROM `KeyValuePair`"

    .line 79
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE FROM `KeyValuePair`"

    return-object v1
.end method
