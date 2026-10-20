.class public final Lj$/time/chrono/HijrahChronology;
.super Lj$/time/chrono/AbstractChronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lj$/time/chrono/HijrahChronology;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# instance fields
.field private final transient calendarType:Ljava/lang/String;

.field private transient hijrahEpochMonthStartDays:[I

.field private transient hijrahStartEpochMonth:I

.field private volatile transient initComplete:Z

.field private transient maxEpochDay:I

.field private transient maxMonthLength:I

.field private transient maxYearLength:I

.field private transient minEpochDay:I

.field private transient minMonthLength:I

.field private transient minYearLength:I

.field private final transient typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 269
    new-instance v0, Lj$/time/chrono/HijrahChronology;

    const-string v1, "Hijrah-umalqura"

    const-string v2, "islamic-umalqura"

    invoke-direct {v0, v1, v2}, Lj$/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    .line 271
    sget-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    const-string v1, "Hijrah"

    invoke-static {v0, v1}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;Ljava/lang/String;)Lj$/time/chrono/Chronology;

    .line 272
    sget-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    const-string v1, "islamic"

    invoke-static {v0, v1}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;Ljava/lang/String;)Lj$/time/chrono/Chronology;

    .line 273
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "calType"    # Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Lj$/time/chrono/AbstractChronology;-><init>()V

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iput-object p1, p0, Lj$/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lj$/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    .line 291
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar typeId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar id is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCalendarInit()V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lj$/time/chrono/HijrahChronology;->initComplete:Z

    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0}, Lj$/time/chrono/HijrahChronology;->loadCalendarData()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/time/chrono/HijrahChronology;->initComplete:Z

    .line 311
    :cond_0
    return-void
.end method

.method private createEpochMonths(IIILjava/util/Map;)[I
    .locals 10
    .param p1, "epochDay"    # I
    .param p2, "minYear"    # I
    .param p3, "maxYear"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;)[I"
        }
    .end annotation

    .line 942
    .local p4, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    .line 945
    .local v0, "numMonths":I
    const/4 v2, 0x0

    .line 946
    .local v2, "epochMonth":I
    new-array v3, v0, [I

    .line 947
    .local v3, "epochMonths":[I
    const v4, 0x7fffffff

    iput v4, p0, Lj$/time/chrono/HijrahChronology;->minMonthLength:I

    .line 948
    const/high16 v4, -0x80000000

    iput v4, p0, Lj$/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 951
    move v4, p2

    .local v4, "year":I
    :goto_0
    if-gt v4, p3, :cond_2

    .line 952
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 953
    .local v5, "months":[I
    const/4 v6, 0x0

    .local v6, "month":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 954
    aget v7, v5, v6

    .line 955
    .local v7, "length":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "epochMonth":I
    .local v8, "epochMonth":I
    aput p1, v3, v2

    .line 957
    const/16 v2, 0x1d

    if-lt v7, v2, :cond_0

    const/16 v2, 0x20

    if-gt v7, v2, :cond_0

    .line 960
    add-int/2addr p1, v7

    .line 961
    iget v2, p0, Lj$/time/chrono/HijrahChronology;->minMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lj$/time/chrono/HijrahChronology;->minMonthLength:I

    .line 962
    iget v2, p0, Lj$/time/chrono/HijrahChronology;->maxMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lj$/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 953
    .end local v7    # "length":I
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_1

    .line 958
    .restart local v7    # "length":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid month length in year: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 951
    .end local v5    # "months":[I
    .end local v6    # "month":I
    .end local v7    # "length":I
    .end local v8    # "epochMonth":I
    .restart local v2    # "epochMonth":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 967
    .end local v4    # "year":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "epochMonth":I
    .local v1, "epochMonth":I
    aput p1, v3, v2

    .line 969
    array-length v2, v3

    if-ne v1, v2, :cond_3

    .line 974
    return-object v3

    .line 970
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    array-length v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not fill epochMonths exactly: ndx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " should be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private epochDayToEpochMonth(I)I
    .locals 2
    .param p1, "epochDay"    # I

    .line 716
    iget-object v0, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 717
    .local v0, "ndx":I
    if-gez v0, :cond_0

    .line 718
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 720
    :cond_0
    return v0
.end method

.method private epochMonthLength(I)I
    .locals 2
    .param p1, "epochMonth"    # I

    .line 786
    iget-object v0, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private epochMonthToEpochDay(I)I
    .locals 1
    .param p1, "epochMonth"    # I

    .line 760
    iget-object v0, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v0, v0, p1

    return v0
.end method

.method private epochMonthToMonth(I)I
    .locals 1
    .param p1, "epochMonth"    # I

    .line 750
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private epochMonthToYear(I)I
    .locals 1
    .param p1, "epochMonth"    # I

    .line 730
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private static hijrahUmalquraMonthLengths()[[I
    .locals 303

    .line 1029
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    new-array v5, v0, [I

    fill-array-data v5, :array_4

    new-array v6, v0, [I

    fill-array-data v6, :array_5

    new-array v7, v0, [I

    fill-array-data v7, :array_6

    new-array v8, v0, [I

    fill-array-data v8, :array_7

    new-array v9, v0, [I

    fill-array-data v9, :array_8

    new-array v10, v0, [I

    fill-array-data v10, :array_9

    new-array v11, v0, [I

    fill-array-data v11, :array_a

    new-array v12, v0, [I

    fill-array-data v12, :array_b

    new-array v13, v0, [I

    fill-array-data v13, :array_c

    new-array v14, v0, [I

    fill-array-data v14, :array_d

    new-array v15, v0, [I

    fill-array-data v15, :array_e

    move-object/from16 v16, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f

    move-object/from16 v17, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10

    move-object/from16 v18, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11

    move-object/from16 v19, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12

    move-object/from16 v20, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_13

    move-object/from16 v21, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_14

    move-object/from16 v22, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_15

    move-object/from16 v23, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_16

    move-object/from16 v24, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_17

    move-object/from16 v25, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_18

    move-object/from16 v26, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_19

    move-object/from16 v27, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1a

    move-object/from16 v28, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1b

    move-object/from16 v29, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1c

    move-object/from16 v30, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1d

    move-object/from16 v31, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1e

    move-object/from16 v32, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_1f

    move-object/from16 v33, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_20

    move-object/from16 v34, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_21

    move-object/from16 v35, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_22

    move-object/from16 v36, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_23

    move-object/from16 v37, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_24

    move-object/from16 v38, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_25

    move-object/from16 v39, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_26

    move-object/from16 v40, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_27

    move-object/from16 v41, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_28

    move-object/from16 v42, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_29

    move-object/from16 v43, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2a

    move-object/from16 v44, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2b

    move-object/from16 v45, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2c

    move-object/from16 v46, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2d

    move-object/from16 v47, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2e

    move-object/from16 v48, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_2f

    move-object/from16 v49, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_30

    move-object/from16 v50, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_31

    move-object/from16 v51, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_32

    move-object/from16 v52, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_33

    move-object/from16 v53, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_34

    move-object/from16 v54, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_35

    move-object/from16 v55, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_36

    move-object/from16 v56, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_37

    move-object/from16 v57, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_38

    move-object/from16 v58, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_39

    move-object/from16 v59, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_3a

    move-object/from16 v60, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_3b

    move-object/from16 v61, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_3c

    move-object/from16 v62, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_3d

    move-object/from16 v63, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_3e

    move-object/from16 v64, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_3f

    move-object/from16 v65, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_40

    move-object/from16 v66, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_41

    move-object/from16 v67, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_42

    move-object/from16 v68, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_43

    move-object/from16 v69, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_44

    move-object/from16 v70, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_45

    move-object/from16 v71, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_46

    move-object/from16 v72, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_47

    move-object/from16 v73, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_48

    move-object/from16 v74, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_49

    move-object/from16 v75, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_4a

    move-object/from16 v76, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_4b

    move-object/from16 v77, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_4c

    move-object/from16 v78, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_4d

    move-object/from16 v79, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_4e

    move-object/from16 v80, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_4f

    move-object/from16 v81, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_50

    move-object/from16 v82, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_51

    move-object/from16 v83, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_52

    move-object/from16 v84, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_53

    move-object/from16 v85, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_54

    move-object/from16 v86, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_55

    move-object/from16 v87, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_56

    move-object/from16 v88, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_57

    move-object/from16 v89, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_58

    move-object/from16 v90, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_59

    move-object/from16 v91, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_5a

    move-object/from16 v92, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_5b

    move-object/from16 v93, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_5c

    move-object/from16 v94, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_5d

    move-object/from16 v95, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_5e

    move-object/from16 v96, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_5f

    move-object/from16 v97, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_60

    move-object/from16 v98, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_61

    move-object/from16 v99, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_62

    move-object/from16 v100, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_63

    move-object/from16 v101, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_64

    move-object/from16 v102, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_65

    move-object/from16 v103, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_66

    move-object/from16 v104, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_67

    move-object/from16 v105, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_68

    move-object/from16 v106, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_69

    move-object/from16 v107, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_6a

    move-object/from16 v108, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_6b

    move-object/from16 v109, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_6c

    move-object/from16 v110, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_6d

    move-object/from16 v111, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_6e

    move-object/from16 v112, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_6f

    move-object/from16 v113, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_70

    move-object/from16 v114, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_71

    move-object/from16 v115, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_72

    move-object/from16 v116, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_73

    move-object/from16 v117, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_74

    move-object/from16 v118, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_75

    move-object/from16 v119, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_76

    move-object/from16 v120, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_77

    move-object/from16 v121, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_78

    move-object/from16 v122, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_79

    move-object/from16 v123, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_7a

    move-object/from16 v124, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_7b

    move-object/from16 v125, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_7c

    move-object/from16 v126, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_7d

    move-object/from16 v127, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_7e

    move-object/from16 v128, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_7f

    move-object/from16 v129, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_80

    move-object/from16 v130, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_81

    move-object/from16 v131, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_82

    move-object/from16 v132, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_83

    move-object/from16 v133, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_84

    move-object/from16 v134, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_85

    move-object/from16 v135, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_86

    move-object/from16 v136, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_87

    move-object/from16 v137, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_88

    move-object/from16 v138, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_89

    move-object/from16 v139, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_8a

    move-object/from16 v140, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_8b

    move-object/from16 v141, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_8c

    move-object/from16 v142, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_8d

    move-object/from16 v143, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_8e

    move-object/from16 v144, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_8f

    move-object/from16 v145, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_90

    move-object/from16 v146, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_91

    move-object/from16 v147, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_92

    move-object/from16 v148, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_93

    move-object/from16 v149, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_94

    move-object/from16 v150, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_95

    move-object/from16 v151, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_96

    move-object/from16 v152, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_97

    move-object/from16 v153, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_98

    move-object/from16 v154, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_99

    move-object/from16 v155, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_9a

    move-object/from16 v156, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_9b

    move-object/from16 v157, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_9c

    move-object/from16 v158, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_9d

    move-object/from16 v159, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_9e

    move-object/from16 v160, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_9f

    move-object/from16 v161, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a0

    move-object/from16 v162, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a1

    move-object/from16 v163, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a2

    move-object/from16 v164, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a3

    move-object/from16 v165, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a4

    move-object/from16 v166, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a5

    move-object/from16 v167, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a6

    move-object/from16 v168, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a7

    move-object/from16 v169, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a8

    move-object/from16 v170, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_a9

    move-object/from16 v171, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_aa

    move-object/from16 v172, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ab

    move-object/from16 v173, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ac

    move-object/from16 v174, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ad

    move-object/from16 v175, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ae

    move-object/from16 v176, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_af

    move-object/from16 v177, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b0

    move-object/from16 v178, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b1

    move-object/from16 v179, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b2

    move-object/from16 v180, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b3

    move-object/from16 v181, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b4

    move-object/from16 v182, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b5

    move-object/from16 v183, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b6

    move-object/from16 v184, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b7

    move-object/from16 v185, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b8

    move-object/from16 v186, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_b9

    move-object/from16 v187, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ba

    move-object/from16 v188, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_bb

    move-object/from16 v189, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_bc

    move-object/from16 v190, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_bd

    move-object/from16 v191, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_be

    move-object/from16 v192, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_bf

    move-object/from16 v193, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c0

    move-object/from16 v194, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c1

    move-object/from16 v195, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c2

    move-object/from16 v196, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c3

    move-object/from16 v197, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c4

    move-object/from16 v198, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c5

    move-object/from16 v199, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c6

    move-object/from16 v200, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c7

    move-object/from16 v201, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c8

    move-object/from16 v202, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_c9

    move-object/from16 v203, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ca

    move-object/from16 v204, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_cb

    move-object/from16 v205, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_cc

    move-object/from16 v206, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_cd

    move-object/from16 v207, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ce

    move-object/from16 v208, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_cf

    move-object/from16 v209, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d0

    move-object/from16 v210, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d1

    move-object/from16 v211, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d2

    move-object/from16 v212, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d3

    move-object/from16 v213, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d4

    move-object/from16 v214, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d5

    move-object/from16 v215, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d6

    move-object/from16 v216, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d7

    move-object/from16 v217, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d8

    move-object/from16 v218, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_d9

    move-object/from16 v219, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_da

    move-object/from16 v220, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_db

    move-object/from16 v221, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_dc

    move-object/from16 v222, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_dd

    move-object/from16 v223, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_de

    move-object/from16 v224, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_df

    move-object/from16 v225, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e0

    move-object/from16 v226, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e1

    move-object/from16 v227, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e2

    move-object/from16 v228, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e3

    move-object/from16 v229, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e4

    move-object/from16 v230, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e5

    move-object/from16 v231, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e6

    move-object/from16 v232, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e7

    move-object/from16 v233, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e8

    move-object/from16 v234, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_e9

    move-object/from16 v235, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ea

    move-object/from16 v236, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_eb

    move-object/from16 v237, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ec

    move-object/from16 v238, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ed

    move-object/from16 v239, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ee

    move-object/from16 v240, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ef

    move-object/from16 v241, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f0

    move-object/from16 v242, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f1

    move-object/from16 v243, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f2

    move-object/from16 v244, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f3

    move-object/from16 v245, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f4

    move-object/from16 v246, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f5

    move-object/from16 v247, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f6

    move-object/from16 v248, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f7

    move-object/from16 v249, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f8

    move-object/from16 v250, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_f9

    move-object/from16 v251, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fa

    move-object/from16 v252, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fb

    move-object/from16 v253, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fc

    move-object/from16 v254, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fd

    move-object/from16 v255, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_fe

    move-object/16 v256, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_ff

    move-object/16 v257, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_100

    move-object/16 v258, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_101

    move-object/16 v259, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_102

    move-object/16 v260, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_103

    move-object/16 v261, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_104

    move-object/16 v262, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_105

    move-object/16 v263, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_106

    move-object/16 v264, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_107

    move-object/16 v265, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_108

    move-object/16 v266, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_109

    move-object/16 v267, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10a

    move-object/16 v268, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10b

    move-object/16 v269, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10c

    move-object/16 v270, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10d

    move-object/16 v271, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10e

    move-object/16 v272, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_10f

    move-object/16 v273, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_110

    move-object/16 v274, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_111

    move-object/16 v275, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_112

    move-object/16 v276, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_113

    move-object/16 v277, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_114

    move-object/16 v278, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_115

    move-object/16 v279, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_116

    move-object/16 v280, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_117

    move-object/16 v281, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_118

    move-object/16 v282, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_119

    move-object/16 v283, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11a

    move-object/16 v284, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11b

    move-object/16 v285, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11c

    move-object/16 v286, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11d

    move-object/16 v287, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11e

    move-object/16 v288, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_11f

    move-object/16 v289, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_120

    move-object/16 v290, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_121

    move-object/16 v291, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_122

    move-object/16 v292, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_123

    move-object/16 v293, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_124

    move-object/16 v294, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_125

    move-object/16 v295, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_126

    move-object/16 v296, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_127

    move-object/16 v297, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_128

    move-object/16 v298, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_129

    move-object/16 v299, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12a

    move-object/16 v300, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12b

    move-object/16 v301, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_12c

    const/16 v0, 0x12d

    new-array v0, v0, [[I

    move-object/16 v302, v15

    const/4 v15, 0x0

    aput-object v1, v0, v15

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    aput-object v16, v0, v1

    const/16 v1, 0xf

    aput-object v17, v0, v1

    const/16 v1, 0x10

    aput-object v18, v0, v1

    const/16 v1, 0x11

    aput-object v19, v0, v1

    const/16 v1, 0x12

    aput-object v20, v0, v1

    const/16 v1, 0x13

    aput-object v21, v0, v1

    const/16 v1, 0x14

    aput-object v22, v0, v1

    const/16 v1, 0x15

    aput-object v23, v0, v1

    const/16 v1, 0x16

    aput-object v24, v0, v1

    const/16 v1, 0x17

    aput-object v25, v0, v1

    const/16 v1, 0x18

    aput-object v26, v0, v1

    const/16 v1, 0x19

    aput-object v27, v0, v1

    const/16 v1, 0x1a

    aput-object v28, v0, v1

    const/16 v1, 0x1b

    aput-object v29, v0, v1

    const/16 v1, 0x1c

    aput-object v30, v0, v1

    const/16 v1, 0x1d

    aput-object v31, v0, v1

    const/16 v1, 0x1e

    aput-object v32, v0, v1

    const/16 v1, 0x1f

    aput-object v33, v0, v1

    const/16 v1, 0x20

    aput-object v34, v0, v1

    const/16 v1, 0x21

    aput-object v35, v0, v1

    const/16 v1, 0x22

    aput-object v36, v0, v1

    const/16 v1, 0x23

    aput-object v37, v0, v1

    const/16 v1, 0x24

    aput-object v38, v0, v1

    const/16 v1, 0x25

    aput-object v39, v0, v1

    const/16 v1, 0x26

    aput-object v40, v0, v1

    const/16 v1, 0x27

    aput-object v41, v0, v1

    const/16 v1, 0x28

    aput-object v42, v0, v1

    const/16 v1, 0x29

    aput-object v43, v0, v1

    const/16 v1, 0x2a

    aput-object v44, v0, v1

    const/16 v1, 0x2b

    aput-object v45, v0, v1

    const/16 v1, 0x2c

    aput-object v46, v0, v1

    const/16 v1, 0x2d

    aput-object v47, v0, v1

    const/16 v1, 0x2e

    aput-object v48, v0, v1

    const/16 v1, 0x2f

    aput-object v49, v0, v1

    const/16 v1, 0x30

    aput-object v50, v0, v1

    const/16 v1, 0x31

    aput-object v51, v0, v1

    const/16 v1, 0x32

    aput-object v52, v0, v1

    const/16 v1, 0x33

    aput-object v53, v0, v1

    const/16 v1, 0x34

    aput-object v54, v0, v1

    const/16 v1, 0x35

    aput-object v55, v0, v1

    const/16 v1, 0x36

    aput-object v56, v0, v1

    const/16 v1, 0x37

    aput-object v57, v0, v1

    const/16 v1, 0x38

    aput-object v58, v0, v1

    const/16 v1, 0x39

    aput-object v59, v0, v1

    const/16 v1, 0x3a

    aput-object v60, v0, v1

    const/16 v1, 0x3b

    aput-object v61, v0, v1

    const/16 v1, 0x3c

    aput-object v62, v0, v1

    const/16 v1, 0x3d

    aput-object v63, v0, v1

    const/16 v1, 0x3e

    aput-object v64, v0, v1

    const/16 v1, 0x3f

    aput-object v65, v0, v1

    const/16 v1, 0x40

    aput-object v66, v0, v1

    const/16 v1, 0x41

    aput-object v67, v0, v1

    const/16 v1, 0x42

    aput-object v68, v0, v1

    const/16 v1, 0x43

    aput-object v69, v0, v1

    const/16 v1, 0x44

    aput-object v70, v0, v1

    const/16 v1, 0x45

    aput-object v71, v0, v1

    const/16 v1, 0x46

    aput-object v72, v0, v1

    const/16 v1, 0x47

    aput-object v73, v0, v1

    const/16 v1, 0x48

    aput-object v74, v0, v1

    const/16 v1, 0x49

    aput-object v75, v0, v1

    const/16 v1, 0x4a

    aput-object v76, v0, v1

    const/16 v1, 0x4b

    aput-object v77, v0, v1

    const/16 v1, 0x4c

    aput-object v78, v0, v1

    const/16 v1, 0x4d

    aput-object v79, v0, v1

    const/16 v1, 0x4e

    aput-object v80, v0, v1

    const/16 v1, 0x4f

    aput-object v81, v0, v1

    const/16 v1, 0x50

    aput-object v82, v0, v1

    const/16 v1, 0x51

    aput-object v83, v0, v1

    const/16 v1, 0x52

    aput-object v84, v0, v1

    const/16 v1, 0x53

    aput-object v85, v0, v1

    const/16 v1, 0x54

    aput-object v86, v0, v1

    const/16 v1, 0x55

    aput-object v87, v0, v1

    const/16 v1, 0x56

    aput-object v88, v0, v1

    const/16 v1, 0x57

    aput-object v89, v0, v1

    const/16 v1, 0x58

    aput-object v90, v0, v1

    const/16 v1, 0x59

    aput-object v91, v0, v1

    const/16 v1, 0x5a

    aput-object v92, v0, v1

    const/16 v1, 0x5b

    aput-object v93, v0, v1

    const/16 v1, 0x5c

    aput-object v94, v0, v1

    const/16 v1, 0x5d

    aput-object v95, v0, v1

    const/16 v1, 0x5e

    aput-object v96, v0, v1

    const/16 v1, 0x5f

    aput-object v97, v0, v1

    const/16 v1, 0x60

    aput-object v98, v0, v1

    const/16 v1, 0x61

    aput-object v99, v0, v1

    const/16 v1, 0x62

    aput-object v100, v0, v1

    const/16 v1, 0x63

    aput-object v101, v0, v1

    const/16 v1, 0x64

    aput-object v102, v0, v1

    const/16 v1, 0x65

    aput-object v103, v0, v1

    const/16 v1, 0x66

    aput-object v104, v0, v1

    const/16 v1, 0x67

    aput-object v105, v0, v1

    const/16 v1, 0x68

    aput-object v106, v0, v1

    const/16 v1, 0x69

    aput-object v107, v0, v1

    const/16 v1, 0x6a

    aput-object v108, v0, v1

    const/16 v1, 0x6b

    aput-object v109, v0, v1

    const/16 v1, 0x6c

    aput-object v110, v0, v1

    const/16 v1, 0x6d

    aput-object v111, v0, v1

    const/16 v1, 0x6e

    aput-object v112, v0, v1

    const/16 v1, 0x6f

    aput-object v113, v0, v1

    const/16 v1, 0x70

    aput-object v114, v0, v1

    const/16 v1, 0x71

    aput-object v115, v0, v1

    const/16 v1, 0x72

    aput-object v116, v0, v1

    const/16 v1, 0x73

    aput-object v117, v0, v1

    const/16 v1, 0x74

    aput-object v118, v0, v1

    const/16 v1, 0x75

    aput-object v119, v0, v1

    const/16 v1, 0x76

    aput-object v120, v0, v1

    const/16 v1, 0x77

    aput-object v121, v0, v1

    const/16 v1, 0x78

    aput-object v122, v0, v1

    const/16 v1, 0x79

    aput-object v123, v0, v1

    const/16 v1, 0x7a

    aput-object v124, v0, v1

    const/16 v1, 0x7b

    aput-object v125, v0, v1

    const/16 v1, 0x7c

    aput-object v126, v0, v1

    const/16 v1, 0x7d

    aput-object v127, v0, v1

    const/16 v1, 0x7e

    aput-object v128, v0, v1

    const/16 v1, 0x7f

    aput-object v129, v0, v1

    const/16 v1, 0x80

    aput-object v130, v0, v1

    const/16 v1, 0x81

    aput-object v131, v0, v1

    const/16 v1, 0x82

    aput-object v132, v0, v1

    const/16 v1, 0x83

    aput-object v133, v0, v1

    const/16 v1, 0x84

    aput-object v134, v0, v1

    const/16 v1, 0x85

    aput-object v135, v0, v1

    const/16 v1, 0x86

    aput-object v136, v0, v1

    const/16 v1, 0x87

    aput-object v137, v0, v1

    const/16 v1, 0x88

    aput-object v138, v0, v1

    const/16 v1, 0x89

    aput-object v139, v0, v1

    const/16 v1, 0x8a

    aput-object v140, v0, v1

    const/16 v1, 0x8b

    aput-object v141, v0, v1

    const/16 v1, 0x8c

    aput-object v142, v0, v1

    const/16 v1, 0x8d

    aput-object v143, v0, v1

    const/16 v1, 0x8e

    aput-object v144, v0, v1

    const/16 v1, 0x8f

    aput-object v145, v0, v1

    const/16 v1, 0x90

    aput-object v146, v0, v1

    const/16 v1, 0x91

    aput-object v147, v0, v1

    const/16 v1, 0x92

    aput-object v148, v0, v1

    const/16 v1, 0x93

    aput-object v149, v0, v1

    const/16 v1, 0x94

    aput-object v150, v0, v1

    const/16 v1, 0x95

    aput-object v151, v0, v1

    const/16 v1, 0x96

    aput-object v152, v0, v1

    const/16 v1, 0x97

    aput-object v153, v0, v1

    const/16 v1, 0x98

    aput-object v154, v0, v1

    const/16 v1, 0x99

    aput-object v155, v0, v1

    const/16 v1, 0x9a

    aput-object v156, v0, v1

    const/16 v1, 0x9b

    aput-object v157, v0, v1

    const/16 v1, 0x9c

    aput-object v158, v0, v1

    const/16 v1, 0x9d

    aput-object v159, v0, v1

    const/16 v1, 0x9e

    aput-object v160, v0, v1

    const/16 v1, 0x9f

    aput-object v161, v0, v1

    const/16 v1, 0xa0

    aput-object v162, v0, v1

    const/16 v1, 0xa1

    aput-object v163, v0, v1

    const/16 v1, 0xa2

    aput-object v164, v0, v1

    const/16 v1, 0xa3

    aput-object v165, v0, v1

    const/16 v1, 0xa4

    aput-object v166, v0, v1

    const/16 v1, 0xa5

    aput-object v167, v0, v1

    const/16 v1, 0xa6

    aput-object v168, v0, v1

    const/16 v1, 0xa7

    aput-object v169, v0, v1

    const/16 v1, 0xa8

    aput-object v170, v0, v1

    const/16 v1, 0xa9

    aput-object v171, v0, v1

    const/16 v1, 0xaa

    aput-object v172, v0, v1

    const/16 v1, 0xab

    aput-object v173, v0, v1

    const/16 v1, 0xac

    aput-object v174, v0, v1

    const/16 v1, 0xad

    aput-object v175, v0, v1

    const/16 v1, 0xae

    aput-object v176, v0, v1

    const/16 v1, 0xaf

    aput-object v177, v0, v1

    const/16 v1, 0xb0

    aput-object v178, v0, v1

    const/16 v1, 0xb1

    aput-object v179, v0, v1

    const/16 v1, 0xb2

    aput-object v180, v0, v1

    const/16 v1, 0xb3

    aput-object v181, v0, v1

    const/16 v1, 0xb4

    aput-object v182, v0, v1

    const/16 v1, 0xb5

    aput-object v183, v0, v1

    const/16 v1, 0xb6

    aput-object v184, v0, v1

    const/16 v1, 0xb7

    aput-object v185, v0, v1

    const/16 v1, 0xb8

    aput-object v186, v0, v1

    const/16 v1, 0xb9

    aput-object v187, v0, v1

    const/16 v1, 0xba

    aput-object v188, v0, v1

    const/16 v1, 0xbb

    aput-object v189, v0, v1

    const/16 v1, 0xbc

    aput-object v190, v0, v1

    const/16 v1, 0xbd

    aput-object v191, v0, v1

    const/16 v1, 0xbe

    aput-object v192, v0, v1

    const/16 v1, 0xbf

    aput-object v193, v0, v1

    const/16 v1, 0xc0

    aput-object v194, v0, v1

    const/16 v1, 0xc1

    aput-object v195, v0, v1

    const/16 v1, 0xc2

    aput-object v196, v0, v1

    const/16 v1, 0xc3

    aput-object v197, v0, v1

    const/16 v1, 0xc4

    aput-object v198, v0, v1

    const/16 v1, 0xc5

    aput-object v199, v0, v1

    const/16 v1, 0xc6

    aput-object v200, v0, v1

    const/16 v1, 0xc7

    aput-object v201, v0, v1

    const/16 v1, 0xc8

    aput-object v202, v0, v1

    const/16 v1, 0xc9

    aput-object v203, v0, v1

    const/16 v1, 0xca

    aput-object v204, v0, v1

    const/16 v1, 0xcb

    aput-object v205, v0, v1

    const/16 v1, 0xcc

    aput-object v206, v0, v1

    const/16 v1, 0xcd

    aput-object v207, v0, v1

    const/16 v1, 0xce

    aput-object v208, v0, v1

    const/16 v1, 0xcf

    aput-object v209, v0, v1

    const/16 v1, 0xd0

    aput-object v210, v0, v1

    const/16 v1, 0xd1

    aput-object v211, v0, v1

    const/16 v1, 0xd2

    aput-object v212, v0, v1

    const/16 v1, 0xd3

    aput-object v213, v0, v1

    const/16 v1, 0xd4

    aput-object v214, v0, v1

    const/16 v1, 0xd5

    aput-object v215, v0, v1

    const/16 v1, 0xd6

    aput-object v216, v0, v1

    const/16 v1, 0xd7

    aput-object v217, v0, v1

    const/16 v1, 0xd8

    aput-object v218, v0, v1

    const/16 v1, 0xd9

    aput-object v219, v0, v1

    const/16 v1, 0xda

    aput-object v220, v0, v1

    const/16 v1, 0xdb

    aput-object v221, v0, v1

    const/16 v1, 0xdc

    aput-object v222, v0, v1

    const/16 v1, 0xdd

    aput-object v223, v0, v1

    const/16 v1, 0xde

    aput-object v224, v0, v1

    const/16 v1, 0xdf

    aput-object v225, v0, v1

    const/16 v1, 0xe0

    aput-object v226, v0, v1

    const/16 v1, 0xe1

    aput-object v227, v0, v1

    const/16 v1, 0xe2

    aput-object v228, v0, v1

    const/16 v1, 0xe3

    aput-object v229, v0, v1

    const/16 v1, 0xe4

    aput-object v230, v0, v1

    const/16 v1, 0xe5

    aput-object v231, v0, v1

    const/16 v1, 0xe6

    aput-object v232, v0, v1

    const/16 v1, 0xe7

    aput-object v233, v0, v1

    const/16 v1, 0xe8

    aput-object v234, v0, v1

    const/16 v1, 0xe9

    aput-object v235, v0, v1

    const/16 v1, 0xea

    aput-object v236, v0, v1

    const/16 v1, 0xeb

    aput-object v237, v0, v1

    const/16 v1, 0xec

    aput-object v238, v0, v1

    const/16 v1, 0xed

    aput-object v239, v0, v1

    const/16 v1, 0xee

    aput-object v240, v0, v1

    const/16 v1, 0xef

    aput-object v241, v0, v1

    const/16 v1, 0xf0

    aput-object v242, v0, v1

    const/16 v1, 0xf1

    aput-object v243, v0, v1

    const/16 v1, 0xf2

    aput-object v244, v0, v1

    const/16 v1, 0xf3

    aput-object v245, v0, v1

    const/16 v1, 0xf4

    aput-object v246, v0, v1

    const/16 v1, 0xf5

    aput-object v247, v0, v1

    const/16 v1, 0xf6

    aput-object v248, v0, v1

    const/16 v1, 0xf7

    aput-object v249, v0, v1

    const/16 v1, 0xf8

    aput-object v250, v0, v1

    const/16 v1, 0xf9

    aput-object v251, v0, v1

    const/16 v1, 0xfa

    aput-object v252, v0, v1

    const/16 v1, 0xfb

    aput-object v253, v0, v1

    const/16 v1, 0xfc

    aput-object v254, v0, v1

    const/16 v1, 0xfd

    aput-object v255, v0, v1

    const/16 v1, 0xfe

    move-object/from16 v2, v256

    aput-object v2, v0, v1

    const/16 v1, 0xff

    move-object/from16 v2, v257

    aput-object v2, v0, v1

    const/16 v1, 0x100

    move-object/from16 v2, v258

    aput-object v2, v0, v1

    const/16 v1, 0x101

    move-object/from16 v2, v259

    aput-object v2, v0, v1

    const/16 v1, 0x102

    move-object/from16 v2, v260

    aput-object v2, v0, v1

    const/16 v1, 0x103

    move-object/from16 v2, v261

    aput-object v2, v0, v1

    const/16 v1, 0x104

    move-object/from16 v2, v262

    aput-object v2, v0, v1

    const/16 v1, 0x105

    move-object/from16 v2, v263

    aput-object v2, v0, v1

    const/16 v1, 0x106

    move-object/from16 v2, v264

    aput-object v2, v0, v1

    const/16 v1, 0x107

    move-object/from16 v2, v265

    aput-object v2, v0, v1

    const/16 v1, 0x108

    move-object/from16 v2, v266

    aput-object v2, v0, v1

    const/16 v1, 0x109

    move-object/from16 v2, v267

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    move-object/from16 v2, v268

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    move-object/from16 v2, v269

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    move-object/from16 v2, v270

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    move-object/from16 v2, v271

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    move-object/from16 v2, v272

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    move-object/from16 v2, v273

    aput-object v2, v0, v1

    const/16 v1, 0x110

    move-object/from16 v2, v274

    aput-object v2, v0, v1

    const/16 v1, 0x111

    move-object/from16 v2, v275

    aput-object v2, v0, v1

    const/16 v1, 0x112

    move-object/from16 v2, v276

    aput-object v2, v0, v1

    const/16 v1, 0x113

    move-object/from16 v2, v277

    aput-object v2, v0, v1

    const/16 v1, 0x114

    move-object/from16 v2, v278

    aput-object v2, v0, v1

    const/16 v1, 0x115

    move-object/from16 v2, v279

    aput-object v2, v0, v1

    const/16 v1, 0x116

    move-object/from16 v2, v280

    aput-object v2, v0, v1

    const/16 v1, 0x117

    move-object/from16 v2, v281

    aput-object v2, v0, v1

    const/16 v1, 0x118

    move-object/from16 v2, v282

    aput-object v2, v0, v1

    const/16 v1, 0x119

    move-object/from16 v2, v283

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    move-object/from16 v2, v284

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    move-object/from16 v2, v285

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    move-object/from16 v2, v286

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    move-object/from16 v2, v287

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    move-object/from16 v2, v288

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    move-object/from16 v2, v289

    aput-object v2, v0, v1

    const/16 v1, 0x120

    move-object/from16 v2, v290

    aput-object v2, v0, v1

    const/16 v1, 0x121

    move-object/from16 v2, v291

    aput-object v2, v0, v1

    const/16 v1, 0x122

    move-object/from16 v2, v292

    aput-object v2, v0, v1

    const/16 v1, 0x123

    move-object/from16 v2, v293

    aput-object v2, v0, v1

    const/16 v1, 0x124

    move-object/from16 v2, v294

    aput-object v2, v0, v1

    const/16 v1, 0x125

    move-object/from16 v2, v295

    aput-object v2, v0, v1

    const/16 v1, 0x126

    move-object/from16 v2, v296

    aput-object v2, v0, v1

    const/16 v1, 0x127

    move-object/from16 v2, v297

    aput-object v2, v0, v1

    const/16 v1, 0x128

    move-object/from16 v2, v298

    aput-object v2, v0, v1

    const/16 v1, 0x129

    move-object/from16 v2, v299

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    move-object/from16 v2, v300

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    move-object/from16 v2, v301

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    move-object/from16 v2, v302

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_1
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_5
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_6
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_7
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_8
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_9
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_b
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_f
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_10
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_14
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_15
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_16
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_17
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_18
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_19
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1a
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1b
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_1e
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_1f
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_20
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_21
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_22
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_23
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_24
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_25
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_26
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_27
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_28
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_29
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2a
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2b
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_2c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2d
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_2e
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_2f
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_30
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_31
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_32
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_33
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_34
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_35
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_36
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_37
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_38
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_39
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_3a
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_3b
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_3c
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_3d
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_3e
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_3f
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_40
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_41
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_42
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_43
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_44
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_45
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_46
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_47
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_48
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_49
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_4a
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_4b
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_4c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_4d
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_4e
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_4f
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_50
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_51
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_52
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_53
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_54
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_55
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_56
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_57
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_58
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_59
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_5a
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_5b
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_5c
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_5d
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_5e
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_5f
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_60
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_61
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_62
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_63
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_64
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_65
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_66
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_67
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_68
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_69
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_6a
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_6b
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_6c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_6d
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_6e
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_6f
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_70
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_71
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_72
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_73
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_74
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_75
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_76
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_77
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_78
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_79
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_7a
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_7b
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_7c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_7d
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_7e
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_7f
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_80
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_81
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_82
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_83
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_84
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_85
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_86
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_87
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_88
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_89
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_8a
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_8b
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_8c
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_8d
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_8e
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_8f
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_90
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_91
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_92
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_93
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_94
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_95
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_96
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_97
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_98
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_99
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_9a
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_9b
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_9c
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_9d
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_9e
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_9f
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_a0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_a1
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_a2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_a3
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_a4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_a5
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_a6
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_a7
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_a8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_a9
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_aa
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_ab
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_ac
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ad
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ae
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_af
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_b0
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_b1
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_b2
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_b3
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_b4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_b5
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_b6
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_b7
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_b8
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_b9
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ba
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_bb
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_bc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_bd
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_be
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_bf
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_c0
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_c1
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_c2
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_c3
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_c4
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_c5
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_c6
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_c7
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_c8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_c9
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_ca
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_cb
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_cc
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_cd
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_ce
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_cf
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_d0
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_d1
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_d2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_d3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_d4
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_d5
    .array-data 4
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_d6
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_d7
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_d8
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_d9
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_da
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_db
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_dc
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_dd
    .array-data 4
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_de
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_df
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_e0
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_e1
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_e2
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_e3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_e4
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_e5
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_e6
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_e7
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_e8
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_e9
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_ea
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_eb
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ec
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ed
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ee
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_ef
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_f0
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_f1
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_f2
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_f3
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_f4
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_f5
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_f6
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_f7
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_f8
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_f9
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_fa
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_fb
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_fc
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_fd
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_fe
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_ff
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_100
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_101
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_102
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_103
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_104
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_105
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_106
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_107
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_108
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_109
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_10a
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_10b
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_10c
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_10d
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_10e
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_10f
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_110
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_111
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_112
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_113
    .array-data 4
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
    .end array-data

    :array_114
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_115
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_116
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_117
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_118
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_119
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_11a
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
    .end array-data

    :array_11b
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
    .end array-data

    :array_11c
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_11d
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_11e
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_11f
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    :array_120
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_121
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_122
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_123
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_124
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_125
    .array-data 4
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_126
    .array-data 4
        0x1e
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_127
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_128
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_129
    .array-data 4
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    :array_12a
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1d
    .end array-data

    :array_12b
    .array-data 4
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data

    :array_12c
    .array-data 4
        0x1d
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1d
        0x1e
        0x1e
        0x1e
        0x1d
        0x1e
    .end array-data
.end method

.method private loadCalendarData()V
    .locals 16

    .line 841
    move-object/from16 v1, p0

    const-string v0, "1.8.0_1"

    const-string v2, "islamic-umalqura"

    const-string v3, "Hijrah-umalqura"

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 879
    .local v4, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-static {}, Lj$/time/chrono/HijrahChronology;->hijrahUmalquraMonthLengths()[[I

    move-result-object v5

    .line 880
    .local v5, "monthLengths":[[I
    const/16 v6, 0x514

    .line 881
    .local v6, "minYear":I
    array-length v7, v5

    const/16 v8, 0x514

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    .line 882
    .local v7, "maxYear":I
    move-object v9, v3

    .line 883
    .local v9, "id":Ljava/lang/String;
    move-object v10, v2

    .line 884
    .local v10, "type":Ljava/lang/String;
    move-object v11, v0

    .line 885
    .local v11, "version":Ljava/lang/String;
    const/16 v12, 0x75a

    const/16 v13, 0xb

    const/16 v14, 0xc

    invoke-static {v12, v13, v14}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v12

    invoke-virtual {v12}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    long-to-int v13, v12

    .line 886
    .local v13, "isoStart":I
    const/16 v12, 0x514

    .local v12, "year":I
    :goto_0
    if-gt v12, v7, :cond_1

    .line 887
    add-int/lit16 v15, v12, -0x514

    aget-object v15, v5, v15

    .line 888
    .local v15, "numbers":[I
    array-length v8, v15

    if-ne v8, v14, :cond_0

    .line 892
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    nop

    .end local v15    # "numbers":[I
    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x514

    goto :goto_0

    .line 889
    .restart local v15    # "numbers":[I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 890
    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    array-length v3, v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wrong number of months on line: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "; count: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    .end local v12    # "year":I
    .end local v15    # "numbers":[I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lj$/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 898
    invoke-virtual/range {p0 .. p0}, Lj$/time/chrono/HijrahChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 901
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 904
    if-eqz v13, :cond_3

    .line 909
    const/16 v0, 0x3cf0

    iput v0, v1, Lj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    .line 910
    iput v13, v1, Lj$/time/chrono/HijrahChronology;->minEpochDay:I

    .line 911
    iget v0, v1, Lj$/time/chrono/HijrahChronology;->minEpochDay:I

    const/16 v2, 0x514

    invoke-direct {v1, v0, v2, v7, v4}, Lj$/time/chrono/HijrahChronology;->createEpochMonths(IIILjava/util/Map;)[I

    move-result-object v0

    iput-object v0, v1, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    .line 912
    iget-object v0, v1, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    iget-object v2, v1, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iput v0, v1, Lj$/time/chrono/HijrahChronology;->maxEpochDay:I

    .line 915
    const/16 v0, 0x514

    .local v0, "year":I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 916
    invoke-virtual {v1, v0}, Lj$/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v2

    .line 917
    .local v2, "length":I
    iget v3, v1, Lj$/time/chrono/HijrahChronology;->minYearLength:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lj$/time/chrono/HijrahChronology;->minYearLength:I

    .line 918
    iget v3, v1, Lj$/time/chrono/HijrahChronology;->maxYearLength:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lj$/time/chrono/HijrahChronology;->maxYearLength:I

    .line 915
    .end local v2    # "length":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 926
    .end local v0    # "year":I
    .end local v4    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v5    # "monthLengths":[[I
    .end local v6    # "minYear":I
    .end local v7    # "maxYear":I
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    .end local v13    # "isoStart":I
    :cond_2
    nop

    .line 927
    return-void

    .line 905
    .restart local v4    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .restart local v5    # "monthLengths":[[I
    .restart local v6    # "minYear":I
    .restart local v7    # "maxYear":I
    .restart local v9    # "id":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v13    # "isoStart":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration does not contain a ISO start date"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration does not contain a version"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration is for a different calendar type: islamic-umalqura"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration is for a different calendar: Hijrah-umalqura"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v4    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v5    # "monthLengths":[[I
    .end local v6    # "minYear":I
    .end local v7    # "maxYear":I
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    .end local v13    # "isoStart":I
    :catch_0
    move-exception v0

    .line 925
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lj$/time/DateTimeException;

    iget-object v3, v1, Lj$/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to initialize HijrahCalendar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 1358
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private yearMonthToDayOfYear(II)I
    .locals 3
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .line 772
    invoke-direct {p0, p1}, Lj$/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    .line 773
    .local v0, "epochMonthFirst":I
    add-int v1, v0, p2

    invoke-direct {p0, v1}, Lj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    .line 774
    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 773
    return v1
.end method

.method private yearToEpochMonth(I)I
    .locals 2
    .param p1, "year"    # I

    .line 740
    mul-int/lit8 v0, p1, 0xc

    iget v1, p0, Lj$/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method checkValidDayOfYear(I)V
    .locals 3
    .param p1, "dayOfYear"    # I

    .line 554
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 557
    return-void

    .line 555
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah day of year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkValidMonth(I)V
    .locals 3
    .param p1, "month"    # I

    .line 560
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    .line 563
    return-void

    .line 561
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkValidYear(J)I
    .locals 3
    .param p1, "prolepticYear"    # J

    .line 547
    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 550
    long-to-int v0, p1

    return v0

    .line 548
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic date(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahChronology;->date(III)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/time/chrono/HijrahChronology;->date(Lj$/time/chrono/Era;III)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 374
    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/HijrahDate;->of(Lj$/time/chrono/HijrahChronology;III)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lj$/time/chrono/Era;III)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 359
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lj$/time/chrono/HijrahChronology;->date(III)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/HijrahDate;
    .locals 2
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;

    .line 441
    instance-of v0, p1, Lj$/time/chrono/HijrahDate;

    if-eqz v0, :cond_0

    .line 442
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0

    .line 444
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->getLong(Lj$/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lj$/time/chrono/HijrahDate;->ofEpochDay(Lj$/time/chrono/HijrahChronology;J)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->dateEpochDay(J)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "epochDay"    # J

    .line 421
    invoke-static {p0, p1, p2}, Lj$/time/chrono/HijrahDate;->ofEpochDay(Lj$/time/chrono/HijrahChronology;J)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->dateNow()Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahChronology;->dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lj$/time/chrono/HijrahDate;
    .locals 1

    .line 426
    invoke-static {}, Lj$/time/Clock;->systemDefaultZone()Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "clock"    # Lj$/time/Clock;

    .line 436
    invoke-static {p1}, Lj$/time/LocalDate;->now(Lj$/time/Clock;)Lj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahChronology;->date(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "zone"    # Lj$/time/ZoneId;

    .line 431
    invoke-static {p1}, Lj$/time/Clock;->system(Lj$/time/ZoneId;)Lj$/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahChronology;->dateNow(Lj$/time/Clock;)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->dateYearDay(II)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/HijrahChronology;->dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lj$/time/chrono/HijrahDate;
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 405
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lj$/time/chrono/HijrahDate;->of(Lj$/time/chrono/HijrahChronology;III)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    .line 406
    .local v0, "date":Lj$/time/chrono/HijrahDate;
    invoke-virtual {v0}, Lj$/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 409
    add-int/lit8 v1, p2, -0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/HijrahDate;->plusDays(J)Lj$/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1

    .line 407
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dayOfYear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 390
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lj$/time/chrono/HijrahChronology;->dateYearDay(II)Lj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Lj$/time/chrono/Era;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lj$/time/chrono/HijrahChronology;->eraOf(I)Lj$/time/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lj$/time/chrono/HijrahEra;
    .locals 2
    .param p1, "eraValue"    # I

    .line 496
    packed-switch p1, :pswitch_data_0

    .line 500
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "invalid Hijrah era"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :pswitch_0
    sget-object v0, Lj$/time/chrono/HijrahEra;->AH:Lj$/time/chrono/HijrahEra;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-static {}, Lj$/time/chrono/HijrahEra;->values()[Lj$/time/chrono/HijrahEra;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lj$/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    return-object v0
.end method

.method getDayOfYear(II)I
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .line 622
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Lj$/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method getEpochDay(III)J
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 601
    invoke-direct {p0}, Lj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 602
    invoke-virtual {p0, p2}, Lj$/time/chrono/HijrahChronology;->checkValidMonth(I)V

    .line 603
    invoke-direct {p0, p1}, Lj$/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 604
    .local v0, "epochMonth":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 608
    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v1

    if-gt p3, v1, :cond_0

    .line 611
    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1

    .line 609
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah day of month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    :cond_1
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getHijrahDateInfo(I)[I
    .locals 8
    .param p1, "epochDay"    # I

    .line 574
    invoke-direct {p0}, Lj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 575
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->minEpochDay:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lj$/time/chrono/HijrahChronology;->maxEpochDay:I

    if-ge p1, v0, :cond_0

    .line 579
    invoke-direct {p0, p1}, Lj$/time/chrono/HijrahChronology;->epochDayToEpochMonth(I)I

    move-result v0

    .line 580
    .local v0, "epochMonth":I
    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v1

    .line 581
    .local v1, "year":I
    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToMonth(I)I

    move-result v2

    .line 582
    .local v2, "month":I
    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v3

    .line 583
    .local v3, "day1":I
    sub-int v4, p1, v3

    .line 585
    .local v4, "date":I
    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 586
    .local v5, "dateInfo":[I
    const/4 v6, 0x0

    aput v1, v5, v6

    .line 587
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 588
    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 589
    return-object v5

    .line 576
    .end local v0    # "epochMonth":I
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day1":I
    .end local v4    # "date":I
    .end local v5    # "dateInfo":[I
    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Hijrah date out of range"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lj$/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method getMaximumDayOfYear()I
    .locals 1

    .line 694
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->maxYearLength:I

    return v0
.end method

.method getMaximumMonthLength()I
    .locals 1

    .line 676
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->maxMonthLength:I

    return v0
.end method

.method getMaximumYear()I
    .locals 1

    .line 667
    iget-object v0, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getMinimumMonthLength()I
    .locals 1

    .line 685
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->minMonthLength:I

    return v0
.end method

.method getMinimumYear()I
    .locals 1

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    return v0
.end method

.method getMonthLength(II)I
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I

    .line 633
    invoke-direct {p0, p1}, Lj$/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 634
    .local v0, "epochMonth":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lj$/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 638
    invoke-direct {p0, v0}, Lj$/time/chrono/HijrahChronology;->epochMonthLength(I)I

    move-result v1

    return v1

    .line 635
    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSmallestMaximumDayOfYear()I
    .locals 1

    .line 703
    iget v0, p0, Lj$/time/chrono/HijrahChronology;->minYearLength:I

    return v0
.end method

.method getYearLength(I)I
    .locals 1
    .param p1, "prolepticYear"    # I

    .line 649
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lj$/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method public isLeapYear(J)Z
    .locals 4
    .param p1, "prolepticYear"    # J

    .line 468
    invoke-direct {p0}, Lj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 469
    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lj$/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    .line 473
    .local v0, "len":I
    const/16 v1, 0x162

    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 470
    .end local v0    # "len":I
    :cond_2
    :goto_0
    return v2
.end method

.method public localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoLocalDateTime<",
            "Lj$/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Lj$/time/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Lj$/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 478
    instance-of v0, p1, Lj$/time/chrono/HijrahEra;

    if-eqz v0, :cond_0

    .line 481
    return p2

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be HijrahEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;
    .locals 10
    .param p1, "field"    # Lj$/time/temporal/ChronoField;

    .line 512
    invoke-direct {p0}, Lj$/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 513
    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 514
    move-object v0, p1

    .line 515
    .local v0, "f":Lj$/time/temporal/ChronoField;
    sget-object v1, Lj$/time/chrono/HijrahChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 528
    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 526
    :pswitch_0
    invoke-static {v2, v3, v2, v3}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 524
    :pswitch_1
    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 521
    :pswitch_2
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 519
    :pswitch_3
    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 517
    :pswitch_4
    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMinimumMonthLength()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0}, Lj$/time/chrono/HijrahChronology;->getMaximumMonthLength()I

    move-result v1

    int-to-long v8, v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-static/range {v2 .. v9}, Lj$/time/temporal/ValueRange;->of(JJJJ)Lj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 531
    .end local v0    # "f":Lj$/time/temporal/ChronoField;
    :cond_0
    invoke-virtual {p1}, Lj$/time/temporal/ChronoField;->range()Lj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/HijrahDate;
    .locals 1
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/HijrahDate;"
        }
    .end annotation

    .line 537
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/HijrahDate;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1348
    invoke-super {p0}, Lj$/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "instant"    # Lj$/time/Instant;
    .param p2, "zone"    # Lj$/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/Instant;",
            "Lj$/time/ZoneId;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "Lj$/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 462
    invoke-super {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "temporal"    # Lj$/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/temporal/TemporalAccessor;",
            ")",
            "Lj$/time/chrono/ChronoZonedDateTime<",
            "Lj$/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-super {p0, p1}, Lj$/time/chrono/AbstractChronology;->zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
