.class Lj$/time/zone/ZoneRulesProvider$1;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/zone/ZoneRulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$loaded:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lj$/time/zone/ZoneRulesProvider$1;->val$loaded:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .line 155
    const-string v0, "java.time.zone.DefaultZoneRulesProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    const-class v1, Lj$/time/zone/ZoneRulesProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 161
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lj$/time/zone/ZoneRulesProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/zone/ZoneRulesProvider;

    .line 162
    .local v2, "provider":Lj$/time/zone/ZoneRulesProvider;
    invoke-static {v2}, Lj$/time/zone/ZoneRulesProvider;->registerProvider(Lj$/time/zone/ZoneRulesProvider;)V

    .line 163
    iget-object v3, p0, Lj$/time/zone/ZoneRulesProvider$1;->val$loaded:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "provider":Lj$/time/zone/ZoneRulesProvider;
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 170
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;

    invoke-direct {v1}, Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;-><init>()V

    invoke-static {v1}, Lj$/time/zone/ZoneRulesProvider;->registerProvider(Lj$/time/zone/ZoneRulesProvider;)V

    .line 172
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
