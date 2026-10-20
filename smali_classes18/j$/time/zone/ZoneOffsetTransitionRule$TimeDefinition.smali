.class public final enum Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
.super Ljava/lang/Enum;
.source "ZoneOffsetTransitionRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/zone/ZoneOffsetTransitionRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum STANDARD:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum UTC:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum WALL:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 593
    new-instance v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "UTC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 595
    new-instance v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "WALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 597
    new-instance v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "STANDARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 591
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v1, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v4

    sput-object v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 591
    const-class v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public static values()[Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    .line 591
    sget-object v0, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v0}, [Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public createDateTime(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)Lj$/time/LocalDateTime;
    .locals 3
    .param p1, "dateTime"    # Lj$/time/LocalDateTime;
    .param p2, "standardOffset"    # Lj$/time/ZoneOffset;
    .param p3, "wallOffset"    # Lj$/time/ZoneOffset;

    .line 617
    sget-object v0, Lj$/time/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    invoke-virtual {p0}, Lj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 627
    return-object p1

    .line 623
    :pswitch_0
    invoke-virtual {p3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p2}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 624
    .local v0, "difference":I
    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 619
    .end local v0    # "difference":I
    :pswitch_1
    invoke-virtual {p3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    sget-object v1, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 620
    .restart local v0    # "difference":I
    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Lj$/time/LocalDateTime;->plusSeconds(J)Lj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
