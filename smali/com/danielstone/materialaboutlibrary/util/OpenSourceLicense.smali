.class public final enum Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;
.super Ljava/lang/Enum;
.source "OpenSourceLicense.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

.field public static final enum APACHE_2:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

.field public static final enum BSD:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

.field public static final enum GNU_GPL_3:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

.field public static final enum MIT:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    const-string v1, "APACHE_2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->APACHE_2:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    const-string v1, "MIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->MIT:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    const-string v1, "GNU_GPL_3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->GNU_GPL_3:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    const-string v1, "BSD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->BSD:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    sget-object v1, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->APACHE_2:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    aput-object v1, v0, v2

    sget-object v1, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->MIT:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    aput-object v1, v0, v3

    sget-object v1, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->GNU_GPL_3:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    aput-object v1, v0, v4

    sget-object v1, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->BSD:Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    aput-object v1, v0, v5

    sput-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->$VALUES:[Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    return-object v0
.end method

.method public static values()[Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;
    .locals 1

    .line 5
    sget-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->$VALUES:[Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    invoke-virtual {v0}, [Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    return-object v0
.end method


# virtual methods
.method public getResourceId()I
    .locals 2

    .line 9
    sget-object v0, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense$1;->$SwitchMap$com$danielstone$materialaboutlibrary$util$OpenSourceLicense:[I

    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 19
    const/4 v0, -0x1

    return v0

    .line 17
    :pswitch_0
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->license_bsd:I

    return v0

    .line 15
    :pswitch_1
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->license_gpl:I

    return v0

    .line 13
    :pswitch_2
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->license_mit:I

    return v0

    .line 11
    :pswitch_3
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->license_apache2:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
