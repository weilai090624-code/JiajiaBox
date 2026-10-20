.class public abstract Lj$/time/DesugarClock;
.super Ljava/lang/Object;
.source "DesugarClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/DesugarClock$DesugarTickClock;
    }
.end annotation


# static fields
.field static final NANOS_PER_MILLI:J = 0xf4240L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tickMillis(Lj$/time/ZoneId;)Lj$/time/Clock;
    .locals 4
    .param p0, "zone"    # Lj$/time/ZoneId;

    .line 160
    new-instance v0, Lj$/time/DesugarClock$DesugarTickClock;

    invoke-static {p0}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, v1, v2, v3}, Lj$/time/DesugarClock$DesugarTickClock;-><init>(Lj$/time/Clock;J)V

    return-object v0
.end method
