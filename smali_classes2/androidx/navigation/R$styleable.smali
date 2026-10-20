.class public final Landroidx/navigation/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActivityNavigator:[I

.field public static final ActivityNavigator_action:I = 0x1

.field public static final ActivityNavigator_android_name:I = 0x0

.field public static final ActivityNavigator_data:I = 0x2

.field public static final ActivityNavigator_dataPattern:I = 0x3

.field public static final ActivityNavigator_targetPackage:I = 0x4

.field public static final NavHost:[I

.field public static final NavHost_navGraph:I

.field public static final NavInclude:[I

.field public static final NavInclude_graph:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x7f04015b

    const v1, 0x7f04048b

    const v2, 0x1010003

    const v3, 0x7f040004

    const v4, 0x7f04015a

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/navigation/R$styleable;->ActivityNavigator:[I

    const v0, 0x7f040379

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/navigation/R$styleable;->NavHost:[I

    const v0, 0x7f04022a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/navigation/R$styleable;->NavInclude:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
