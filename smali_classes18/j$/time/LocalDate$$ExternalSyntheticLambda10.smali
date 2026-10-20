.class public final synthetic Lj$/time/LocalDate$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/LocalDate$$ExternalSyntheticLambda10;->f$0:J

    iput-wide p3, p0, Lj$/time/LocalDate$$ExternalSyntheticLambda10;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Lj$/time/LocalDate$$ExternalSyntheticLambda10;->f$0:J

    iget-wide v2, p0, Lj$/time/LocalDate$$ExternalSyntheticLambda10;->f$1:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lj$/time/LocalDate;->lambda$datesUntil$0(JJJ)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method
