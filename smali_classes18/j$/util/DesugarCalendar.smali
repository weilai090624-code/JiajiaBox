.class public final synthetic Lj$/util/DesugarCalendar;
.super Ljava/lang/Object;


# static fields
.field public static final LONG_FORMAT:I = 0x2

.field public static final LONG_STANDALONE:I = 0x8002

.field public static final NARROW_FORMAT:I = 0x4

.field public static final NARROW_STANDALONE:I = 0x8004

.field public static final SHORT_FORMAT:I = 0x1

.field public static final SHORT_STANDALONE:I = 0x8001

.field static final STANDALONE_MASK:I = 0x8000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toInstant(Ljava/util/Calendar;)Lj$/time/Instant;
    .locals 2
    .param p0, "this"    # Ljava/util/Calendar;

    .line 3674
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method
