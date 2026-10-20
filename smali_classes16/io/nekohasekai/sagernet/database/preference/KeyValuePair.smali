.class public final Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
.super Ljava/lang/Object;
.source "KeyValuePair.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion;,
        Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 52\u00020\u0001:\u000256B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0002\u0010\tJ\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u001aJ\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u001eJ\u0010\u0010/\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000eH\u0007J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020&J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u0014\u0010/\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050,J\u0008\u00100\u001a\u00020\u0005H\u0016J\u0018\u00101\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u000eH\u0016J\u0008\u00104\u001a\u00020\u000eH\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0006R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010\u0003\u001a\u0004\u0008#\u0010$R\u0013\u0010%\u001a\u0004\u0018\u00010&8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0013\u0010)\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u000bR\u0019\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010,8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.\u00a8\u00067"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/preference/KeyValuePair;",
        "Landroid/os/Parcelable;",
        "<init>",
        "()V",
        "key",
        "",
        "(Ljava/lang/String;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "valueType",
        "",
        "getValueType",
        "()I",
        "setValueType",
        "(I)V",
        "value",
        "",
        "getValue",
        "()[B",
        "setValue",
        "([B)V",
        "boolean",
        "",
        "getBoolean",
        "()Ljava/lang/Boolean;",
        "float",
        "",
        "getFloat",
        "()Ljava/lang/Float;",
        "int",
        "getInt$annotations",
        "getInt",
        "()Ljava/lang/Integer;",
        "long",
        "",
        "getLong",
        "()Ljava/lang/Long;",
        "string",
        "getString",
        "stringSet",
        "",
        "getStringSet",
        "()Ljava/util/Set;",
        "put",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "describeContents",
        "Companion",
        "Dao",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/database/preference/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion;

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_STRING:I = 0x5

.field public static final TYPE_STRING_SET:I = 0x6

.field public static final TYPE_UNINITIALIZED:I


# instance fields
.field private key:Ljava/lang/String;

.field private value:[B

.field private valueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->Companion:Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion;

    .line 23
    new-instance v0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion$CREATOR$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->key:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->key:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;-><init>()V

    .line 93
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->key:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static synthetic getInt$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use long."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "long"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public final getBoolean()Ljava/lang/Boolean;
    .locals 2

    .line 62
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getFloat()Ljava/lang/Float;
    .locals 2

    .line 64
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getInt()Ljava/lang/Integer;
    .locals 2

    .line 69
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLong()Ljava/lang/Long;
    .locals 2

    .line 71
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getString()Ljava/lang/String;
    .locals 3

    .line 78
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getStringSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v1, "result":Ljava/util/HashSet;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v2, v2, [B

    .line 85
    .local v2, "chArr":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 86
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v2    # "chArr":[B
    :cond_0
    nop

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "result":Ljava/util/HashSet;
    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    goto :goto_1

    .line 89
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getValue()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    return-object v0
.end method

.method public final getValueType()I
    .locals 1

    .line 58
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    return v0
.end method

.method public final put(F)Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .locals 1
    .param p1, "value"    # F

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 105
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 106
    return-object p0
.end method

.method public final put(I)Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Use long."
    .end annotation

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 113
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 114
    return-object p0
.end method

.method public final put(J)Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .locals 1
    .param p1, "value"    # J

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 119
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 120
    return-object p0
.end method

.method public final put(Ljava/lang/String;)Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x5

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 125
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 126
    return-object p0
.end method

.method public final put(Ljava/util/Set;)Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .locals 6
    .param p1, "value"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/nekohasekai/sagernet/database/preference/KeyValuePair;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x6

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 133
    .local v1, "intBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "getBytes(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .end local v3    # "v":Ljava/lang/String;
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 139
    return-object p0
.end method

.method public final put(Z)Lio/nekohasekai/sagernet/database/preference/KeyValuePair;
    .locals 2
    .param p1, "value"    # Z

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    .line 99
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    .line 100
    return-object p0
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->key:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public final setValue([B)V
    .locals 1
    .param p1, "<set-?>"    # [B

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    return-void
.end method

.method public final setValueType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 58
    iput p1, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 144
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->getStringSet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->getLong()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_4
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->getFloat()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    .line 144
    :goto_0
    nop

    .line 151
    if-eqz v0, :cond_0

    .line 144
    nop

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    const-string v0, "null"

    .line 144
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->valueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/preference/KeyValuePair;->value:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 164
    return-void
.end method
