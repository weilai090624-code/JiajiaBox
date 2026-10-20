.class public final Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;
.super Ljava/lang/Object;
.source "EditorTheme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;",
        "",
        "()V",
        "DARCULA",
        "Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "getDARCULA",
        "()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "ECLIPSE",
        "getECLIPSE",
        "INTELLIJ_LIGHT",
        "getINTELLIJ_LIGHT",
        "LADIES_NIGHT",
        "getLADIES_NIGHT",
        "MONOKAI",
        "getMONOKAI",
        "OBSIDIAN",
        "getOBSIDIAN",
        "SOLARIZED_LIGHT",
        "getSOLARIZED_LIGHT",
        "TOMORROW_NIGHT",
        "getTOMORROW_NIGHT",
        "VISUAL_STUDIO",
        "getVISUAL_STUDIO",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DARCULA:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final ECLIPSE:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field public static final INSTANCE:Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;

.field private static final INTELLIJ_LIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final LADIES_NIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final MONOKAI:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final OBSIDIAN:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final SOLARIZED_LIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final TOMORROW_NIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private static final VISUAL_STUDIO:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    new-instance v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-direct {v0}, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;-><init>()V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;

    .line 24
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object v1, v0

    .line 25
    const-string v2, "#ABB7C5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 26
    const-string v29, "#BBBBBB"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 27
    const-string v4, "#303030"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 28
    const-string v5, "#313335"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 29
    const-string v30, "#555555"

    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 30
    const-string v7, "#A4A3A3"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 31
    const-string v8, "#616366"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 32
    const-string v9, "#3A3A3A"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 33
    const-string v10, "#28427F"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 34
    const-string v11, "#987DAC"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 35
    const-string v13, "#33654B"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 36
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 37
    const-string v14, "#6897BB"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 38
    const-string v15, "#E8E2B7"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 39
    const-string v18, "#EC7600"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 40
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 41
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 42
    const-string v19, "#C9C54E"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 43
    const-string v20, "#9378A7"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 44
    const-string v21, "#FEC76C"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 45
    const-string v22, "#6E875A"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 46
    const-string v23, "#66747B"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    .line 47
    const-string v24, "#E2C077"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 48
    const-string v25, "#E2C077"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    .line 49
    const-string v26, "#BABABA"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    .line 50
    const-string v27, "#ABC16D"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    .line 51
    const-string v28, "#6897BB"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    .line 24
    invoke-direct/range {v1 .. v28}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->DARCULA:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 54
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object/from16 v31, v0

    .line 55
    const-string v1, "#F8F8F8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    .line 56
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    .line 57
    const-string v1, "#272823"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    .line 58
    const-string v1, "#272823"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    .line 59
    const-string v1, "#5B5A4F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    .line 60
    const-string v1, "#C8BBAC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    .line 61
    const-string v1, "#5B5A4F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v38

    .line 62
    const-string v1, "#34352D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v39

    .line 63
    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    .line 64
    const-string v1, "#7CE0F3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    .line 65
    const-string v1, "#5F5E5A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    .line 66
    const-string v1, "#5F5E5A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    .line 67
    const-string v1, "#BB8FF8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    .line 68
    const-string v1, "#F8F8F2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    .line 69
    const-string v1, "#EB347E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    .line 70
    const-string v2, "#7FD0E4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    .line 71
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    .line 72
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    .line 73
    const-string v2, "#7FD0E4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    .line 74
    const-string v2, "#B6E951"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    .line 75
    const-string v2, "#EBE48C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    .line 76
    const-string v2, "#89826D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    .line 77
    const-string v2, "#F8F8F8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    .line 78
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    .line 79
    const-string v1, "#B6E951"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    .line 80
    const-string v1, "#EBE48C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    .line 81
    const-string v1, "#BB8FF8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    .line 54
    invoke-direct/range {v31 .. v58}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->MONOKAI:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 84
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object v1, v0

    .line 85
    const-string v31, "#E0E2E4"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 86
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 87
    const-string v32, "#2A3134"

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 88
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 89
    const-string v6, "#67777B"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 90
    const-string v7, "#E0E0E0"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 91
    const-string v8, "#859599"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 92
    const-string v9, "#31393C"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 93
    const-string v33, "#616161"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 94
    const-string v25, "#9EC56F"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 95
    const-string v12, "#838177"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 96
    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 97
    const-string v14, "#F8CE4E"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 98
    const-string v34, "#E7E2BC"

    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 99
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 100
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 101
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 102
    const-string v19, "#9B84B9"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 103
    const-string v20, "#6E8BAE"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 104
    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 105
    const-string v22, "#DE7C2E"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 106
    const-string v23, "#808C92"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    .line 107
    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 108
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    .line 109
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    .line 110
    const-string v27, "#DE7C2E"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    .line 111
    const-string v28, "#F8CE4E"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    .line 84
    invoke-direct/range {v1 .. v28}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->OBSIDIAN:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 114
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object/from16 v35, v0

    .line 115
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    .line 116
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    .line 117
    const-string v1, "#22282C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v38

    .line 118
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v39

    .line 119
    const-string v1, "#4F575A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    .line 120
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    .line 121
    const-string v1, "#859599"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    .line 122
    const-string v1, "#373340"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    .line 123
    const-string v1, "#5B2B41"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    .line 124
    const-string v1, "#6E8BAE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    .line 125
    const-string v1, "#8A4364"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    .line 126
    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    .line 127
    const-string v1, "#7EFBFD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    .line 128
    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    .line 129
    const-string v1, "#DA89A2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    .line 130
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    .line 131
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    .line 132
    const-string v2, "#9B84B9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    .line 133
    const-string v2, "#6EA4C7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    .line 134
    const-string v2, "#8FB4C5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    .line 135
    const-string v2, "#75D367"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    .line 136
    const-string v2, "#808C92"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    .line 137
    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v59

    .line 139
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v60

    .line 140
    const-string v1, "#75D367"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v61

    .line 141
    const-string v1, "#7EFBFD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v62

    .line 114
    invoke-direct/range {v35 .. v62}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->LADIES_NIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 144
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object v1, v0

    .line 145
    const-string v31, "#C6C8C6"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 147
    const-string v4, "#222426"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 148
    const-string v5, "#222426"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 149
    const-string v6, "#4B4D51"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 150
    const-string v32, "#FFFFFF"

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 151
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 152
    const-string v9, "#2D2F33"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 153
    const-string v10, "#383B40"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 154
    const-string v11, "#EAC780"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 155
    const-string v12, "#4B4E54"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 156
    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 157
    const-string v14, "#D49668"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 158
    const-string v24, "#CFD1CF"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 159
    const-string v25, "#AD95B8"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 160
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 161
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 162
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 163
    const-string v20, "#EAC780"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 164
    const-string v21, "#87A1BB"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 165
    const-string v22, "#B7BC73"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 166
    const-string v23, "#969896"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    .line 167
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 168
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    .line 169
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    .line 170
    const-string v27, "#B7BC73"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    .line 171
    const-string v28, "#D49668"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    .line 144
    invoke-direct/range {v1 .. v28}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->TOMORROW_NIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 174
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object/from16 v34, v0

    .line 175
    const-string v1, "#C8C8C8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    .line 176
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    .line 177
    const-string v1, "#232323"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    .line 178
    const-string v1, "#2C2C2C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v38

    .line 179
    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v39

    .line 180
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    .line 181
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    .line 182
    const-string v1, "#141414"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    .line 183
    const-string v1, "#454464"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    .line 184
    const-string v1, "#4F98F7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    .line 185
    const-string v1, "#1C3D6B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    .line 186
    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    .line 187
    const-string v1, "#BACDAB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    .line 188
    const-string v1, "#DCDCDC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    .line 189
    const-string v1, "#669BD1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    .line 190
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    .line 191
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    .line 192
    const-string v2, "#C49594"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    .line 193
    const-string v2, "#9DDDFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    .line 194
    const-string v2, "#71C6B1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    .line 195
    const-string v2, "#CE9F89"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    .line 196
    const-string v2, "#6BA455"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    .line 197
    const-string v2, "#DCDCDC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    .line 198
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    .line 199
    const-string v1, "#C8C8C8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v59

    .line 200
    const-string v1, "#CE9F89"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v60

    .line 201
    const-string v1, "#BACDAB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v61

    .line 174
    invoke-direct/range {v34 .. v61}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->VISUAL_STUDIO:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 204
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object v1, v0

    .line 205
    const-string v29, "#000000"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 206
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 207
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 208
    const-string v5, "#F2F2F2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 209
    const-string v6, "#D4D4D4"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 210
    const-string v7, "#828282"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 211
    const-string v8, "#ADADAD"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 212
    const-string v9, "#FCFAEE"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 213
    const-string v30, "#AFD1FB"

    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 214
    const-string v11, "#3A6EAE"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 215
    const-string v12, "#E2FEDE"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 216
    const-string v13, "#A2D7D8"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 217
    const-string v14, "#284FE2"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 218
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 219
    const-string v25, "#1232AC"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 220
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 221
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 222
    const-string v19, "#9A892E"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 223
    const-string v20, "#7C1E8F"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 224
    const-string v21, "#286077"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 225
    const-string v22, "#377B2A"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 226
    const-string v23, "#8C8C8C"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    .line 227
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 228
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    .line 229
    const-string v26, "#2649CC"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    .line 230
    const-string v27, "#377B2A"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    .line 231
    const-string v28, "#264ADD"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    .line 204
    invoke-direct/range {v1 .. v28}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->INTELLIJ_LIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 234
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object/from16 v33, v0

    .line 235
    const-string v1, "#697A82"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    .line 236
    const-string v2, "#5C6D74"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    .line 237
    const-string v2, "#FCF6E5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    .line 238
    const-string v2, "#EDE8D7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    .line 239
    const-string v2, "#B6BAB4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v38

    .line 240
    const-string v2, "#77878B"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v39

    .line 241
    const-string v2, "#A5ADAB"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    .line 242
    const-string v2, "#F2EDDE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    .line 243
    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    .line 244
    const-string v2, "#5274B5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    .line 245
    const-string v2, "#E8F0D0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    .line 246
    const-string v2, "#C1DBCD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    .line 247
    const-string v2, "#BC5429"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    .line 248
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    .line 249
    const-string v2, "#89982E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    .line 250
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    .line 251
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    .line 252
    const-string v2, "#AE8B2D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    .line 253
    const-string v2, "#6D71BE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    .line 254
    const-string v2, "#C24480"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    .line 255
    const-string v2, "#519F98"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    .line 256
    const-string v2, "#96A0A1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    .line 257
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    .line 258
    const-string v2, "#4689CC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    .line 259
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    .line 260
    const-string v1, "#519F98"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v59

    .line 261
    const-string v1, "#BC5429"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v60

    .line 234
    invoke-direct/range {v33 .. v60}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->SOLARIZED_LIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 264
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-object v1, v0

    .line 265
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 266
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 267
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 268
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 269
    const-string v6, "#D4D4D4"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 270
    const-string v7, "#828282"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 271
    const-string v8, "#ADADAD"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 272
    const-string v9, "#E8F2FE"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 273
    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 274
    const-string v11, "#3A6FAD"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 275
    const-string v12, "#E2FEDE"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 276
    const-string v13, "#7BBCFE"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 277
    const-string v14, "#0000F5"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 278
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 279
    const-string v28, "#800055"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 280
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 281
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 282
    const-string v19, "#9A892E"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 283
    const-string v20, "#5D1776"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 284
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 285
    const-string v22, "#2602F5"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 286
    const-string v23, "#4F7E61"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    .line 287
    const-string v24, "#437D7E"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 288
    const-string v25, "#437D7E"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    .line 289
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    .line 290
    const-string v27, "#2602F5"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    .line 291
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    .line 264
    invoke-direct/range {v1 .. v28}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->ECLIPSE:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDARCULA()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 24
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->DARCULA:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getECLIPSE()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 264
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->ECLIPSE:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getINTELLIJ_LIGHT()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 204
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->INTELLIJ_LIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getLADIES_NIGHT()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 114
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->LADIES_NIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getMONOKAI()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 54
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->MONOKAI:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getOBSIDIAN()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 84
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->OBSIDIAN:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getSOLARIZED_LIGHT()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 234
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->SOLARIZED_LIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getTOMORROW_NIGHT()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 144
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->TOMORROW_NIGHT:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getVISUAL_STUDIO()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 174
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->VISUAL_STUDIO:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method
