.class public final Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager$ItemLayout;
.super Ljava/lang/Object;
.source "ViewTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemLayout"
.end annotation


# static fields
.field public static final ACTION_LAYOUT:I

.field public static final TITLE_LAYOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcom/danielstone/materialaboutlibrary/R$layout;->mal_material_about_action_item:I

    sput v0, Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager$ItemLayout;->ACTION_LAYOUT:I

    .line 19
    sget v0, Lcom/danielstone/materialaboutlibrary/R$layout;->mal_material_about_title_item:I

    sput v0, Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager$ItemLayout;->TITLE_LAYOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
