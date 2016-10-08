.class public Lcom/snowballfinance/messageplatform/data/SystemEvent;
.super Ljava/lang/Object;
.source "SystemEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x14b9fb039ef88675L


# instance fields
.field private attachment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private badge:Ljava/lang/String;

.field private dismissGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

.field private joinGroupInviteeRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/User;",
            ">;"
        }
    .end annotation
.end field

.field private joinGroupInviterRef:Lcom/snowballfinance/messageplatform/data/User;

.field private leaveGroupInviteeRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/User;",
            ">;"
        }
    .end annotation
.end field

.field private leaveGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

.field private push:Ljava/lang/Boolean;

.field private sound:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field private updateGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static blockedNotification(Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->BLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->BLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 472
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->BLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 473
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 474
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 475
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 476
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 477
    return-object v1
.end method

.method public static dismissGroupNotification(Ljava/lang/Long;Ljava/util/Set;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/snowballfinance/messageplatform/data/SystemEvent;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 368
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 369
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 370
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 371
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 372
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 374
    return-object v1
.end method

.method public static followedNotification(Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->FOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->FOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 432
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->FOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 433
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 434
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 435
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 436
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 437
    return-object v1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 182
    const-class v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    return-object v0
.end method

.method private getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "\u6211"

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUserNamesDescription(Ljava/util/Set;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 278
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0, p2, p3}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "\u3001"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static joinGroupNotification(Ljava/lang/Long;Ljava/util/Set;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/snowballfinance/messageplatform/data/SystemEvent;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 322
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 323
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 324
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 325
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 326
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 328
    return-object v1
.end method

.method public static leaveGroupNotification(Ljava/lang/Long;Ljava/util/Set;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/snowballfinance/messageplatform/data/SystemEvent;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 345
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 346
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 347
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 348
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 349
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 351
    return-object v1
.end method

.method public static refreshGroupImageNotification()Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 411
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_GROUP_IMAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 412
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 413
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 414
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 415
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 417
    return-object v1
.end method

.method public static refreshGroupNotification()Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 530
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 531
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 532
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 533
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 534
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 535
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 537
    return-object v1
.end method

.method public static refreshUserNotification()Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 550
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 551
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_USER:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 552
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 553
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 554
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 555
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 557
    return-object v1
.end method

.method public static requestJoinGroupNotification()Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 510
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 511
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REQUEST_JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 512
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 513
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 514
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 515
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 517
    return-object v1
.end method

.method public static systemMessage(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 569
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 570
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 571
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 572
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 573
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1, p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 575
    return-object v1
.end method

.method public static unblockedNotification(Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 489
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNBLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNBLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 492
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNBLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 493
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 494
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 495
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 496
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 497
    return-object v1
.end method

.method public static unfollowedNotification(Ljava/lang/Long;Ljava/lang/Long;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNFOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNFOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 452
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNFOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 453
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 454
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 455
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 456
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 457
    return-object v1
.end method

.method public static updateGroupNameNotification(Ljava/lang/Long;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 387
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_NAME:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Lcom/snowballfinance/messageplatform/data/SystemEvent;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;-><init>()V

    .line 391
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V

    .line 392
    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setAttachment(Ljava/util/Map;)V

    .line 393
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setBadge(Ljava/lang/String;)V

    .line 394
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setSound(Ljava/lang/String;)V

    .line 395
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->setText(Ljava/lang/String;)V

    .line 397
    return-object v1
.end method


# virtual methods
.method public getAttachment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    return-object v0
.end method

.method public getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->badge:Ljava/lang/String;

    return-object v0
.end method

.method public getDismissGroupOperatorRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->dismissGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getJoinGroupInviteeRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->joinGroupInviteeRefs:Ljava/util/List;

    return-object v0
.end method

.method public getJoinGroupInviterRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->joinGroupInviterRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getLeaveGroupInviteeRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->leaveGroupInviteeRefs:Ljava/util/List;

    return-object v0
.end method

.method public getLeaveGroupOperatorRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->leaveGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getParticipantsIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 193
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 194
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 198
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 203
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 204
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 209
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public getPush()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->push:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary(Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x18

    .line 223
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 226
    invoke-direct {p0, v0, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u9080\u8bf7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNamesDescription(Ljava/util/Set;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u52a0\u5165\u672c\u7fa4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5df2\u9000\u51fa\u7fa4\u7ec4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNamesDescription(Ljava/util/Set;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u88ab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u51fa\u672c\u7fa4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 247
    const-string v1, "\u7fa4\u7ec4\u5df2\u7ecf\u88ab"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u89e3\u6563"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 253
    const-string v1, "\u7fa4\u7ec4\u5df2\u7ecf\u88ab"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getUserNameDescription(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u547d\u540d\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_NAME:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 264
    :cond_7
    const-string v0, "[\u7cfb\u7edf\u6d88\u606f]"

    goto/16 :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    return-object v0
.end method

.method public getUpdateGroupOperatorRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->updateGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public imEvent()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

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

.method public setAttachment(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->attachment:Ljava/util/Map;

    .line 173
    return-void
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->badge:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setDismissGroupOperatorRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->dismissGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 115
    return-void
.end method

.method public setJoinGroupInviteeRefs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->joinGroupInviteeRefs:Ljava/util/List;

    .line 91
    return-void
.end method

.method public setJoinGroupInviterRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->joinGroupInviterRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 83
    return-void
.end method

.method public setLeaveGroupInviteeRefs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snowballfinance/messageplatform/data/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->leaveGroupInviteeRefs:Ljava/util/List;

    .line 107
    return-void
.end method

.method public setLeaveGroupOperatorRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->leaveGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 99
    return-void
.end method

.method public setPush(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->push:Ljava/lang/Boolean;

    .line 125
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->sound:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->text:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setType(Lcom/snowballfinance/messageplatform/data/SystemEventType;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->type:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 133
    return-void
.end method

.method public setUpdateGroupOperatorRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->updateGroupOperatorRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 75
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/SystemEvent;->url:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public systemEventCommand(Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/snowballfinance/messageplatform/a/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-static {p0, p1, p2}, Lcom/snowballfinance/messageplatform/data/Message;->systemEventMessage(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/snowballfinance/messageplatform/a/e;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/a/e;-><init>()V

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1125
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 303
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snowballfinance/messageplatform/data/Message;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1470
    iput-object v0, v1, Lcom/snowballfinance/messageplatform/a/e;->d:Ljava/util/List;

    .line 304
    return-object v1
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
