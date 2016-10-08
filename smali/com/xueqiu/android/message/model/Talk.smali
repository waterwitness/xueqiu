.class public Lcom/xueqiu/android/message/model/Talk;
.super Ljava/lang/Object;
.source "Talk.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private collapsed:Z

.field private groupRef:Lcom/xueqiu/android/message/model/IMGroup;

.field private id:J

.field private isGroup:Z

.field private isNotify:Z

.field private isTop:Z

.field private lastTime:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private readAt:Ljava/util/Date;

.field private status:I

.field private summary:Ljava/lang/String;

.field private targetReadAt:Ljava/util/Date;

.field private unread:I

.field private userRef:Lcom/xueqiu/android/community/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/xueqiu/android/message/model/Talk$1;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/model/Talk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 226
    new-instance v0, Lcom/xueqiu/android/message/model/Talk$2;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk$2;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/model/Talk;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isNotify:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->name:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->summary:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->targetReadAt:Ljava/util/Date;

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->readAt:Ljava/util/Date;

    .line 34
    iput-boolean v1, p0, Lcom/xueqiu/android/message/model/Talk;->collapsed:Z

    .line 35
    iput v1, p0, Lcom/xueqiu/android/message/model/Talk;->status:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isNotify:Z

    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Talk;->id:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/Talk;->isTop:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v0, v2, :cond_1

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/Talk;->isNotify:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/message/model/Talk;->unread:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Talk;->profileImageUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Talk;->name:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Talk;->summary:Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    .line 131
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Talk;->targetReadAt:Ljava/util/Date;

    .line 132
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Talk;->readAt:Ljava/util/Date;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/Talk;->active:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_4
    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->collapsed:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/message/model/Talk;->status:I

    .line 136
    const-class v0, Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->groupRef:Lcom/xueqiu/android/message/model/IMGroup;

    .line 137
    const-class v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->userRef:Lcom/xueqiu/android/community/model/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_5
    return-void

    :cond_0
    move v2, v1

    .line 123
    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 124
    goto :goto_1

    :cond_2
    move v2, v1

    .line 125
    goto :goto_2

    :cond_3
    move v2, v1

    .line 133
    goto :goto_3

    :cond_4
    move v0, v1

    .line 134
    goto :goto_4

    .line 139
    :catch_0
    move-exception v0

    const-string v0, "Talk"

    const-string v1, "Failed to construct from parcel"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method static synthetic access$000(Lcom/xueqiu/android/message/model/Talk;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isTop:Z

    return v0
.end method

.method public static from(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/message/model/Talk;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 262
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 264
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 267
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 268
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    .line 269
    return-object v0
.end method

.method public static from(Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/Talk;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 273
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 274
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 276
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 280
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 281
    return-object v0
.end method

.method public static wrapMessageSession(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Talk;->fromMessageSession(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allocateMessage(IJ)Lcom/xueqiu/android/message/model/Message;
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Message;->setSequence(J)V

    .line 252
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Message;->setToId(J)V

    .line 253
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setToGroup(Z)V

    .line 254
    invoke-virtual {v0, p2, p3}, Lcom/xueqiu/android/message/model/Message;->setFromId(J)V

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 256
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 257
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 214
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/xueqiu/android/message/model/Talk;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    check-cast p1, Lcom/xueqiu/android/message/model/Talk;

    .line 218
    iget-wide v2, p0, Lcom/xueqiu/android/message/model/Talk;->id:J

    iget-wide v4, p1, Lcom/xueqiu/android/message/model/Talk;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    iget-boolean v2, p1, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fromMessageSession(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/xueqiu/android/message/model/Talk;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 165
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getStickyFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setTop(Z)V

    .line 166
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getNotificationFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setNotify(Z)V

    .line 167
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetGroup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 168
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getUnreadCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 170
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setReadAt(Ljava/util/Date;)V

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 172
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getActiveFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 173
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getCollapsed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 174
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 175
    return-object p0

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getActiveFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getGroupRef()Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->groupRef:Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Talk;->id:J

    return-wide v0
.end method

.method public getLastTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReadAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->readAt:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/xueqiu/android/message/model/Talk;->status:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetReadAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->targetReadAt:Ljava/util/Date;

    return-object v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/xueqiu/android/message/model/Talk;->unread:I

    return v0
.end method

.method public getUserRef()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->userRef:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Talk;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->active:Z

    return v0
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->collapsed:Z

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    return v0
.end method

.method public isNotify()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isNotify:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isTop:Z

    return v0
.end method

.method public loadLastMessage(Lcom/xueqiu/android/message/model/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 104
    :cond_0
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 107
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 108
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Talk;->active:Z

    .line 363
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 0

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Talk;->collapsed:Z

    .line 424
    return-void
.end method

.method public setGroup(Z)V
    .locals 0

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    .line 323
    return-void
.end method

.method public setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->groupRef:Lcom/xueqiu/android/message/model/IMGroup;

    .line 383
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Talk;->id:J

    .line 299
    return-void
.end method

.method public setLastTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    .line 355
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->name:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setNotify(Z)V
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Talk;->isNotify:Z

    .line 315
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->pinyin:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->profileImageUrl:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setReadAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->readAt:Ljava/util/Date;

    .line 375
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 406
    iput p1, p0, Lcom/xueqiu/android/message/model/Talk;->status:I

    .line 407
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->summary:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setTargetReadAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->targetReadAt:Ljava/util/Date;

    .line 416
    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Talk;->isTop:Z

    .line 307
    return-void
.end method

.method public setUnread(I)Lcom/xueqiu/android/message/model/Talk;
    .locals 0

    .prologue
    .line 289
    iput p1, p0, Lcom/xueqiu/android/message/model/Talk;->unread:I

    .line 290
    return-object p0
.end method

.method public setUserRef(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Talk;->userRef:Lcom/xueqiu/android/community/model/User;

    .line 391
    return-void
.end method

.method public toMessageSession()Lcom/snowballfinance/messageplatform/data/MessageSession;
    .locals 2

    .prologue
    .line 193
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/model/Talk;->toMessageSession(J)Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v0

    return-object v0
.end method

.method public toMessageSession(J)Lcom/snowballfinance/messageplatform/data/MessageSession;
    .locals 5

    .prologue
    .line 179
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageSession;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setTargetGroup(Ljava/lang/Boolean;)V

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setOwnerId(Ljava/lang/Long;)V

    .line 182
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setTargetId(Ljava/lang/Long;)V

    .line 183
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setNotificationFlag(Ljava/lang/Boolean;)V

    .line 184
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setTimestamp(Ljava/lang/Long;)V

    .line 185
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setActiveFlag(Ljava/lang/Boolean;)V

    .line 186
    iget-boolean v1, p0, Lcom/xueqiu/android/message/model/Talk;->collapsed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setCollapsed(Ljava/lang/Boolean;)V

    .line 187
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setStickyFlag(Ljava/lang/Boolean;)V

    .line 188
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setSummary(Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Talk;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isTop:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isNotify:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->isGroup:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/xueqiu/android/message/model/Talk;->unread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->targetReadAt:Ljava/util/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->targetReadAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_3
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->readAt:Ljava/util/Date;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->readAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_4
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->active:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Talk;->collapsed:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/xueqiu/android/message/model/Talk;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->groupRef:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->userRef:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0

    :cond_1
    move v0, v2

    .line 147
    goto :goto_1

    :cond_2
    move v0, v2

    .line 148
    goto :goto_2

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_3

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Talk;->lastTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_4

    :cond_5
    move v0, v2

    .line 156
    goto :goto_5

    :cond_6
    move v1, v2

    .line 157
    goto :goto_6
.end method
