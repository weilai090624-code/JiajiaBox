.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatBuilder$Api26Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api23Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api20Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api21Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api24Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api28Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api29Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api31Impl;
    }
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 20
    .param p1, "b"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 63
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 71
    iput-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 72
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    .line 73
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2c

    .line 74
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    goto :goto_35

    .line 76
    :cond_2c
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 78
    :goto_35
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 79
    .local v2, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v5, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->icon:I

    iget v6, v2, Landroid/app/Notification;->iconLevel:I

    .line 80
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 81
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 82
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->vibrate:[J

    .line 83
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->ledARGB:I

    iget v6, v2, Landroid/app/Notification;->ledOnMS:I

    iget v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 84
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_6d

    const/4 v5, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    .line 85
    :goto_6e
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7a

    const/4 v5, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v5, 0x0

    .line 86
    :goto_7b
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_87

    const/4 v5, 0x1

    goto :goto_88

    :cond_87
    const/4 v5, 0x0

    .line 87
    :goto_88
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->defaults:I

    .line 88
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 92
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 93
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget v9, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_ba

    const/4 v9, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v9, 0x0

    .line 94
    :goto_bb
    invoke-virtual {v4, v5, v9}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 96
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    iget v9, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    iget-boolean v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 97
    invoke-virtual {v4, v5, v9, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 98
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v9, 0x0

    if-ge v4, v5, :cond_e7

    .line 99
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v10, :cond_dd

    move-object v10, v9

    goto :goto_e3

    :cond_dd
    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v10}, Landroidx/core/graphics/drawable/IconCompat;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_e3
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_fa

    .line 101
    :cond_e7
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 102
    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v10, :cond_ef

    move-object v10, v9

    goto :goto_f7

    :cond_ef
    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 101
    :goto_f7
    invoke-static {v4, v10}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->setLargeIcon(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 104
    :goto_fa
    nop

    .line 108
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 109
    .local v4, "builder":Landroid/app/Notification$Builder;
    iget-boolean v10, v1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 110
    .local v10, "builder1":Landroid/app/Notification$Builder;
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 117
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    instance-of v11, v11, Landroidx/core/app/NotificationCompat$CallStyle;

    if-eqz v11, :cond_131

    .line 120
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    check-cast v11, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 121
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v11

    .line 123
    .local v11, "actionsList":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$Action;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_120
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_130

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/core/app/NotificationCompat$Action;

    .line 124
    .local v13, "action":Landroidx/core/app/NotificationCompat$Action;
    invoke-direct {v0, v13}, Landroidx/core/app/NotificationCompatBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 125
    .end local v13    # "action":Landroidx/core/app/NotificationCompat$Action;
    goto :goto_120

    .line 126
    .end local v11    # "actionsList":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/NotificationCompat$Action;>;"
    :cond_130
    goto :goto_147

    .line 127
    :cond_131
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_137
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_147

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 128
    .local v12, "action":Landroidx/core/app/NotificationCompat$Action;
    invoke-direct {v0, v12}, Landroidx/core/app/NotificationCompatBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 129
    .end local v12    # "action":Landroidx/core/app/NotificationCompat$Action;
    goto :goto_137

    .line 132
    :cond_147
    :goto_147
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v11, :cond_152

    .line 133
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 135
    :cond_152
    nop

    .line 153
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 154
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 155
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 156
    nop

    .line 163
    nop

    .line 164
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setLocalOnly(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 165
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroup(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 166
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setSortKey(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 167
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroupSummary(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 168
    iget v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 170
    nop

    .line 171
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setCategory(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 172
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setColor(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 173
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setVisibility(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 174
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    invoke-static {v11, v12}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setPublicVersion(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 175
    iget-object v11, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v12, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v13, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v11, v12, v13}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setSound(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 178
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-ge v11, v12, :cond_1bd

    .line 179
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-static {v11}, Landroidx/core/app/NotificationCompatBuilder;->getPeople(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iget-object v13, v1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-static {v11, v13}, Landroidx/core/app/NotificationCompatBuilder;->combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .local v11, "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1bf

    .line 181
    .end local v11    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1bd
    iget-object v11, v1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 183
    .restart local v11    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1bf
    if-eqz v11, :cond_1dd

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1dd

    .line 184
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1cb
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1dd

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 185
    .local v14, "person":Ljava/lang/String;
    iget-object v15, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v15, v14}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->addPerson(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 186
    .end local v14    # "person":Ljava/lang/String;
    goto :goto_1cb

    .line 189
    :cond_1dd
    iget-object v13, v1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v13, v0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 191
    iget-object v13, v1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_246

    .line 194
    nop

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "android.car.EXTENSIONS"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 196
    .local v13, "carExtenderBundle":Landroid/os/Bundle;
    if-nez v13, :cond_1fc

    .line 197
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object v13, v15

    .line 199
    :cond_1fc
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 200
    .local v15, "extenderBundleCopy":Landroid/os/Bundle;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v17, v16

    .line 201
    .local v17, "listBundle":Landroid/os/Bundle;
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_20c
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_230

    .line 202
    nop

    .line 203
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v12, v1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 204
    invoke-static {v12}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v12

    .line 202
    move-object/from16 v8, v17

    .end local v17    # "listBundle":Landroid/os/Bundle;
    .local v8, "listBundle":Landroid/os/Bundle;
    invoke-virtual {v8, v6, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x2

    const/16 v12, 0x1c

    goto :goto_20c

    .end local v8    # "listBundle":Landroid/os/Bundle;
    .restart local v17    # "listBundle":Landroid/os/Bundle;
    :cond_230
    move-object/from16 v8, v17

    .line 207
    .end local v7    # "i":I
    .end local v17    # "listBundle":Landroid/os/Bundle;
    .restart local v8    # "listBundle":Landroid/os/Bundle;
    const-string v6, "invisible_actions"

    invoke-virtual {v13, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {v15, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 213
    iget-object v6, v0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    .end local v8    # "listBundle":Landroid/os/Bundle;
    .end local v11    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "carExtenderBundle":Landroid/os/Bundle;
    .end local v15    # "extenderBundleCopy":Landroid/os/Bundle;
    :cond_246
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_255

    .line 218
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Ljava/lang/Object;

    if-eqz v5, :cond_255

    .line 219
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Ljava/lang/Object;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->setSmallIcon(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 222
    :cond_255
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_28a

    .line 223
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 224
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setRemoteInputHistory(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 225
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_274

    .line 226
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setCustomContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 228
    :cond_274
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_27f

    .line 229
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setCustomBigContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 231
    :cond_27f
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_28a

    .line 232
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setCustomHeadsUpContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 235
    :cond_28a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_2d6

    .line 236
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setBadgeIconType(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 237
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setSettingsText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 238
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setShortcutId(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 239
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    invoke-static {v5, v6, v7}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setTimeoutAfter(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 240
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 241
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v5, :cond_2bc

    .line 242
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setColorized(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 245
    :cond_2bc
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d6

    .line 246
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 247
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 248
    invoke-virtual {v5, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 249
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 252
    :cond_2d6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_2f8

    .line 253
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/Person;

    .line 254
    .local v6, "p":Landroidx/core/app/Person;
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->addPerson(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 255
    .end local v6    # "p":Landroidx/core/app/Person;
    goto :goto_2e2

    .line 257
    :cond_2f8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_31f

    .line 258
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 261
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 262
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    .line 261
    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setBubbleMetadata(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 263
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    if-eqz v5, :cond_31f

    .line 264
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    invoke-virtual {v6}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setLocusId(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 267
    :cond_31f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_330

    .line 268
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    if-eqz v5, :cond_330

    .line 269
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v6, v1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    invoke-static {v5, v6}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setForegroundServiceBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 273
    :cond_330
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    if-eqz v5, :cond_37b

    .line 274
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v5, :cond_33e

    .line 275
    const/4 v5, 0x2

    iput v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    goto :goto_341

    .line 277
    :cond_33e
    const/4 v5, 0x1

    iput v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 280
    :goto_341
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 281
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 282
    iget v5, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 283
    iget v5, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 284
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v6, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 286
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_37b

    .line 287
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_374

    .line 288
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const-string/jumbo v5, "silent"

    invoke-static {v3, v5}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroup(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 290
    :cond_374
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v5, v0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    invoke-static {v3, v5}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 293
    :cond_37b
    return-void
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Action;)V
    .registers 8
    .param p1, "action"    # Landroidx/core/app/NotificationCompat$Action;

    .line 371
    nop

    .line 373
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 374
    .local v0, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_21

    .line 376
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 377
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 375
    invoke-static {v1, v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->createBuilder(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    .local v1, "actionBuilder":Landroid/app/Notification$Action$Builder;
    goto :goto_35

    .line 380
    .end local v1    # "actionBuilder":Landroid/app/Notification$Action$Builder;
    :cond_21
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 381
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 379
    invoke-static {v1, v2, v4}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->createBuilder(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    .line 383
    .restart local v1    # "actionBuilder":Landroid/app/Notification$Action$Builder;
    :goto_35
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 384
    nop

    .line 385
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    .line 384
    invoke-static {v2}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v4, v2

    :goto_45
    if-ge v3, v4, :cond_4f

    aget-object v5, v2, v3

    .line 386
    .local v5, "remoteInput":Landroid/app/RemoteInput;
    invoke-static {v1, v5}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addRemoteInput(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 384
    .end local v5    # "remoteInput":Landroid/app/RemoteInput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 390
    :cond_4f
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 391
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .local v2, "actionExtras":Landroid/os/Bundle;
    goto :goto_64

    .line 393
    .end local v2    # "actionExtras":Landroid/os/Bundle;
    :cond_5f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 395
    .restart local v2    # "actionExtras":Landroid/os/Bundle;
    :goto_64
    nop

    .line 396
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 395
    const-string v4, "android.support.allowGeneratedReplies"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_7c

    .line 398
    nop

    .line 399
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 398
    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 402
    :cond_7c
    nop

    .line 403
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    .line 402
    const-string v4, "android.support.action.semanticAction"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_93

    .line 405
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->setSemanticAction(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 408
    :cond_93
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_a0

    .line 409
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v3

    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setContextual(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 412
    :cond_a0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_ae

    .line 413
    nop

    .line 414
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    move-result v3

    .line 413
    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 417
    :cond_ae
    nop

    .line 418
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v3

    .line 417
    const-string v4, "android.support.action.showsUserInterface"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    invoke-static {v1, v2}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addExtras(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 420
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->build(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addAction(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 421
    .end local v0    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    .end local v1    # "actionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v2    # "actionExtras":Landroid/os/Bundle;
    nop

    .line 425
    return-void
.end method

.method private static combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    .local p0, "first":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "second":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_3

    .line 299
    return-object p1

    .line 301
    :cond_3
    if-nez p1, :cond_6

    .line 302
    return-object p0

    .line 304
    :cond_6
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 305
    .local v0, "people":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 306
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static getPeople(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/Person;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    .local p0, "people":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/Person;>;"
    if-nez p0, :cond_4

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/Person;

    .line 317
    .local v2, "person":Landroidx/core/app/Person;
    invoke-virtual {v2}, Landroidx/core/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v2    # "person":Landroidx/core/app/Person;
    goto :goto_11

    .line 319
    :cond_25
    return-object v0
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .registers 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 525
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 526
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 527
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 528
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 529
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 5

    .line 332
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 333
    .local v0, "style":Landroidx/core/app/NotificationCompat$Style;
    if-eqz v0, :cond_9

    .line 334
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 337
    :cond_9
    if-eqz v0, :cond_10

    .line 338
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_11

    .line 339
    :cond_10
    const/4 v1, 0x0

    :goto_11
    nop

    .line 340
    .local v1, "styleContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    move-result-object v2

    .line 341
    .local v2, "n":Landroid/app/Notification;
    if-eqz v1, :cond_1b

    .line 342
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_27

    .line 343
    :cond_1b
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_27

    .line 344
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 346
    :cond_27
    :goto_27
    if-eqz v0, :cond_31

    .line 347
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 348
    .local v3, "styleBigContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_31

    .line 349
    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 352
    .end local v3    # "styleBigContentView":Landroid/widget/RemoteViews;
    :cond_31
    if-eqz v0, :cond_3f

    .line 353
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 354
    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 355
    .local v3, "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_3f

    .line 356
    iput-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 360
    .end local v3    # "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_3f
    if-eqz v0, :cond_4a

    .line 361
    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 362
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_4a

    .line 363
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 367
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_4a
    return-object v2
.end method

.method protected buildInternal()Landroid/app/Notification;
    .registers 5

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 430
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 431
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v1, :cond_46

    .line 432
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 434
    .local v0, "notification":Landroid/app/Notification;
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_45

    .line 436
    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_32

    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_32

    .line 439
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 442
    :cond_32
    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_45

    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_45

    .line 445
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 449
    :cond_45
    return-object v0

    .line 450
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_46
    nop

    .line 451
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 452
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 453
    .restart local v0    # "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5c

    .line 454
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 456
    :cond_5c
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_64

    .line 457
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 459
    :cond_64
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6c

    .line 460
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 463
    :cond_6c
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-eqz v1, :cond_96

    .line 465
    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_83

    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v3, :cond_83

    .line 468
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 471
    :cond_83
    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_96

    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    if-ne v1, v2, :cond_96

    .line 474
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 477
    :cond_96
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    .line 324
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 328
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method
