.class public final enum Lj$/time/chrono/IsoEra;
.super Ljava/lang/Enum;
.source "IsoEra.java"

# interfaces
.implements Lj$/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/chrono/IsoEra;",
        ">;",
        "Lj$/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/chrono/IsoEra;

.field public static final enum BCE:Lj$/time/chrono/IsoEra;

.field public static final enum CE:Lj$/time/chrono/IsoEra;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 112
    new-instance v0, Lj$/time/chrono/IsoEra;

    const-string v1, "BCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/chrono/IsoEra;->BCE:Lj$/time/chrono/IsoEra;

    .line 117
    new-instance v0, Lj$/time/chrono/IsoEra;

    const-string v1, "CE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lj$/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/chrono/IsoEra;->CE:Lj$/time/chrono/IsoEra;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lj$/time/chrono/IsoEra;

    sget-object v1, Lj$/time/chrono/IsoEra;->BCE:Lj$/time/chrono/IsoEra;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/chrono/IsoEra;->CE:Lj$/time/chrono/IsoEra;

    aput-object v1, v0, v3

    sput-object v0, Lj$/time/chrono/IsoEra;->$VALUES:[Lj$/time/chrono/IsoEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Lj$/time/chrono/IsoEra;
    .locals 3
    .param p0, "isoEra"    # I

    .line 131
    packed-switch p0, :pswitch_data_0

    .line 137
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    sget-object v0, Lj$/time/chrono/IsoEra;->CE:Lj$/time/chrono/IsoEra;

    return-object v0

    .line 133
    :pswitch_1
    sget-object v0, Lj$/time/chrono/IsoEra;->BCE:Lj$/time/chrono/IsoEra;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/IsoEra;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lj$/time/chrono/IsoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/IsoEra;

    return-object v0
.end method

.method public static values()[Lj$/time/chrono/IsoEra;
    .locals 1

    .line 106
    sget-object v0, Lj$/time/chrono/IsoEra;->$VALUES:[Lj$/time/chrono/IsoEra;

    invoke-virtual {v0}, [Lj$/time/chrono/IsoEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/IsoEra;

    return-object v0
.end method


# virtual methods
.method public synthetic adjustInto(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$adjustInto(Lj$/time/chrono/Era;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Lj$/time/temporal/TemporalField;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$get(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public synthetic getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/time/chrono/Era$-CC;->$default$getDisplayName(Lj$/time/chrono/Era;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getLong(Lj$/time/temporal/TemporalField;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$getLong(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lj$/time/chrono/IsoEra;->ordinal()I

    move-result v0

    return v0
.end method

.method public synthetic isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$isSupported(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method public synthetic query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$query(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/Era$-CC;->$default$range(Lj$/time/chrono/Era;Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
