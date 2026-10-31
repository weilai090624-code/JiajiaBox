.class Landroidx/work/impl/model/DependencyDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DependencyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/DependencyDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/Dependency;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/DependencyDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/DependencyDao_Impl;Landroidx/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/work/impl/model/DependencyDao_Impl;
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

    .line 25
    iput-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl$1;->this$0:Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/Dependency;)V
    .registers 5
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Landroidx/work/impl/model/Dependency;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Landroidx/work/impl/model/Dependency;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 34
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    .line 36
    :cond_b
    invoke-virtual {p2}, Landroidx/work/impl/model/Dependency;->getWorkSpecId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 38
    :goto_12
    invoke-virtual {p2}, Landroidx/work/impl/model/Dependency;->getPrerequisiteId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1d

    .line 39
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_24

    .line 41
    :cond_1d
    invoke-virtual {p2}, Landroidx/work/impl/model/Dependency;->getPrerequisiteId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    :goto_24
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 25
    check-cast p2, Landroidx/work/impl/model/Dependency;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/DependencyDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/Dependency;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .line 28
    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method
