.class public final Lmoe/matsuri/nb4a/proxy/PreferenceBinding;
.super Ljava/lang/Object;
.source "PreferenceBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020\u001dJ\u0006\u0010$\u001a\u00020\u0003J\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010&\u001a\u00020\'J\u0006\u0010(\u001a\u00020\'R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000e\"\u0004\u0008\u001b\u0010\u0010R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001b\u0010)\u001a\u00020*8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008+\u0010,\u00a8\u0006/"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/proxy/PreferenceBinding;",
        "",
        "type",
        "",
        "fieldName",
        "",
        "bean",
        "pf",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;)V",
        "getType",
        "()I",
        "getFieldName",
        "()Ljava/lang/String;",
        "setFieldName",
        "(Ljava/lang/String;)V",
        "getBean",
        "()Ljava/lang/Object;",
        "setBean",
        "(Ljava/lang/Object;)V",
        "getPf",
        "()Landroidx/preference/PreferenceFragmentCompat;",
        "setPf",
        "(Landroidx/preference/PreferenceFragmentCompat;)V",
        "cacheName",
        "getCacheName",
        "setCacheName",
        "disable",
        "",
        "getDisable",
        "()Z",
        "setDisable",
        "(Z)V",
        "readStringFromCache",
        "readBoolFromCache",
        "readIntFromCache",
        "readStringToIntFromCache",
        "fromCache",
        "",
        "writeToCache",
        "preference",
        "Landroidx/preference/Preference;",
        "getPreference",
        "()Landroidx/preference/Preference;",
        "preference$delegate",
        "Lkotlin/Lazy;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bean:Ljava/lang/Object;

.field private cacheName:Ljava/lang/String;

.field private disable:Z

.field private fieldName:Ljava/lang/String;

.field private pf:Landroidx/preference/PreferenceFragmentCompat;

.field private final preference$delegate:Lkotlin/Lazy;

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$N1MOtQH1lxOHlyXXIKl1hONOASc(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Landroidx/preference/Preference;
    .locals 0

    invoke-static {p0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->preference_delegate$lambda$0(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "pf"    # Landroidx/preference/PreferenceFragmentCompat;

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->type:I

    .line 18
    iput-object p2, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fieldName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    .line 20
    iput-object p4, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->pf:Landroidx/preference/PreferenceFragmentCompat;

    .line 23
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fieldName:Ljava/lang/String;

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    .line 95
    new-instance v0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding$$ExternalSyntheticLambda0;-><init>(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->preference$delegate:Lkotlin/Lazy;

    .line 16
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 16
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 16
    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 19
    move-object p3, v0

    .line 16
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 20
    move-object p4, v0

    .line 16
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;-><init>(ILjava/lang/String;Ljava/lang/Object;Landroidx/preference/PreferenceFragmentCompat;)V

    .line 21
    return-void
.end method

.method private static final preference_delegate$lambda$0(Lmoe/matsuri/nb4a/proxy/PreferenceBinding;)Landroidx/preference/Preference;
    .locals 2
    .param p0, "this$0"    # Lmoe/matsuri/nb4a/proxy/PreferenceBinding;

    .line 96
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->pf:Landroidx/preference/PreferenceFragmentCompat;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final fromCache()V
    .locals 4

    .line 45
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->disable:Z

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    nop

    .line 47
    :try_start_0
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    nop

    .line 52
    .local v0, "f":Ljava/lang/reflect/Field;
    iget v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->readBoolFromCache()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->readIntFromCache()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->readStringToIntFromCache()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-virtual {p0}, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->readStringFromCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 48
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding no field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 50
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getBean()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCacheName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisable()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->disable:Z

    return v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPf()Landroidx/preference/PreferenceFragmentCompat;
    .locals 1

    .line 20
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->pf:Landroidx/preference/PreferenceFragmentCompat;

    return-object v0
.end method

.method public final getPreference()Landroidx/preference/Preference;
    .locals 1

    .line 95
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->preference$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 17
    iget v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->type:I

    return v0
.end method

.method public final readBoolFromCache()Z
    .locals 3

    .line 31
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final readIntFromCache()I
    .locals 3

    .line 35
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final readStringFromCache()Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final readStringToIntFromCache()I
    .locals 2

    .line 39
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    .local v0, "value":I
    :goto_0
    return v0
.end method

.method public final setBean(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    return-void
.end method

.method public final setCacheName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    return-void
.end method

.method public final setDisable(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 24
    iput-boolean p1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->disable:Z

    return-void
.end method

.method public final setFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fieldName:Ljava/lang/String;

    return-void
.end method

.method public final setPf(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/preference/PreferenceFragmentCompat;

    .line 20
    iput-object p1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->pf:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method public final writeToCache()V
    .locals 5

    .line 61
    iget-boolean v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->disable:Z

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    nop

    .line 63
    :try_start_0
    iget-object v0, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    nop

    .line 68
    .local v0, "f":Ljava/lang/reflect/Field;
    iget-object v1, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->bean:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "value":Ljava/lang/Object;
    iget v2, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 89
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v2

    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 83
    :pswitch_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v2

    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 77
    :pswitch_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 79
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v2

    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 73
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v2

    iget-object v3, p0, Lmoe/matsuri/nb4a/proxy/PreferenceBinding;->cacheName:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    :goto_0
    return-void

    .line 64
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding no field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->d(Ljava/lang/String;)V

    .line 66
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
