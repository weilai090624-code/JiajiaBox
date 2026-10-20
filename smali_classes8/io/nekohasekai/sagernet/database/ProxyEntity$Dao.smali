.class public interface abstract Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;
.super Ljava/lang/Object;
.source "ProxyEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/database/ProxyEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dao"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0016\n\u0002\u0008\t\u0008g\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\'J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\'J\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\'J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\'J\u0017\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\'\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u0006H\'J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0006H\'J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006H\'J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0014H\'J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004H\'J\u0016\u0010\u0015\u001a\u00020\u00112\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004H\'J\u0016\u0010\u0018\u001a\u00020\u00112\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0004H\'J\u0016\u0010\u001a\u001a\u00020\u00132\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\'J\u0008\u0010\u001c\u001a\u00020\u0013H\'\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;",
        "",
        "getAll",
        "",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "getIdsByGroup",
        "",
        "groupId",
        "getByGroup",
        "getEntities",
        "proxyIds",
        "countByGroup",
        "nextOrder",
        "(J)Ljava/lang/Long;",
        "getById",
        "proxyId",
        "deleteById",
        "",
        "deleteByGroup",
        "",
        "",
        "deleteProxy",
        "proxy",
        "proxies",
        "updateProxy",
        "addProxy",
        "insert",
        "deleteAll",
        "reset",
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


# virtual methods
.method public abstract addProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)J
.end method

.method public abstract countByGroup(J)J
.end method

.method public abstract deleteAll(J)I
.end method

.method public abstract deleteByGroup(J)V
.end method

.method public abstract deleteByGroup([J)V
.end method

.method public abstract deleteById(J)I
.end method

.method public abstract deleteProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)I
.end method

.method public abstract deleteProxy(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByGroup(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;
.end method

.method public abstract getEntities(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdsByGroup(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract nextOrder(J)Ljava/lang/Long;
.end method

.method public abstract reset()V
.end method

.method public abstract updateProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)I
.end method

.method public abstract updateProxy(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)I"
        }
    .end annotation
.end method
