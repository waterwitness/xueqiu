.class public Lcom/snowballfinance/messageplatform/data/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final PUSH_SUMMARY_LENGTH:I = 0x18

.field public static final SUMMARY_LENGTH:I = 0x18

.field private static final lastImportId:Ljava/lang/Long;

.field private static final lastSequenceId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J = 0x201ad477d217ab21L

.field private static final wrongPrefix:Ljava/lang/String; = "Basic "


# instance fields
.field private card:[B

.field private fromGroup:Ljava/lang/Boolean;

.field private fromGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

.field private fromId:Ljava/lang/Long;

.field private fromUserRef:Lcom/snowballfinance/messageplatform/data/User;

.field private image:[B

.field private lightweight:Ljava/lang/Boolean;

.field private location:[Ljava/lang/Double;

.field private messageId:Ljava/lang/Long;

.field private messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

.field private plain:Ljava/lang/String;

.field private sequenceId:Ljava/lang/Long;

.field private sticker:Ljava/lang/Integer;

.field private summary:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;

.field private toGroup:Ljava/lang/Boolean;

.field private toGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

.field private toId:Ljava/lang/Long;

.field private toUserRef:Lcom/snowballfinance/messageplatform/data/User;

.field private view:Ljava/lang/String;

.field private voice:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-class v0, Lcom/snowballfinance/messageplatform/data/Message;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snowballfinance/messageplatform/data/Message;->$assertionsDisabled:Z

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Message;->lastSequenceId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 579
    const-wide/32 v0, 0x127047

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Message;->lastImportId:Ljava/lang/Long;

    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMessage(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/Message;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 505
    new-instance v3, Lcom/snowballfinance/messageplatform/data/Message;

    invoke-direct {v3}, Lcom/snowballfinance/messageplatform/data/Message;-><init>()V

    .line 506
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    .line 507
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/snowballfinance/messageplatform/data/MessageType;->values()[Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 508
    :cond_0
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown message type"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    invoke-static {}, Lcom/snowballfinance/messageplatform/data/MessageType;->values()[Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v4

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 511
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageId(Ljava/lang/Long;)V

    .line 512
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setSequenceId(Ljava/lang/Long;)V

    .line 513
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setFromId(Ljava/lang/Long;)V

    .line 514
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setToId(Ljava/lang/Long;)V

    .line 515
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setFromGroup(Ljava/lang/Boolean;)V

    .line 516
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setToGroup(Ljava/lang/Boolean;)V

    .line 517
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setTimestamp(Ljava/lang/Long;)V

    .line 518
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v0

    .line 519
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v4

    .line 520
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v5

    .line 521
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v6

    .line 522
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v7

    .line 523
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v8

    .line 524
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v9

    .line 1173
    iput v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 526
    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setPlain(Ljava/lang/String;)V

    .line 529
    :cond_2
    if-eqz v4, :cond_3

    .line 530
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setView(Ljava/lang/String;)V

    .line 532
    :cond_3
    if-eqz v5, :cond_4

    .line 533
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setSticker(Ljava/lang/Integer;)V

    .line 535
    :cond_4
    if-eqz v6, :cond_5

    .line 536
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setCard([B)V

    .line 538
    :cond_5
    if-eqz v7, :cond_6

    .line 539
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setImage([B)V

    .line 541
    :cond_6
    if-eqz v8, :cond_7

    .line 542
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v0

    .line 543
    invoke-static {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->decodeMessageExt(Lcom/snowballfinance/messageplatform/data/Message;[B)V

    .line 545
    :cond_7
    if-eqz v9, :cond_8

    .line 546
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->f()D

    move-result-wide v4

    .line 547
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->f()D

    move-result-wide v6

    .line 548
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setLocation([Ljava/lang/Double;)V

    .line 550
    :cond_8
    return-object v3

    :cond_9
    move v0, v2

    .line 515
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 516
    goto/16 :goto_1
.end method

.method private static decodeMessageExt(Lcom/snowballfinance/messageplatform/data/Message;[B)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    new-instance v2, Lcom/snowballfinance/messageplatform/a/a/d;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/snowballfinance/messageplatform/a/a/d;-><init>(Ljava/io/InputStream;)V

    .line 555
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v3

    .line 556
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v4

    .line 557
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v5

    .line 2173
    iput v1, v2, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 559
    if-eqz v3, :cond_0

    .line 560
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snowballfinance/messageplatform/data/Message;->setVoice([B)V

    .line 562
    :cond_0
    if-eqz v4, :cond_1

    .line 563
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snowballfinance/messageplatform/data/Message;->setSummary(Ljava/lang/String;)V

    .line 565
    :cond_1
    if-eqz v5, :cond_2

    .line 566
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setLightweight(Ljava/lang/Boolean;)V

    .line 568
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 566
    goto :goto_0
.end method

.method private encodeMessageExt()[B
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    new-instance v5, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-direct {v5}, Lcom/snowballfinance/messageplatform/a/a/e;-><init>()V

    .line 485
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->voice:[B

    if-eqz v0, :cond_3

    move v0, v1

    .line 486
    :goto_0
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v3, v1

    .line 487
    :goto_1
    iget-object v4, p0, Lcom/snowballfinance/messageplatform/data/Message;->lightweight:Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    move v4, v1

    .line 488
    :goto_2
    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 489
    invoke-virtual {v5, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 490
    invoke-virtual {v5, v4}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 491
    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a()V

    .line 492
    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->voice:[B

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 495
    :cond_0
    if-eqz v3, :cond_1

    .line 496
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 498
    :cond_1
    if-eqz v4, :cond_2

    .line 499
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->lightweight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v5, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 501
    :cond_2
    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/e;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    .line 485
    goto :goto_0

    :cond_4
    move v3, v2

    .line 486
    goto :goto_1

    :cond_5
    move v4, v2

    .line 487
    goto :goto_2

    :cond_6
    move v1, v2

    .line 499
    goto :goto_3
.end method

.method public static getNextSequenceId()J
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/snowballfinance/messageplatform/data/Message;->lastSequenceId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method private getViewUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    const-string v0, ""

    .line 315
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    .line 1021
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 316
    :goto_0
    if-eqz v1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    .line 324
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static removeWrongPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    if-eqz p0, :cond_0

    .line 584
    const-string v0, "Basic "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "Basic "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 588
    :cond_0
    return-object p0
.end method

.method public static systemEventMessage(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/snowballfinance/messageplatform/data/Message;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Lcom/snowballfinance/messageplatform/data/Message;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/data/Message;-><init>()V

    .line 426
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setFromGroup(Ljava/lang/Boolean;)V

    .line 427
    sget-object v1, Lcom/snowballfinance/messageplatform/data/Predef;->SYSTEM_USER_ID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setFromId(Ljava/lang/Long;)V

    .line 428
    invoke-virtual {v0, p1}, Lcom/snowballfinance/messageplatform/data/Message;->setToId(Ljava/lang/Long;)V

    .line 429
    invoke-virtual {v0, p2}, Lcom/snowballfinance/messageplatform/data/Message;->setToGroup(Ljava/lang/Boolean;)V

    .line 430
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setPlain(Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->SYSTEM_EVENT:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Message;->setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V

    .line 432
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/snowballfinance/messageplatform/data/Message;
    .locals 3

    .prologue
    .line 385
    :try_start_0
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/a/e;-><init>()V

    .line 386
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/Message;->encodeMessage(Lcom/snowballfinance/messageplatform/a/a/e;)V

    .line 387
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->toByteArray()[B

    move-result-object v1

    .line 388
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->close()V

    .line 389
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/d;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lcom/snowballfinance/messageplatform/a/a/d;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/Message;->decodeMessage(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->clone()Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroup:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeMessage(Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 437
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 438
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/Message;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 439
    :cond_1
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/Message;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->toId:Ljava/lang/Long;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->voice:[B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->lightweight:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    :cond_3
    move v0, v2

    .line 443
    :goto_0
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v3}, Lcom/snowballfinance/messageplatform/data/MessageType;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 444
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 445
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->sequenceId:Ljava/lang/Long;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 446
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 447
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->toId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 448
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroup:Ljava/lang/Boolean;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroup:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v2

    :goto_3
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 449
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroup:Ljava/lang/Boolean;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroup:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    :goto_4
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 450
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->timestamp:Ljava/lang/Long;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->timestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_4
    invoke-virtual {p1, v6, v7}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 451
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v3, v2

    :goto_5
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 452
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    if-eqz v3, :cond_12

    move v3, v2

    :goto_6
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 453
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->sticker:Ljava/lang/Integer;

    if-eqz v3, :cond_13

    move v3, v2

    :goto_7
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 454
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->card:[B

    if-eqz v3, :cond_14

    move v3, v2

    :goto_8
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 455
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->image:[B

    if-eqz v3, :cond_15

    move v3, v2

    :goto_9
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 456
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 457
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    array-length v3, v3

    if-ne v3, v8, :cond_16

    move v3, v2

    :goto_a
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 458
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/a/a/e;->a()V

    .line 459
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 460
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 462
    :cond_5
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 463
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 465
    :cond_6
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->sticker:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 466
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->sticker:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->b(I)V

    .line 468
    :cond_7
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->card:[B

    if-eqz v3, :cond_8

    .line 469
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->card:[B

    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 471
    :cond_8
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->image:[B

    if-eqz v3, :cond_9

    .line 472
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Message;->image:[B

    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 474
    :cond_9
    if-eqz v0, :cond_a

    .line 475
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/data/Message;->encodeMessageExt()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a([B)V

    .line 477
    :cond_a
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    array-length v0, v0

    if-ne v0, v8, :cond_b

    .line 478
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(D)V

    .line 479
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(D)V

    .line 481
    :cond_b
    return-void

    :cond_c
    move v0, v1

    .line 441
    goto/16 :goto_0

    :cond_d
    move-wide v4, v6

    .line 444
    goto/16 :goto_1

    :cond_e
    move-wide v4, v6

    .line 445
    goto/16 :goto_2

    :cond_f
    move v3, v1

    .line 448
    goto/16 :goto_3

    :cond_10
    move v3, v1

    .line 449
    goto/16 :goto_4

    :cond_11
    move v3, v1

    .line 451
    goto/16 :goto_5

    :cond_12
    move v3, v1

    .line 452
    goto/16 :goto_6

    :cond_13
    move v3, v1

    .line 453
    goto/16 :goto_7

    :cond_14
    move v3, v1

    .line 454
    goto/16 :goto_8

    :cond_15
    move v3, v1

    .line 455
    goto/16 :goto_9

    :cond_16
    move v3, v1

    .line 457
    goto :goto_a
.end method

.method public fixImportPrefixIssue()V
    .locals 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/snowballfinance/messageplatform/data/Message;->lastImportId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/Message;->removeWrongPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    .line 577
    :cond_1
    return-void
.end method

.method public generateSummary()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 333
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 336
    :cond_1
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->SYSTEM_EVENT:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string v0, "[\u7cfb\u7edf\u6d88\u606f]"

    goto :goto_0

    .line 338
    :cond_2
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    const-string v0, "[\u56fe\u7247]"

    goto :goto_0

    .line 340
    :cond_3
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getViewUrl()Ljava/lang/String;

    move-result-object v1

    .line 342
    const-string v0, "[\u5361\u7247]"

    .line 343
    if-eqz v1, :cond_0

    .line 344
    sget-object v2, Lcom/snowballfinance/messageplatform/b/e;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    const-string v0, "[\u7fa4\u7ec4\u9875]"

    goto :goto_0

    .line 346
    :cond_4
    sget-object v2, Lcom/snowballfinance/messageplatform/b/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    invoke-static {v1}, Lcom/snowballfinance/messageplatform/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/e;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_5
    sget-object v2, Lcom/snowballfinance/messageplatform/b/e;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/snowballfinance/messageplatform/b/e;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    :cond_6
    const-string v0, "[\u8ba8\u8bba]"

    goto/16 :goto_0

    .line 353
    :cond_7
    sget-object v2, Lcom/snowballfinance/messageplatform/b/e;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v0, "[\u4e2a\u4eba\u9875]"

    goto/16 :goto_0

    .line 358
    :cond_8
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->CARD:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 359
    const-string v0, "[\u540d\u7247]"

    goto/16 :goto_0

    .line 360
    :cond_9
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->LOCATION:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 361
    const-string v0, "[\u4f4d\u7f6e]"

    goto/16 :goto_0

    .line 362
    :cond_a
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->VOICE:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 363
    const-string v0, "[\u58f0\u97f3]"

    goto/16 :goto_0

    .line 364
    :cond_b
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->STICKER:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 365
    const-string v0, "[\u8d34\u7eb8]"

    goto/16 :goto_0

    .line 367
    :cond_c
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 368
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_d

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

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

    .line 371
    :cond_d
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    goto/16 :goto_0

    .line 373
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getCard()[B
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->card:[B

    return-object v0
.end method

.method public getFromGroup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroup:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFromGroupRef()Lcom/snowballfinance/messageplatform/data/Group;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

    return-object v0
.end method

.method public getFromId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFromUserRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromUserRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getImage()[B
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->image:[B

    return-object v0
.end method

.method public getLightweight()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->lightweight:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocation()[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessageType()Lcom/snowballfinance/messageplatform/data/MessageType;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    return-object v0
.end method

.method public getPlain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->sequenceId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSticker()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->sticker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemEvent()Lcom/snowballfinance/messageplatform/data/SystemEvent;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->isSystemMessage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getPlain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->fromJson(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEvent;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getToGroup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroup:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getToGroupRef()Lcom/snowballfinance/messageplatform/data/Group;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

    return-object v0
.end method

.method public getToId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->toId:Ljava/lang/Long;

    return-object v0
.end method

.method public getToUserRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->toUserRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    return-object v0
.end method

.method public getVoice()[B
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->voice:[B

    return-object v0
.end method

.method public isSystemMessage()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->SYSTEM_EVENT:Lcom/snowballfinance/messageplatform/data/MessageType;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCard([B)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->card:[B

    .line 222
    return-void
.end method

.method public setFromGroup(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroup:Ljava/lang/Boolean;

    .line 262
    return-void
.end method

.method public setFromGroupRef(Lcom/snowballfinance/messageplatform/data/Group;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

    .line 282
    return-void
.end method

.method public setFromId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    .line 166
    return-void
.end method

.method public setFromUserRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromUserRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 274
    return-void
.end method

.method public setImage([B)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->image:[B

    .line 230
    return-void
.end method

.method public setLightweight(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->lightweight:Ljava/lang/Boolean;

    .line 142
    return-void
.end method

.method public setLocation([Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->location:[Ljava/lang/Double;

    .line 246
    return-void
.end method

.method public setMessageId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    .line 150
    return-void
.end method

.method public setMessageType(Lcom/snowballfinance/messageplatform/data/MessageType;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 190
    return-void
.end method

.method public setPlain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->plain:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setSequenceId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->sequenceId:Ljava/lang/Long;

    .line 158
    return-void
.end method

.method public setSticker(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->sticker:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->summary:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->timestamp:Ljava/lang/Long;

    .line 182
    return-void
.end method

.method public setToGroup(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroup:Ljava/lang/Boolean;

    .line 254
    return-void
.end method

.method public setToGroupRef(Lcom/snowballfinance/messageplatform/data/Group;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

    .line 298
    return-void
.end method

.method public setToId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toId:Ljava/lang/Long;

    .line 174
    return-void
.end method

.method public setToUserRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toUserRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 290
    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->view:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setVoice([B)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Message;->voice:[B

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message{messageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->fromGroup:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->toGroup:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->messageType:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lightweight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Message;->lightweight:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->generateSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useAbsUrl()V
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageType()Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 414
    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->d:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/b/c;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snowballfinance/messageplatform/b/c;->d:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setImage([B)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageType()Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getView()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getView()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/b/c;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->a:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/b/c;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snowballfinance/messageplatform/b/c;->a:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public useDynamicUrl()V
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageType()Lcom/snowballfinance/messageplatform/data/MessageType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Message;->getImage()[B

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 402
    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->d:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snowballfinance/messageplatform/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/Message;->setImage([B)V

    .line 405
    :cond_0
    return-void
.end method
