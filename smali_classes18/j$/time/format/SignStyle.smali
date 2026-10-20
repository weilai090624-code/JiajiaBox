.class public final enum Lj$/time/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/format/SignStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/format/SignStyle;

.field public static final enum ALWAYS:Lj$/time/format/SignStyle;

.field public static final enum EXCEEDS_PAD:Lj$/time/format/SignStyle;

.field public static final enum NEVER:Lj$/time/format/SignStyle;

.field public static final enum NORMAL:Lj$/time/format/SignStyle;

.field public static final enum NOT_NEGATIVE:Lj$/time/format/SignStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    new-instance v0, Lj$/time/format/SignStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    .line 92
    new-instance v0, Lj$/time/format/SignStyle;

    const-string v1, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/SignStyle;->ALWAYS:Lj$/time/format/SignStyle;

    .line 99
    new-instance v0, Lj$/time/format/SignStyle;

    const-string v1, "NEVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/SignStyle;->NEVER:Lj$/time/format/SignStyle;

    .line 106
    new-instance v0, Lj$/time/format/SignStyle;

    const-string v1, "NOT_NEGATIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    .line 115
    new-instance v0, Lj$/time/format/SignStyle;

    const-string v1, "EXCEEDS_PAD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Lj$/time/format/SignStyle;

    sget-object v1, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/format/SignStyle;->ALWAYS:Lj$/time/format/SignStyle;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/format/SignStyle;->NEVER:Lj$/time/format/SignStyle;

    aput-object v1, v0, v4

    sget-object v1, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    aput-object v1, v0, v5

    sget-object v1, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    aput-object v1, v0, v6

    sput-object v0, Lj$/time/format/SignStyle;->$VALUES:[Lj$/time/format/SignStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/SignStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lj$/time/format/SignStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/format/SignStyle;

    return-object v0
.end method

.method public static values()[Lj$/time/format/SignStyle;
    .locals 1

    .line 76
    sget-object v0, Lj$/time/format/SignStyle;->$VALUES:[Lj$/time/format/SignStyle;

    invoke-virtual {v0}, [Lj$/time/format/SignStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method parse(ZZZ)Z
    .locals 3
    .param p1, "positive"    # Z
    .param p2, "strict"    # Z
    .param p3, "fixedWidth"    # Z

    .line 126
    invoke-virtual {p0}, Lj$/time/format/SignStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 135
    :pswitch_0
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 132
    :pswitch_1
    return v2

    .line 129
    :pswitch_2
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 135
    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
