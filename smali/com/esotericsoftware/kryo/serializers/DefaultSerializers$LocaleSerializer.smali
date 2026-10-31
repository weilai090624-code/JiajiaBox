.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# static fields
.field public static final SPAIN:Ljava/util/Locale;

.field public static final SPANISH:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 768
    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->SPANISH:Ljava/util/Locale;

    .line 769
    new-instance v0, Ljava/util/Locale;

    const-string v3, "ES"

    invoke-direct {v0, v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->SPAIN:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 766
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    return-void
.end method

.method protected static isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 823
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 824
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 823
    :goto_21
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 773
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 774
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-static {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 777
    :cond_b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v0, v1, :cond_1a

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object v1

    .line 779
    :cond_1a
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v1

    .line 780
    :cond_25
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    return-object v1

    .line 781
    :cond_30
    sget-object v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->SPANISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->SPANISH:Ljava/util/Locale;

    return-object v1

    .line 782
    :cond_3b
    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    return-object v1

    .line 783
    :cond_46
    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    return-object v1

    .line 784
    :cond_51
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    return-object v1

    .line 785
    :cond_5c
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    return-object v1

    .line 786
    :cond_67
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object v1

    .line 787
    :cond_72
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    return-object v1

    .line 788
    :cond_7d
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v1

    .line 790
    :cond_88
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    return-object v1

    .line 791
    :cond_93
    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    return-object v1

    .line 792
    :cond_9e
    sget-object v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->SPAIN:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    sget-object v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->SPAIN:Ljava/util/Locale;

    return-object v1

    .line 793
    :cond_a9
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    return-object v1

    .line 794
    :cond_b4
    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    return-object v1

    .line 795
    :cond_bf
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object v1

    .line 796
    :cond_ca
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object v1

    .line 803
    :cond_d5
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    return-object v1

    .line 804
    :cond_e0
    sget-object v1, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-static {v1, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->isSameLocale(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    sget-object v1, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    return-object v1

    .line 806
    :cond_eb
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 766
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Locale;
    .registers 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 816
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Locale;>;"
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "variant":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .registers 4

    .line 766
    check-cast p3, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Locale;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Locale;)V
    .registers 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "l"    # Ljava/util/Locale;

    .line 810
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 813
    return-void
.end method
