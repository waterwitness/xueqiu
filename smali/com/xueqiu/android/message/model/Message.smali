.class public Lcom/xueqiu/android/message/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdAt:Ljava/util/Date;

.field private eventText:Ljava/lang/String;

.field private fromId:J

.field private id:J

.field private isFromGroup:Z

.field private isNotify:Z

.field private isToGroup:Z

.field private sequence:J

.field private status:I

.field private summary:Ljava/lang/String;

.field private systemEvent:Lcom/snowballfinance/messageplatform/data/SystemEvent;

.field private text:Ljava/lang/String;

.field private toId:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/xueqiu/android/message/model/Message$1;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Message$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 309
    new-instance v0, Lcom/xueqiu/android/message/model/Message$2;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Message$2;-><init>()V

    sput-object v0, Lcom/xueqiu/android/message/model/Message;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    .line 261
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    .line 266
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Message;->id:J

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Message;->sequence:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/message/model/Message;->summary:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/model/Message;->toId:J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xueqiu/android/message/model/Message;->isFromGroup:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/xueqiu/android/message/model/Message;->isToGroup:Z

    .line 276
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 274
    goto :goto_0

    :cond_1
    move v0, v1

    .line 275
    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to construct from parcel!"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static wrapPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Message;->fromPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public belongTo(Lcom/xueqiu/android/message/model/Talk;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 467
    if-nez p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 473
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 474
    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 475
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 475
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public createTalk()Lcom/xueqiu/android/message/model/Talk;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 480
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 482
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 484
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 487
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 501
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 502
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setReadAt(Ljava/util/Date;)V

    .line 503
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 504
    return-object v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 490
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 493
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 496
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 497
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 499
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    :try_start_0
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 446
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 447
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->toId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 447
    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->sequence:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->toId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 453
    goto :goto_0
.end method

.method public fromPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 379
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/model/Message;->setId(J)V

    .line 380
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getSequenceId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/model/Message;->setSequence(J)V

    .line 381
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getToId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/model/Message;->setToId(J)V

    .line 382
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getFromId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/message/model/Message;->setFromId(J)V

    .line 383
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getFromGroup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setFromGroup(Z)V

    .line 384
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getToGroup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setToGroup(Z)V

    .line 385
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setCreatedAt(Ljava/util/Date;)V

    .line 386
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 388
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getView()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->isSystemMessage()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getPlain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 393
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setSystemEvent(Lcom/snowballfinance/messageplatform/data/SystemEvent;)V

    .line 439
    :goto_0
    return-object p0

    .line 394
    :cond_0
    if-eqz v0, :cond_7

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 396
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/data/View$ViewType;->valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/View$ViewType;

    move-result-object v1

    .line 398
    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->SIMPLE_TEXT:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    if-ne v1, v2, :cond_2

    .line 399
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 411
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_2
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->generateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    :try_start_1
    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    if-ne v1, v2, :cond_3

    .line 401
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 413
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 402
    :cond_3
    :try_start_2
    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->MULTI_TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    if-ne v1, v2, :cond_4

    .line 403
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    goto :goto_1

    .line 404
    :cond_4
    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->STOCK:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    if-ne v1, v2, :cond_5

    .line 405
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    goto :goto_1

    .line 406
    :cond_5
    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->USER_INFO:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    if-ne v1, v2, :cond_6

    .line 407
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    goto :goto_1

    .line 408
    :cond_6
    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->POST:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    if-ne v1, v2, :cond_1

    .line 409
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 417
    :cond_7
    sget-object v0, Lcom/xueqiu/android/message/model/Message$3;->$SwitchMap$com$snowballfinance$messageplatform$data$MessageType:[I

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageType()Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    :goto_3
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->generateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 420
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getPlain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 423
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 424
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 427
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 428
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 431
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 432
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/Message;->getCard()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getClipboardData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 139
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->eventText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/client/e;->a(Lcom/xueqiu/android/base/storage/DBManager;Lcom/snowballfinance/messageplatform/data/SystemEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Message;->eventText:Ljava/lang/String;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->eventText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromId()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Message;->id:J

    return-wide v0
.end method

.method public getSequence()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Message;->sequence:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->summary:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->summary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->systemEvent:Lcom/snowballfinance/messageplatform/data/SystemEvent;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->fromJson(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/model/Message;->systemEvent:Lcom/snowballfinance/messageplatform/data/SystemEvent;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->systemEvent:Lcom/snowballfinance/messageplatform/data/SystemEvent;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToId()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Message;->toId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Message;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 460
    iget-wide v2, p0, Lcom/xueqiu/android/message/model/Message;->sequence:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    .line 462
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x20f

    .line 463
    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public isByMyself()Z
    .locals 4

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 224
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    if-ne v1, v0, :cond_0

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget v1, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromGroup()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Message;->isFromGroup:Z

    return v0
.end method

.method public isNotify()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Message;->isNotify:Z

    return v0
.end method

.method public isToGroup()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Message;->isToGroup:Z

    return v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    .line 173
    return-void
.end method

.method public setFromGroup(Z)V
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Message;->isFromGroup:Z

    .line 213
    return-void
.end method

.method public setFromId(J)V
    .locals 1

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    .line 197
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Message;->id:J

    .line 157
    return-void
.end method

.method public setNotify(Z)V
    .locals 0

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Message;->isNotify:Z

    .line 244
    return-void
.end method

.method public setSequence(J)V
    .locals 1

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Message;->sequence:J

    .line 165
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    .line 189
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Message;->summary:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setSystemEvent(Lcom/snowballfinance/messageplatform/data/SystemEvent;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Message;->systemEvent:Lcom/snowballfinance/messageplatform/data/SystemEvent;

    .line 236
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setToGroup(Z)V
    .locals 0

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Message;->isToGroup:Z

    .line 221
    return-void
.end method

.method public setToId(J)V
    .locals 1

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Message;->toId:J

    .line 205
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    .line 181
    return-void
.end method

.method public toPlatformMessage()Lcom/snowballfinance/messageplatform/data/Message;
    .locals 4

    .prologue
    .line 334
    new-instance v0, Lcom/snowballfinance/messageplatform/data/Message;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/data/Message;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageId(Ljava/lang/Long;)V

    .line 336
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setToId(Ljava/lang/Long;)V

    .line 337
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setToGroup(Ljava/lang/Boolean;)V

    .line 338
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setFromId(Ljava/lang/Long;)V

    .line 339
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setFromGroup(Ljava/lang/Boolean;)V

    .line 340
    iget v1, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    packed-switch v1, :pswitch_data_0

    .line 362
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setSequenceId(Ljava/lang/Long;)V

    .line 363
    iget-object v1, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setTimestamp(Ljava/lang/Long;)V

    .line 364
    return-object v0

    .line 342
    :pswitch_1
    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->PLAIN:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 343
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setPlain(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_2
    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 347
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setImage([B)V

    goto :goto_0

    .line 353
    :pswitch_3
    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 354
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setView(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_4
    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->CARD:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 358
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setCard([B)V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->sequence:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Lcom/xueqiu/android/message/model/Message;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->fromId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-wide v4, p0, Lcom/xueqiu/android/message/model/Message;->toId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Message;->isFromGroup:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Message;->isToGroup:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Message;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    return-void

    :cond_0
    move v0, v2

    .line 292
    goto :goto_0

    :cond_1
    move v1, v2

    .line 293
    goto :goto_1
.end method
