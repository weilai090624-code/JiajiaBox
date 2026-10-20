.class public Landroidx/work/multiprocess/parcelable/ParcelableData;
.super Ljava/lang/Object;
.source "ParcelableData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOLEAN:B = 0x1t

.field private static final TYPE_BOOLEAN_ARRAY:B = 0x8t

.field private static final TYPE_BYTE:B = 0x2t

.field private static final TYPE_BYTE_ARRAY:B = 0x9t

.field private static final TYPE_DOUBLE:B = 0x6t

.field private static final TYPE_DOUBLE_ARRAY:B = 0xdt

.field private static final TYPE_FLOAT:B = 0x5t

.field private static final TYPE_FLOAT_ARRAY:B = 0xct

.field private static final TYPE_INTEGER:B = 0x3t

.field private static final TYPE_INTEGER_ARRAY:B = 0xat

.field private static final TYPE_LONG:B = 0x4t

.field private static final TYPE_LONG_ARRAY:B = 0xbt

.field private static final TYPE_NULL:B = 0x0t

.field private static final TYPE_STRING:B = 0x7t

.field private static final TYPE_STRING_ARRAY:B = 0xet


# instance fields
.field private final mData:Landroidx/work/Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData$1;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableData$1;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    invoke-direct {p0, p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableData;->addEntry(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroidx/work/Data;

    invoke-direct {v2, v0}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .locals 0
    .param p1, "data"    # Landroidx/work/Data;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    .line 71
    return-void
.end method

.method private addEntry(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 196
    .local v0, "type":I
    const/4 v1, 0x0

    .line 197
    .local v1, "value":Ljava/lang/Object;
    packed-switch v0, :pswitch_data_0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 241
    goto/16 :goto_0

    .line 237
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    move-result-object v1

    .line 238
    goto/16 :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    move-result-object v1

    .line 235
    goto :goto_0

    .line 231
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    move-result-object v1

    .line 232
    goto :goto_0

    .line 228
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    move-result-object v1

    .line 229
    goto :goto_0

    .line 225
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    move-result-object v1

    .line 226
    goto :goto_0

    .line 222
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    invoke-static {v2}, Landroidx/work/Data;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    move-result-object v1

    .line 223
    goto :goto_0

    .line 219
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    goto :goto_0

    .line 216
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 217
    goto :goto_0

    .line 213
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 214
    goto :goto_0

    .line 210
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 211
    goto :goto_0

    .line 207
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    goto :goto_0

    .line 201
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 202
    goto :goto_0

    .line 204
    :pswitch_d
    invoke-static {p1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->readBooleanValue(Landroid/os/Parcel;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 205
    goto :goto_0

    .line 199
    :pswitch_e
    nop

    .line 246
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeToParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 123
    if-nez p3, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 126
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    move-object v1, p3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 130
    .local v1, "booleanValue":Z
    invoke-static {p1, v1}, Landroidx/work/multiprocess/parcelable/ParcelUtils;->writeBooleanValue(Landroid/os/Parcel;Z)V

    .line 131
    .end local v1    # "booleanValue":Z
    goto/16 :goto_0

    :cond_1
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    .line 132
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    move-object v1, p3

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 134
    .local v1, "byteValue":B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    .end local v1    # "byteValue":B
    goto/16 :goto_0

    :cond_2
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    .line 136
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 138
    .local v1, "intValue":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .end local v1    # "intValue":I
    goto/16 :goto_0

    :cond_3
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_4

    .line 140
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    move-object v1, p3

    check-cast v1, Ljava/lang/Long;

    .line 142
    .local v1, "longValue":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    .end local v1    # "longValue":Ljava/lang/Long;
    goto/16 :goto_0

    :cond_4
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_5

    .line 144
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 146
    .local v1, "floatValue":F
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 147
    .end local v1    # "floatValue":F
    goto/16 :goto_0

    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_6

    .line 148
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 149
    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 150
    .local v1, "doubleValue":D
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 151
    .end local v1    # "doubleValue":D
    goto/16 :goto_0

    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    .line 152
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "stringValue":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    .end local v1    # "stringValue":Ljava/lang/String;
    goto/16 :goto_0

    :cond_7
    const-class v1, [Ljava/lang/Boolean;

    if-ne v0, v1, :cond_8

    .line 156
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    move-object v1, p3

    check-cast v1, [Ljava/lang/Boolean;

    .line 158
    .local v1, "booleanArray":[Ljava/lang/Boolean;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Boolean;)[Z

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 159
    .end local v1    # "booleanArray":[Ljava/lang/Boolean;
    goto/16 :goto_0

    :cond_8
    const-class v1, [Ljava/lang/Byte;

    if-ne v0, v1, :cond_9

    .line 160
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    move-object v1, p3

    check-cast v1, [Ljava/lang/Byte;

    .line 162
    .local v1, "byteArray":[Ljava/lang/Byte;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Byte;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 163
    .end local v1    # "byteArray":[Ljava/lang/Byte;
    goto :goto_0

    :cond_9
    const-class v1, [Ljava/lang/Integer;

    if-ne v0, v1, :cond_a

    .line 164
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    move-object v1, p3

    check-cast v1, [Ljava/lang/Integer;

    .line 166
    .local v1, "integerArray":[Ljava/lang/Integer;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    .end local v1    # "integerArray":[Ljava/lang/Integer;
    goto :goto_0

    :cond_a
    const-class v1, [Ljava/lang/Long;

    if-ne v0, v1, :cond_b

    .line 168
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 169
    move-object v1, p3

    check-cast v1, [Ljava/lang/Long;

    .line 170
    .local v1, "longArray":[Ljava/lang/Long;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Long;)[J

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 171
    .end local v1    # "longArray":[Ljava/lang/Long;
    goto :goto_0

    :cond_b
    const-class v1, [Ljava/lang/Float;

    if-ne v0, v1, :cond_c

    .line 172
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    move-object v1, p3

    check-cast v1, [Ljava/lang/Float;

    .line 174
    .local v1, "floatArray":[Ljava/lang/Float;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Float;)[F

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 175
    .end local v1    # "floatArray":[Ljava/lang/Float;
    goto :goto_0

    :cond_c
    const-class v1, [Ljava/lang/Double;

    if-ne v0, v1, :cond_d

    .line 176
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    move-object v1, p3

    check-cast v1, [Ljava/lang/Double;

    .line 178
    .local v1, "doubleArray":[Ljava/lang/Double;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Double;)[D

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 179
    .end local v1    # "doubleArray":[Ljava/lang/Double;
    goto :goto_0

    :cond_d
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_e

    .line 180
    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    .line 182
    .local v1, "stringArray":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 183
    .end local v1    # "stringArray":[Ljava/lang/String;
    nop

    .line 190
    .end local v0    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return-void

    .line 185
    .restart local v0    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroidx/work/Data;
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    invoke-virtual {v0}, Landroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object v0

    .line 111
    .local v0, "keyValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
