.class public final Lcom/snowballfinance/messageplatform/b/d;
.super Ljava/lang/Object;
.source "Json.java"


# static fields
.field private static a:Lcom/google/gson/Gson;

.field private static b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 675
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/d;->a:Lcom/google/gson/Gson;

    .line 878
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss Z yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/d;->b:Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/gson/JsonArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    .prologue
    .line 534
    if-nez p0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    .line 537
    :cond_0
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 538
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 539
    instance-of v3, v0, Lcom/snowballfinance/messageplatform/data/Device;

    if-eqz v3, :cond_a

    .line 540
    check-cast v0, Lcom/snowballfinance/messageplatform/data/Device;

    .line 1504
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1505
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1506
    const-string v4, "deviceId"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_2
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getLastConnectedTime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1509
    const-string v4, "lastConnectedTime"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getLastConnectedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1511
    :cond_3
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getPlatformId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1512
    const-string v4, "platformId"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getPlatformId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_4
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getPrimary()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1515
    const-string v4, "primary"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getPrimary()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1517
    :cond_5
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getProxyId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1518
    const-string v4, "proxyId"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getProxyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_6
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getUserId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1521
    const-string v4, "userId"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getUserId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1523
    :cond_7
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1524
    const-string v4, "version"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_8
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getChannel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1527
    const-string v4, "channel"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Device;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_9
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 541
    :cond_a
    instance-of v3, v0, Lcom/snowballfinance/messageplatform/data/MessageSession;

    if-eqz v3, :cond_b

    .line 542
    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageSession;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 543
    :cond_b
    instance-of v3, v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    if-eqz v3, :cond_c

    .line 544
    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    .line 2440
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2441
    const-string v4, "ownerId"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getOwnerId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2442
    const-string v4, "targetGroup"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetGroup()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2443
    const-string v4, "targetId"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2444
    const-string v4, "targetLastReadTimestamp"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetLastReadTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 544
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 545
    :cond_c
    instance-of v3, v0, Lcom/snowballfinance/messageplatform/data/Message;

    if-eqz v3, :cond_d

    .line 546
    check-cast v0, Lcom/snowballfinance/messageplatform/data/Message;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 547
    :cond_d
    instance-of v3, v0, Lcom/snowballfinance/messageplatform/data/MenuItem;

    if-eqz v3, :cond_13

    .line 548
    check-cast v0, Lcom/snowballfinance/messageplatform/data/MenuItem;

    .line 2559
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2560
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 2561
    const-string v4, "id"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    :cond_e
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 2564
    const-string v4, "name"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    :cond_f
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 2567
    const-string v4, "items"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getSubItems()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Collection;)Lcom/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2569
    :cond_10
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getType()Lcom/snowballfinance/messageplatform/data/MenuItemType;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2570
    const-string v4, "type"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getType()Lcom/snowballfinance/messageplatform/data/MenuItemType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/data/MenuItemType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    :cond_11
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 2573
    const-string v4, "url"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 549
    :cond_13
    instance-of v3, v0, Lcom/snowballfinance/messageplatform/data/MessageStatus;

    if-eqz v3, :cond_17

    .line 550
    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageStatus;

    .line 2689
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2690
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageStatus;->getError()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2691
    const-string v4, "error"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageStatus;->getError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    :cond_14
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageStatus;->getMessage()Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 2694
    const-string v4, "message"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageStatus;->getMessage()Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v5

    invoke-static {v5}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 2696
    :cond_15
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageStatus;->getNotifySender()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 2697
    const-string v4, "notifySender"

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageStatus;->getNotifySender()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 550
    :cond_16
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    .line 551
    :cond_17
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 552
    new-instance v3, Lcom/google/gson/JsonPrimitive;

    check-cast v0, Ljava/lang/Long;

    invoke-direct {v3, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    :cond_18
    move-object v0, v1

    .line 555
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/snowballfinance/messageplatform/b/d;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/snowballfinance/messageplatform/data/Group;)Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 400
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "isPublic"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 403
    const-string v1, "ownerId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getOwnerId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 404
    const-string v1, "truncated"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getTruncated()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 405
    const-string v1, "joined"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getJoined()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 406
    const-string v1, "profileImageUrl"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "emptyName"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getEmptyName()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    const-string v1, "count"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 409
    const-string v1, "limitCount"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getLimitCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 410
    const-string v1, "allowInviteUser"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Group;->getAllowInviteUser()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 411
    return-object v0
.end method

.method private static a(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/google/gson/JsonObject;
    .locals 5

    .prologue
    .line 449
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 450
    const-string v0, "messageType"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageType()Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "messageId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 452
    const-string v0, "sequenceId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getSequenceId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 453
    const-string v0, "fromId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getFromId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 454
    const-string v0, "toId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getToId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 455
    const-string v0, "fromGroup"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getFromGroup()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 456
    const-string v0, "toGroup"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getToGroup()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 457
    const-string v0, "timestamp"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 458
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "summary"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getLightweight()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    const-string v0, "lightweight"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getLightweight()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getPlain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 465
    const-string v0, "plain"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getPlain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 468
    const/4 v1, 0x0

    .line 470
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    const-string v1, "image"

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_3
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getView()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 477
    const-string v0, "view"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_4
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getCard()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 481
    const-string v0, "card"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getCard()[B

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_5
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getFromUserRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 489
    const-string v0, "fromUserRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getFromUserRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/User;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 491
    :cond_6
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getFromGroupRef()Lcom/snowballfinance/messageplatform/data/Group;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 492
    const-string v0, "fromGroupRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getFromGroupRef()Lcom/snowballfinance/messageplatform/data/Group;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/Group;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 494
    :cond_7
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getToGroupRef()Lcom/snowballfinance/messageplatform/data/Group;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 495
    const-string v0, "toGroupRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getToGroupRef()Lcom/snowballfinance/messageplatform/data/Group;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/Group;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 497
    :cond_8
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getToUserRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 498
    const-string v0, "toUserRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getToUserRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/User;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 500
    :cond_9
    return-object v2

    .line 472
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/snowballfinance/messageplatform/data/MessageSession;)Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 376
    const-string v1, "activeFlag"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getActiveFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    const-string v1, "notificationFlag"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getNotificationFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 378
    const-string v1, "ownerId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getOwnerId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 379
    const-string v1, "summary"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "stickyFlag"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getStickyFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    const-string v1, "targetGroup"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetGroup()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    const-string v1, "targetId"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 383
    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 384
    const-string v1, "unreadCount"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getUnreadCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 385
    const-string v1, "collapsed"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getCollapsed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 386
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getOwnerRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "ownerRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getOwnerRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v2

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/User;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetGroupRef()Lcom/snowballfinance/messageplatform/data/Group;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 390
    const-string v1, "targetGroupRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetGroupRef()Lcom/snowballfinance/messageplatform/data/Group;

    move-result-object v2

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/Group;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetUserRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "targetUserRef"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->getTargetUserRef()Lcom/snowballfinance/messageplatform/data/User;

    move-result-object v2

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/snowballfinance/messageplatform/data/User;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 395
    :cond_2
    return-object v0
.end method

.method private static a(Lcom/snowballfinance/messageplatform/data/User;)Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 415
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 416
    const-string v1, "screenName"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "province"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "city"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "description"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "profileImageUrl"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "domain"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "gender"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v1, "verified"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getVerified()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    const-string v1, "email"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "areaCode"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getAreaCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 426
    const-string v1, "followersCount"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getFollowersCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 427
    const-string v1, "friendsCount"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getFriendsCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 428
    const-string v1, "statusCount"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getStatusCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 429
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 430
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getType()Lcom/snowballfinance/messageplatform/data/UserType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getType()Lcom/snowballfinance/messageplatform/data/UserType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/UserType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getVerifiedType()Lcom/snowballfinance/messageplatform/data/VerifiedType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 434
    const-string v1, "verifiedType"

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/User;->getVerifiedType()Lcom/snowballfinance/messageplatform/data/VerifiedType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/VerifiedType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/Message;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 239
    new-instance v7, Lcom/snowballfinance/messageplatform/data/Message;

    invoke-direct {v7}, Lcom/snowballfinance/messageplatform/data/Message;-><init>()V

    .line 240
    const-string v0, "messageId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "messageId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 241
    const-string v0, "sequenceId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sequenceId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 242
    const-string v0, "fromId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "fromId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 243
    :goto_1
    const-string v1, "toId"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "toId"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 244
    :goto_2
    const-string v2, "toGroup"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "toGroup"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 245
    const-string v2, "timestamp"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "timestamp"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 246
    const-string v3, "lightweight"

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "lightweight"

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 247
    const-string v5, "summary"

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "summary"

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 249
    :cond_1
    invoke-virtual {v7, v8}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageId(Ljava/lang/Long;)V

    .line 250
    invoke-virtual {v7, v9}, Lcom/snowballfinance/messageplatform/data/Message;->setSequenceId(Ljava/lang/Long;)V

    .line 251
    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setFromId(Ljava/lang/Long;)V

    .line 252
    invoke-virtual {v7, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setToId(Ljava/lang/Long;)V

    .line 253
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setFromGroup(Ljava/lang/Boolean;)V

    .line 254
    invoke-virtual {v7, v10}, Lcom/snowballfinance/messageplatform/data/Message;->setToGroup(Ljava/lang/Boolean;)V

    .line 255
    invoke-virtual {v7, v2}, Lcom/snowballfinance/messageplatform/data/Message;->setTimestamp(Ljava/lang/Long;)V

    .line 256
    invoke-virtual {v7, v3}, Lcom/snowballfinance/messageplatform/data/Message;->setLightweight(Ljava/lang/Boolean;)V

    .line 257
    invoke-virtual {v7, v4}, Lcom/snowballfinance/messageplatform/data/Message;->setSummary(Ljava/lang/String;)V

    .line 259
    const-string v0, "plain"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->PLAIN:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 261
    const-string v0, "plain"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setPlain(Ljava/lang/String;)V

    .line 264
    :cond_2
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 266
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setImage([B)V

    .line 270
    :cond_3
    const-string v0, "card"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 271
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->CARD:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 272
    const-string v0, "card"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setCard([B)V

    .line 275
    :cond_4
    const-string v0, "view"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 276
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 277
    const-string v0, "view"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setView(Ljava/lang/String;)V

    .line 284
    :cond_5
    return-object v7

    :cond_6
    move-wide v0, v2

    .line 240
    goto/16 :goto_0

    :cond_7
    move-object v0, v4

    .line 242
    goto/16 :goto_1

    :cond_8
    move-object v1, v4

    .line 243
    goto/16 :goto_2

    :cond_9
    move v2, v6

    .line 244
    goto/16 :goto_3

    .line 245
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto/16 :goto_4

    :cond_b
    move v5, v6

    .line 246
    goto/16 :goto_5
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 824
    :try_start_0
    sget-object v0, Lcom/snowballfinance/messageplatform/b/d;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    if-eqz p0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 846
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 30
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 32
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 33
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_1
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_2
    return-object v1
.end method

.method public static b(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/Menu;
    .locals 4

    .prologue
    .line 779
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 780
    new-instance v1, Lcom/snowballfinance/messageplatform/data/Menu;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/Menu;-><init>()V

    .line 781
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/Menu;->setId(Ljava/lang/Long;)V

    .line 784
    :cond_0
    const-string v0, "ts"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    const-string v0, "ts"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/Menu;->setTs(Ljava/lang/Long;)V

    .line 787
    :cond_1
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/MenuType;->valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/MenuType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/Menu;->setType(Lcom/snowballfinance/messageplatform/data/MenuType;)V

    .line 790
    :cond_2
    const-string v0, "userId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    const-string v0, "userId"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/Menu;->setUserId(Ljava/lang/Long;)V

    .line 793
    :cond_3
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 794
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 2739
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2740
    if-eqz v0, :cond_4

    .line 2741
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2742
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2743
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->c(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/MenuItem;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 794
    :cond_4
    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/Menu;->setMenuItems(Ljava/util/List;)V

    :cond_5
    move-object v0, v1

    .line 799
    :goto_1
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 875
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    :try_start_0
    sget-object v0, Lcom/snowballfinance/messageplatform/b/d;->a:Lcom/google/gson/Gson;

    new-instance v1, Lcom/snowballfinance/messageplatform/b/d$1;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/b/d$1;-><init>()V

    .line 807
    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/b/d$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 806
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/MenuItem;
    .locals 4

    .prologue
    .line 750
    invoke-static {p0}, Lcom/snowballfinance/messageplatform/b/d;->b(Lcom/google/gson/JsonElement;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    .line 775
    :goto_0
    return-object v0

    .line 753
    :cond_0
    new-instance v1, Lcom/snowballfinance/messageplatform/data/MenuItem;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/MenuItem;-><init>()V

    .line 754
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setId(Ljava/lang/String;)V

    .line 757
    :cond_1
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setName(Ljava/lang/String;)V

    .line 760
    :cond_2
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 763
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 764
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->c(Lcom/google/gson/JsonObject;)Lcom/snowballfinance/messageplatform/data/MenuItem;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 767
    :cond_3
    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setSubItems(Ljava/util/List;)V

    .line 769
    :cond_4
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 770
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/MenuItemType;->valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/MenuItemType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setType(Lcom/snowballfinance/messageplatform/data/MenuItemType;)V

    .line 772
    :cond_5
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 773
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/MenuItem;->setUrl(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    .line 775
    goto/16 :goto_0
.end method
