.class public final synthetic Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic f$0:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/UnaryOperator;

    invoke-static {v0, p1}, Lj$/time/temporal/TemporalAdjusters;->lambda$ofDateAdjuster$0(Ljava/util/function/UnaryOperator;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
