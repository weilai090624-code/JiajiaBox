.class Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ProxyEntity_Dao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;
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

    .line 62
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$1;->this$0:Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    .locals 19
    .param p1, "statement"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "entity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 72
    move-object/from16 v0, p1

    const/4 v1, 0x1

    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 73
    const/4 v1, 0x2

    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getType()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 75
    const/4 v1, 0x4

    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getUserOrder()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 76
    const/4 v1, 0x5

    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTx()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    const/4 v1, 0x6

    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getRx()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getStatus()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x7

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    const/16 v1, 0x9

    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getError()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    if-nez v1, :cond_0

    .line 82
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getSocksBean()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    .line 87
    .local v1, "_tmp":[B
    const/16 v2, 0xb

    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getHttpBean()Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v2

    .line 89
    .local v2, "_tmp_1":[B
    const/16 v3, 0xc

    invoke-interface {v0, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getSsBean()Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v3

    .line 91
    .local v3, "_tmp_2":[B
    const/16 v4, 0xd

    invoke-interface {v0, v4, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getVmessBean()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v4

    .line 93
    .local v4, "_tmp_3":[B
    const/16 v5, 0xe

    invoke-interface {v0, v5, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTrojanBean()Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v5

    invoke-static {v5}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v5

    .line 95
    .local v5, "_tmp_4":[B
    const/16 v6, 0xf

    invoke-interface {v0, v6, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTrojanGoBean()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v6

    invoke-static {v6}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v6

    .line 97
    .local v6, "_tmp_5":[B
    const/16 v7, 0x10

    invoke-interface {v0, v7, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getMieruBean()Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v7

    invoke-static {v7}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v7

    .line 99
    .local v7, "_tmp_6":[B
    const/16 v8, 0x11

    invoke-interface {v0, v8, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getNaiveBean()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v8

    invoke-static {v8}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v8

    .line 101
    .local v8, "_tmp_7":[B
    const/16 v9, 0x12

    invoke-interface {v0, v9, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getHysteriaBean()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v9

    invoke-static {v9}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v9

    .line 103
    .local v9, "_tmp_8":[B
    const/16 v10, 0x13

    invoke-interface {v0, v10, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTuicBean()Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v10

    invoke-static {v10}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v10

    .line 105
    .local v10, "_tmp_9":[B
    const/16 v11, 0x14

    invoke-interface {v0, v11, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getSshBean()Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    move-result-object v11

    invoke-static {v11}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v11

    .line 107
    .local v11, "_tmp_10":[B
    const/16 v12, 0x15

    invoke-interface {v0, v12, v11}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getWgBean()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v12

    invoke-static {v12}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v12

    .line 109
    .local v12, "_tmp_11":[B
    const/16 v13, 0x16

    invoke-interface {v0, v13, v12}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getShadowTLSBean()Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v13

    invoke-static {v13}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v13

    .line 111
    .local v13, "_tmp_12":[B
    const/16 v14, 0x17

    invoke-interface {v0, v14, v13}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getAnyTLSBean()Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    move-result-object v14

    invoke-static {v14}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v14

    .line 113
    .local v14, "_tmp_13":[B
    const/16 v15, 0x18

    invoke-interface {v0, v15, v14}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getChainBean()Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    move-result-object v15

    invoke-static {v15}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v15

    .line 115
    .local v15, "_tmp_14":[B
    move-object/from16 v16, v1

    .end local v1    # "_tmp":[B
    .local v16, "_tmp":[B
    const/16 v1, 0x19

    invoke-interface {v0, v1, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getNekoBean()Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v1

    .line 117
    .local v1, "_tmp_15":[B
    move-object/from16 v17, v2

    .end local v2    # "_tmp_1":[B
    .local v17, "_tmp_1":[B
    const/16 v2, 0x1a

    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getConfigBean()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v2

    .line 119
    .local v2, "_tmp_16":[B
    move-object/from16 v18, v1

    .end local v1    # "_tmp_15":[B
    .local v18, "_tmp_15":[B
    const/16 v1, 0x1b

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 120
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 62
    check-cast p2, Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity_Dao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "INSERT OR ABORT INTO `proxy_entities` (`id`,`groupId`,`type`,`userOrder`,`tx`,`rx`,`status`,`ping`,`uuid`,`error`,`socksBean`,`httpBean`,`ssBean`,`vmessBean`,`trojanBean`,`trojanGoBean`,`mieruBean`,`naiveBean`,`hysteriaBean`,`tuicBean`,`sshBean`,`wgBean`,`shadowTLSBean`,`anyTLSBean`,`chainBean`,`nekoBean`,`configBean`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
