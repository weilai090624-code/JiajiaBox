.class public Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    .line 109
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 111
    .local v1, "depth":I
    :goto_5
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_d9

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_d9

    .line 114
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1a

    .line 115
    goto :goto_5

    .line 118
    :cond_1a
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 120
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 123
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v5

    goto/16 :goto_ba

    .line 124
    :cond_32
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 125
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_ba

    .line 126
    :cond_42
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 127
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_ba

    .line 128
    :cond_52
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 129
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, v5

    goto :goto_ba

    .line 130
    :cond_61
    const-string v5, "cycleInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 131
    new-instance v5, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_ba

    .line 132
    :cond_70
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 133
    new-instance v5, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_ba

    .line 134
    :cond_7f
    const-string v5, "overshootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 135
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_ba

    .line 136
    :cond_8e
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 137
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, p0, v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_ba

    .line 138
    :cond_9d
    const-string v5, "bounceInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 139
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object v0, v5

    goto :goto_ba

    .line 140
    :cond_ac
    const-string v5, "pathInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 141
    new-instance v5, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;

    invoke-direct {v5, p0, v2, p3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v5

    .line 145
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :goto_ba
    goto/16 :goto_5

    .line 143
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_bc
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_d9
    return-object v0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 67
    nop

    .line 68
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
