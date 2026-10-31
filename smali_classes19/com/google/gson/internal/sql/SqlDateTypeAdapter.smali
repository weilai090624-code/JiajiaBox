.class final Lcom/google/gson/internal/sql/SqlDateTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SqlDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/sql/SqlDateTypeAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/gson/internal/sql/SqlDateTypeAdapter$1;

    .line 39
    invoke-direct {p0}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/sql/Date;
    .registers 7
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 56
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "s":Ljava/lang/String;
    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_12} :catch_26

    .line 63
    :try_start_12
    iget-object v1, p0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 64
    .local v1, "utilDate":Ljava/util/Date;
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_23

    .line 65
    :try_start_19
    new-instance v2, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_22} :catch_26

    return-object v2

    .line 64
    .end local v1    # "utilDate":Ljava/util/Date;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .end local v0    # "s":Ljava/lang/String;
    .end local p1    # "in":Lcom/google/gson/stream/JsonReader;
    :try_start_25
    throw v1
    :try_end_26
    .catch Ljava/text/ParseException; {:try_start_25 .. :try_end_26} :catch_26

    .line 66
    .restart local v0    # "s":Ljava/lang/String;
    .restart local p1    # "in":Lcom/google/gson/stream/JsonReader;
    :catch_26
    move-exception v1

    .line 67
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as SQL Date; at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/sql/Date;)V
    .registers 4
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-nez p2, :cond_6

    .line 74
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 75
    return-void

    .line 78
    :cond_6
    monitor-enter p0

    .line 79
    :try_start_7
    iget-object v0, p0, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "dateString":Ljava/lang/String;
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 81
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 82
    return-void

    .line 80
    .end local v0    # "dateString":Ljava/lang/String;
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method
