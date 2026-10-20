.class public final enum Lj$/time/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/format/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/format/TextStyle;

.field public static final enum FULL:Lj$/time/format/TextStyle;

.field public static final enum FULL_STANDALONE:Lj$/time/format/TextStyle;

.field public static final enum NARROW:Lj$/time/format/TextStyle;

.field public static final enum NARROW_STANDALONE:Lj$/time/format/TextStyle;

.field public static final enum SHORT:Lj$/time/format/TextStyle;

.field public static final enum SHORT_STANDALONE:Lj$/time/format/TextStyle;


# instance fields
.field private final calendarStyle:I

.field private final zoneNameStyleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 96
    new-instance v0, Lj$/time/format/TextStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    .line 101
    new-instance v0, Lj$/time/format/TextStyle;

    const v1, 0x8002

    const-string v4, "FULL_STANDALONE"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v1, v2}, Lj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lj$/time/format/TextStyle;->FULL_STANDALONE:Lj$/time/format/TextStyle;

    .line 106
    new-instance v0, Lj$/time/format/TextStyle;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3, v5, v5}, Lj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    .line 111
    new-instance v0, Lj$/time/format/TextStyle;

    const v1, 0x8001

    const-string v4, "SHORT_STANDALONE"

    const/4 v6, 0x3

    invoke-direct {v0, v4, v6, v1, v5}, Lj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lj$/time/format/TextStyle;->SHORT_STANDALONE:Lj$/time/format/TextStyle;

    .line 116
    new-instance v0, Lj$/time/format/TextStyle;

    const-string v1, "NARROW"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v4, v5}, Lj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    .line 121
    new-instance v0, Lj$/time/format/TextStyle;

    const v1, 0x8004

    const-string v7, "NARROW_STANDALONE"

    const/4 v8, 0x5

    invoke-direct {v0, v7, v8, v1, v5}, Lj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lj$/time/format/TextStyle;->NARROW_STANDALONE:Lj$/time/format/TextStyle;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lj$/time/format/TextStyle;

    sget-object v1, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/format/TextStyle;->FULL_STANDALONE:Lj$/time/format/TextStyle;

    aput-object v1, v0, v5

    sget-object v1, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/format/TextStyle;->SHORT_STANDALONE:Lj$/time/format/TextStyle;

    aput-object v1, v0, v6

    sget-object v1, Lj$/time/format/TextStyle;->NARROW:Lj$/time/format/TextStyle;

    aput-object v1, v0, v4

    sget-object v1, Lj$/time/format/TextStyle;->NARROW_STANDALONE:Lj$/time/format/TextStyle;

    aput-object v1, v0, v8

    sput-object v0, Lj$/time/format/TextStyle;->$VALUES:[Lj$/time/format/TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "calendarStyle"    # I
    .param p4, "zoneNameStyleIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p3, p0, Lj$/time/format/TextStyle;->calendarStyle:I

    .line 128
    iput p4, p0, Lj$/time/format/TextStyle;->zoneNameStyleIndex:I

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/TextStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    const-class v0, Lj$/time/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/format/TextStyle;

    return-object v0
.end method

.method public static values()[Lj$/time/format/TextStyle;
    .locals 1

    .line 88
    sget-object v0, Lj$/time/format/TextStyle;->$VALUES:[Lj$/time/format/TextStyle;

    invoke-virtual {v0}, [Lj$/time/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public asNormal()Lj$/time/format/TextStyle;
    .locals 2

    .line 153
    invoke-static {}, Lj$/time/format/TextStyle;->values()[Lj$/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public asStandalone()Lj$/time/format/TextStyle;
    .locals 2

    .line 144
    invoke-static {}, Lj$/time/format/TextStyle;->values()[Lj$/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/format/TextStyle;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lj$/time/format/TextStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method toCalendarStyle()I
    .locals 1

    .line 162
    iget v0, p0, Lj$/time/format/TextStyle;->calendarStyle:I

    return v0
.end method

.method zoneNameStyleIndex()I
    .locals 1

    .line 175
    iget v0, p0, Lj$/time/format/TextStyle;->zoneNameStyleIndex:I

    return v0
.end method
