.class public final synthetic Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:Lj$/time/LocalDate;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lj$/time/LocalDate;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;->f$0:Lj$/time/LocalDate;

    iput-wide p2, p0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;->f$1:J

    iput-wide p4, p0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;->f$0:Lj$/time/LocalDate;

    iget-wide v1, p0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;->f$1:J

    iget-wide v3, p0, Lj$/time/DesugarLocalDate$$ExternalSyntheticLambda4;->f$2:J

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lj$/time/DesugarLocalDate;->lambda$datesUntil$1(Lj$/time/LocalDate;JJJ)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1
.end method
