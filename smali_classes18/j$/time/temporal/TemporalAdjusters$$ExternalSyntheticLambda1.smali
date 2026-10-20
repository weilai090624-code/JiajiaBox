.class public final synthetic Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 2

    iget v0, p0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1}, Lj$/time/temporal/TemporalAdjusters;->lambda$dayOfWeekInMonth$8(IILj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
