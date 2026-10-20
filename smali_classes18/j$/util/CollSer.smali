.class final Lj$/util/CollSer;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final IMM_LIST:I = 0x1

.field static final IMM_MAP:I = 0x3

.field static final IMM_SET:I = 0x2

.field private static final serialVersionUID:J = 0x578eabb63a1ba811L


# instance fields
.field private transient array:[Ljava/lang/Object;

.field private final tag:I


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "a"    # [Ljava/lang/Object;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput p1, p0, Lj$/util/CollSer;->tag:I

    .line 1042
    iput-object p2, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    .line 1043
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;

    .line 1060
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1061
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1063
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 1069
    new-array v1, v0, [Ljava/lang/Object;

    .line 1070
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1071
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1070
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1074
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    .line 1075
    return-void

    .line 1064
    .end local v1    # "a":[Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .line 1117
    :try_start_0
    iget-object v0, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1123
    iget v0, p0, Lj$/util/CollSer;->tag:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1137
    new-instance v0, Ljava/io/InvalidObjectException;

    goto :goto_0

    .line 1129
    :pswitch_0
    iget-object v0, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1130
    invoke-static {}, Lj$/util/ImmutableCollections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1131
    :cond_0
    iget-object v0, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1132
    new-instance v0, Lj$/util/ImmutableCollections$Map1;

    iget-object v3, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v1, v3, v1

    iget-object v3, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-direct {v0, v1, v2}, Lj$/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1134
    :cond_1
    new-instance v0, Lj$/util/ImmutableCollections$MapN;

    iget-object v1, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lj$/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 1127
    :pswitch_1
    iget-object v0, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/CollSer$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1125
    :pswitch_2
    iget-object v0, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1137
    :goto_0
    const-string v3, "invalid flags 0x%x"

    iget v4, p0, Lj$/util/CollSer;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1140
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_1
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v1, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1142
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;

    .line 1090
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1091
    iget-object v0, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1092
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1093
    iget-object v1, p0, Lj$/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
