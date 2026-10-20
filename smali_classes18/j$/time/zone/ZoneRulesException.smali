.class public Lj$/time/zone/ZoneRulesException;
.super Lj$/time/DateTimeException;
.source "ZoneRulesException.java"


# static fields
.field private static final serialVersionUID:J = -0x16a7842e31574fcfL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 95
    invoke-direct {p0, p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method
