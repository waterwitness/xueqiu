.class final Lcom/snowballfinance/message/io/c/h$3;
.super Lcom/snowballfinance/message/io/c/a;
.source "MessageClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowballfinance/message/io/c/h;
.end annotation


# instance fields
.field final synthetic b:Lcom/snowballfinance/message/io/c/h;


# direct methods
.method constructor <init>(Lcom/snowballfinance/message/io/c/h;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    invoke-direct {p0}, Lcom/snowballfinance/message/io/c/a;-><init>()V

    return-void
.end method

.method private a()[B
    .locals 9

    .prologue
    const/16 v3, 0xa

    const/4 v8, 0x0

    .line 458
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 1057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->f:Ljava/lang/String;

    .line 458
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 2057
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->g:Ljava/lang/String;

    .line 459
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 460
    new-array v2, v3, [B

    .line 461
    new-array v3, v3, [B

    .line 462
    array-length v4, v0

    int-to-long v4, v4

    invoke-static {v2, v8, v4, v5}, Lcom/snowballfinance/message/io/d;->c([BIJ)I

    move-result v4

    .line 463
    array-length v5, v1

    int-to-long v6, v5

    invoke-static {v3, v8, v6, v7}, Lcom/snowballfinance/message/io/d;->c([BIJ)I

    move-result v5

    .line 464
    add-int/lit8 v6, v4, 0x1

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 465
    const/16 v7, -0x40

    aput-byte v7, v6, v8

    .line 467
    const/4 v7, 0x1

    invoke-static {v2, v8, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    add-int/lit8 v2, v4, 0x1

    .line 469
    array-length v4, v0

    invoke-static {v0, v8, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    array-length v0, v0

    add-int/2addr v0, v2

    .line 471
    invoke-static {v3, v8, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    add-int/2addr v0, v5

    .line 473
    array-length v2, v1

    invoke-static {v1, v8, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    return-object v6
.end method


# virtual methods
.method protected final a(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V
    .locals 10

    .prologue
    const/4 v2, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 3057
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->i:Lrx/i/c;

    .line 479
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "receive [PKI:%s, ACK:%b] from %s."

    new-array v2, v2, [Ljava/lang/Object;

    .line 4055
    iget-wide v4, p2, Lcom/snowballfinance/message/io/b;->a:J

    .line 481
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 4073
    iget-boolean v3, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 481
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    .line 4092
    iget-object v3, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 481
    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 4106
    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 5090
    iget-boolean v1, p2, Lcom/snowballfinance/message/io/b;->e:Z

    .line 485
    if-eqz v1, :cond_1

    .line 486
    invoke-static {v0}, Lcom/snowballfinance/message/io/b/d;->a([B)[B

    move-result-object v0

    .line 488
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    .line 489
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x400

    .line 491
    invoke-static {v1}, Lcom/snowballfinance/message/a/b;->a([B)Ljava/security/Key;

    move-result-object v1

    .line 492
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 493
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 494
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 6065
    iput-object v1, p1, Lcom/snowballfinance/message/io/c/c;->d:Ljava/security/Key;

    .line 6087
    iput v0, p1, Lcom/snowballfinance/message/io/c/c;->e:I

    .line 7056
    iput-object v2, p1, Lcom/snowballfinance/message/io/c/c;->f:[B

    .line 7092
    iget-object v3, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 498
    invoke-virtual {v3}, Lcom/snowballfinance/message/io/c/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 499
    iget-object v4, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 8057
    iget-object v4, v4, Lcom/snowballfinance/message/io/c/h;->d:Ljava/lang/String;

    .line 499
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 500
    invoke-direct {p0}, Lcom/snowballfinance/message/io/c/h$3;->a()[B

    move-result-object v5

    .line 501
    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x20

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x1

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v5

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 502
    const/4 v7, 0x0

    array-length v8, v3

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 503
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v3

    invoke-static {v3, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    const/4 v7, 0x0

    array-length v8, v3

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x20

    invoke-static {v2, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    array-length v2, v3

    add-int/lit8 v2, v2, 0x21

    iget-object v7, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 9057
    iget-wide v8, v7, Lcom/snowballfinance/message/io/c/h;->c:J

    .line 505
    invoke-static {v6, v2, v8, v9}, Lcom/snowballfinance/message/io/d;->b([BIJ)V

    .line 506
    array-length v2, v3

    add-int/lit8 v2, v2, 0x29

    array-length v7, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 507
    const/4 v2, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x2a

    array-length v8, v4

    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    const/4 v2, 0x0

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2a

    array-length v4, v4

    add-int/2addr v3, v4

    array-length v4, v5

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9073
    iget-boolean v2, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 510
    if-eqz v2, :cond_2

    .line 9092
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 511
    invoke-static {p2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 10092
    iget-object v3, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 512
    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 513
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 514
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "send [ACK:%s] to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 11055
    iget-wide v8, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 514
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x1

    .line 11092
    iget-object v7, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 514
    aput-object v7, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 12092
    :cond_2
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 517
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 518
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "channel[%s] status changes to [OP_PKI]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 13092
    iget-object v7, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 519
    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 14092
    :cond_3
    iget-object v2, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 522
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v2

    .line 14102
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/snowballfinance/message/io/b;->f:Z

    .line 15094
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/snowballfinance/message/io/b;->e:Z

    .line 525
    invoke-static {v6, v1, v0}, Lcom/snowballfinance/message/a/a;->a([BLjava/security/Key;I)[B

    move-result-object v0

    .line 15110
    iput-object v0, v2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 16092
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 526
    invoke-virtual {v0, v2}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 528
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v3, "send [SKI:%s, ACK:%s] to %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 17055
    iget-wide v6, v2, Lcom/snowballfinance/message/io/b;->a:J

    .line 528
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 17073
    iget-boolean v2, v2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 528
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    .line 17092
    iget-object v5, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 528
    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 530
    :cond_4
    new-instance v1, Lcom/snowballfinance/message/io/c/h$3$1;

    invoke-direct {v1, p0, p1}, Lcom/snowballfinance/message/io/c/h$3$1;-><init>(Lcom/snowballfinance/message/io/c/h$3;Lcom/snowballfinance/message/io/c/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_5
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 571
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key specification:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17106
    iget-object v3, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 571
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "the specification of the public key is inappropriate to produce a public key."

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final b(Lcom/snowballfinance/message/io/c/c;Lcom/snowballfinance/message/io/b;)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 579
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "receive [UDM:%s, ACK:%s] from %s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 18055
    iget-wide v6, p2, Lcom/snowballfinance/message/io/b;->a:J

    .line 580
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    .line 18073
    iget-boolean v5, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 580
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    .line 18092
    iget-object v5, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 580
    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 19092
    :cond_0
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 582
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->a(I)Z

    .line 20073
    iget-boolean v0, p2, Lcom/snowballfinance/message/io/b;->c:Z

    .line 583
    if-eqz v0, :cond_1

    .line 20092
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 584
    invoke-static {p2}, Lcom/snowballfinance/message/io/c/d;->b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 21092
    iget-object v1, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 585
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 586
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "send [ACK:%s] to %s."

    new-array v5, v8, [Ljava/lang/Object;

    .line 22055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 587
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v3

    .line 22092
    iget-object v0, p1, Lcom/snowballfinance/message/io/c/c;->b:Lcom/snowballfinance/message/io/c/d;

    .line 587
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 22106
    :cond_1
    :try_start_0
    iget-object v0, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 23098
    iget-boolean v1, p2, Lcom/snowballfinance/message/io/b;->f:Z

    .line 593
    if-eqz v1, :cond_2

    .line 24061
    iget-object v1, p1, Lcom/snowballfinance/message/io/c/c;->f:[B

    .line 594
    invoke-static {v0, v1}, Lcom/snowballfinance/message/a/c;->a([B[B)[B

    move-result-object v0

    .line 24090
    :cond_2
    iget-boolean v1, p2, Lcom/snowballfinance/message/io/b;->e:Z

    .line 596
    if-eqz v1, :cond_3

    .line 597
    invoke-static {v0}, Lcom/snowballfinance/message/io/b/d;->a([B)[B

    move-result-object v0

    .line 599
    :cond_3
    new-instance v4, Lcom/snowballfinance/messageplatform/a/a/a;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v1}, Lcom/snowballfinance/messageplatform/a/a/a;-><init>(Ljava/io/InputStream;)V

    .line 25038
    iget-object v0, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    .line 25039
    if-ltz v0, :cond_4

    invoke-static {}, Lcom/snowballfinance/messageplatform/a/s;->values()[Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 25040
    :cond_4
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown command type"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "handle [UDM:%s] failed."

    new-array v2, v2, [Ljava/lang/Object;

    .line 50297
    iget-wide v6, p2, Lcom/snowballfinance/message/io/b;->a:J

    .line 621
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    :cond_5
    :goto_0
    return-void

    .line 25042
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/snowballfinance/messageplatform/a/s;->values()[Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v1

    aget-object v0, v1, v0

    .line 25043
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->b()I

    move-result v1

    .line 25044
    iget-object v5, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/d;->h()I

    move-result v5

    .line 25045
    new-array v5, v5, [B

    .line 25046
    iget-object v6, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v6, v5}, Lcom/snowballfinance/messageplatform/a/a/d;->a([B)V

    .line 25048
    iget-object v6, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v6}, Lcom/snowballfinance/messageplatform/a/a/d;->h()I

    move-result v6

    .line 25050
    invoke-static {v5}, Lcom/snowballfinance/messageplatform/b/a;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 25054
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->a:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 25195
    iget-object v0, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 26177
    iget v7, v0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 25196
    new-instance v0, Lcom/snowballfinance/messageplatform/a/b;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/b;-><init>()V

    .line 25197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 27133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 25199
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 27197
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/b;->c:Ljava/lang/Long;

    .line 25200
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 27205
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/b;->d:Ljava/lang/String;

    .line 25201
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 28177
    iget v1, v1, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 25201
    sub-int/2addr v1, v7

    .line 25202
    sub-int v1, v6, v1

    if-lez v1, :cond_8

    .line 25204
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 25205
    iget-object v5, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 25206
    iget-object v6, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 29173
    const/4 v7, 0x0

    iput v7, v6, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 25207
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 25208
    iget-object v5, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v5

    .line 29213
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/b;->e:Ljava/lang/String;

    .line 25211
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25212
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 29221
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/b;->f:Ljava/lang/String;

    .line 50284
    :cond_8
    :goto_1
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v1

    .line 601
    sget-object v4, Lcom/snowballfinance/messageplatform/a/s;->P:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v1, v4}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 602
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 50285
    iget-object v4, v1, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 602
    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 603
    :try_start_2
    check-cast v0, Lcom/snowballfinance/messageplatform/a/z;

    .line 604
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 50286
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50287
    iget-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 604
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 605
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 50288
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50289
    iget-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 605
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/i/a;

    .line 606
    invoke-virtual {v1, v0}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {v1}, Lrx/i/a;->a()V

    .line 609
    :cond_9
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 610
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    sget-object v5, Lcom/snowballfinance/message/io/c/k;->b:Lcom/snowballfinance/message/io/c/k;

    .line 50290
    iget-object v0, v0, Lcom/snowballfinance/messageplatform/a/z;->d:Ljava/lang/String;

    .line 50291
    iget-object v6, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 610
    array-length v6, v6

    add-int/lit8 v6, v6, 0xc

    .line 50292
    invoke-virtual {v1, v5, v0, v6}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V

    .line 612
    :cond_a
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 25056
    :cond_b
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->b:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 30220
    new-instance v0, Lcom/snowballfinance/messageplatform/a/g;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/g;-><init>()V

    .line 30221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 31133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 30223
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 31285
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/g;->c:Ljava/lang/Long;

    goto :goto_1

    .line 25058
    :cond_c
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->c:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 32228
    new-instance v0, Lcom/snowballfinance/messageplatform/a/c;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/c;-><init>()V

    .line 32229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 33133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 32231
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 33252
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/c;->c:Ljava/lang/Long;

    .line 32232
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 33260
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/c;->d:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_d
    move v1, v3

    .line 32232
    goto :goto_2

    .line 25060
    :cond_e
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->m:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 34237
    new-instance v0, Lcom/snowballfinance/messageplatform/a/t;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/t;-><init>()V

    .line 34238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 35133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 34240
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 35332
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/t;->c:Ljava/lang/Long;

    .line 34241
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 35340
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/t;->d:Ljava/lang/Long;

    .line 34242
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v1

    if-ne v1, v2, :cond_f

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 35348
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/t;->e:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_f
    move v1, v3

    .line 34242
    goto :goto_3

    .line 25062
    :cond_10
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->n:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 36247
    new-instance v0, Lcom/snowballfinance/messageplatform/a/q;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/q;-><init>()V

    .line 36248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 37133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 36250
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 37383
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 36251
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 37391
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 36252
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v1

    if-ne v1, v2, :cond_11

    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 37399
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_11
    move v1, v3

    .line 36252
    goto :goto_4

    .line 25064
    :cond_12
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->k:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 25065
    invoke-virtual {v4, v1, v5, v6}, Lcom/snowballfinance/messageplatform/a/a/a;->a(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/e;

    move-result-object v0

    goto/16 :goto_1

    .line 25066
    :cond_13
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->l:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 25067
    invoke-virtual {v4, v1, v5, v6}, Lcom/snowballfinance/messageplatform/a/a/a;->b(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/f;

    move-result-object v0

    goto/16 :goto_1

    .line 25068
    :cond_14
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->u:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 38290
    new-instance v0, Lcom/snowballfinance/messageplatform/a/l;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/l;-><init>()V

    .line 38291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 39133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 38293
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 39609
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->c:Ljava/lang/Long;

    .line 38294
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 39617
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->d:Ljava/lang/Long;

    .line 38295
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v1

    if-ne v1, v2, :cond_17

    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 39641
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->e:Ljava/lang/Boolean;

    .line 38296
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v1

    .line 38297
    iget-object v5, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v5

    .line 38298
    iget-object v6, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v6}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v6

    .line 38299
    iget-object v7, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    .line 40173
    const/4 v8, 0x0

    iput v8, v7, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 38300
    if-eqz v1, :cond_15

    .line 38301
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 40625
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->f:Ljava/lang/Long;

    .line 38303
    :cond_15
    if-eqz v5, :cond_16

    .line 38304
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 40633
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->g:Ljava/lang/Long;

    .line 38306
    :cond_16
    if-eqz v6, :cond_8

    .line 38307
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41601
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->h:Ljava/lang/Integer;

    goto/16 :goto_1

    :cond_17
    move v1, v3

    .line 38295
    goto :goto_5

    .line 25070
    :cond_18
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->w:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 42177
    new-instance v0, Lcom/snowballfinance/messageplatform/a/d;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/d;-><init>()V

    .line 42178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 43133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 42180
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 43505
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->c:Ljava/lang/Long;

    .line 42181
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 43513
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 42182
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v1

    if-ne v1, v2, :cond_19

    move v1, v2

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 43521
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_19
    move v1, v3

    .line 42182
    goto :goto_6

    .line 25072
    :cond_1a
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->v:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 25073
    invoke-virtual {v4, v1, v5, v6}, Lcom/snowballfinance/messageplatform/a/a/a;->c(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/m;

    move-result-object v0

    goto/16 :goto_1

    .line 25074
    :cond_1b
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->E:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 44332
    new-instance v0, Lcom/snowballfinance/messageplatform/a/j;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/j;-><init>()V

    .line 44333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 45133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 44335
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 45698
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/j;->c:Ljava/lang/Long;

    goto/16 :goto_1

    .line 25076
    :cond_1c
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->F:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 25077
    invoke-virtual {v4, v1, v5, v6}, Lcom/snowballfinance/messageplatform/a/a/a;->d(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/k;

    move-result-object v0

    goto/16 :goto_1

    .line 25078
    :cond_1d
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->H:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 46361
    new-instance v0, Lcom/snowballfinance/messageplatform/a/h;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/h;-><init>()V

    .line 46362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 47125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 47133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 46364
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 47724
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/h;->c:Ljava/lang/Long;

    goto/16 :goto_1

    .line 25080
    :cond_1e
    sget-object v7, Lcom/snowballfinance/messageplatform/a/s;->I:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v7}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 25081
    invoke-virtual {v4, v1, v5, v6}, Lcom/snowballfinance/messageplatform/a/a/a;->e(ILjava/lang/String;I)Lcom/snowballfinance/messageplatform/a/i;

    move-result-object v0

    goto/16 :goto_1

    .line 25082
    :cond_1f
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->G:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 48187
    new-instance v0, Lcom/snowballfinance/messageplatform/a/u;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/u;-><init>()V

    .line 48188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 49133
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 48190
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/data/MessageSession;->decodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v1

    .line 49546
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/u;->c:Lcom/snowballfinance/messageplatform/data/MessageSession;

    goto/16 :goto_1

    .line 25084
    :cond_20
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->d:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 50170
    new-instance v0, Lcom/snowballfinance/messageplatform/a/r;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/r;-><init>()V

    .line 50171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50174
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 50176
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 25086
    :cond_21
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->Z:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 50178
    new-instance v0, Lcom/snowballfinance/messageplatform/a/p;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/p;-><init>()V

    .line 50179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50184
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 50186
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 50181
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->c()I

    move-result v1

    .line 50188
    iput v1, v0, Lcom/snowballfinance/messageplatform/a/p;->d:I

    .line 50182
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 50190
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/p;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 25088
    :cond_22
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->N:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 50192
    new-instance v0, Lcom/snowballfinance/messageplatform/a/n;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/n;-><init>()V

    .line 50193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50197
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 50199
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 50195
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 50201
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/n;->c:Ljava/lang/Long;

    goto/16 :goto_1

    .line 25090
    :cond_23
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->O:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 50203
    iget-object v0, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/d;->c()I

    move-result v6

    .line 50204
    if-le v6, v8, :cond_24

    .line 50205
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown command version"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50207
    :cond_24
    new-instance v0, Lcom/snowballfinance/messageplatform/a/y;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/y;-><init>()V

    .line 50208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50217
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 50219
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 50210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50221
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->c:Ljava/lang/Integer;

    .line 50211
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 50223
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->f:Ljava/lang/Long;

    .line 50212
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 50225
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->e:Ljava/lang/String;

    .line 50213
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 50227
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    .line 50214
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v1

    .line 50229
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->h:[B

    .line 50215
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v1

    .line 50231
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/y;->g:[B

    goto/16 :goto_1

    .line 25092
    :cond_25
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->P:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 50233
    iget-object v0, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/d;->c()I

    move-result v6

    .line 50234
    if-le v6, v8, :cond_26

    .line 50235
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown command version"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50237
    :cond_26
    new-instance v0, Lcom/snowballfinance/messageplatform/a/z;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/z;-><init>()V

    .line 50238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50246
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 50248
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 50240
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50250
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/z;->c:Ljava/lang/Integer;

    .line 50241
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 50252
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/z;->d:Ljava/lang/String;

    .line 50242
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50254
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 50243
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v1

    .line 50256
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/z;->g:[B

    .line 50244
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v1

    .line 50258
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    goto/16 :goto_1

    .line 25094
    :cond_27
    sget-object v6, Lcom/snowballfinance/messageplatform/a/s;->Q:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v6}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 50260
    iget-object v0, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/d;->c()I

    move-result v6

    .line 50261
    if-le v6, v8, :cond_28

    .line 50262
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown command version"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50264
    :cond_28
    new-instance v0, Lcom/snowballfinance/messageplatform/a/w;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/w;-><init>()V

    .line 50265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50272
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 50274
    iput-object v5, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 50267
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50276
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/w;->c:Ljava/lang/Integer;

    .line 50268
    invoke-static {}, Lcom/snowballfinance/messageplatform/a/x;->a()[I

    move-result-object v1

    iget-object v5, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/a/a/d;->c()I

    move-result v5

    aget v1, v1, v5

    .line 50278
    iput v1, v0, Lcom/snowballfinance/messageplatform/a/w;->f:I

    .line 50269
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v1

    .line 50280
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/w;->e:[B

    .line 50270
    iget-object v1, v4, Lcom/snowballfinance/messageplatform/a/a/a;->b:Lcom/snowballfinance/messageplatform/a/a/d;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/a/d;->i()[B

    move-result-object v1

    .line 50282
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/w;->d:[B

    goto/16 :goto_1

    .line 25097
    :cond_29
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/c;

    const-string v1, "unknown command type"

    invoke-direct {v0, v1}, Lcom/snowballfinance/messageplatform/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_2a
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    .line 50293
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/h;->j:Lrx/i/c;

    .line 614
    invoke-virtual {v1, v0}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 615
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 616
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h$3;->b:Lcom/snowballfinance/message/io/c/h;

    sget-object v4, Lcom/snowballfinance/message/io/c/k;->b:Lcom/snowballfinance/message/io/c/k;

    .line 50294
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/s;->name()Ljava/lang/String;

    move-result-object v0

    .line 50295
    iget-object v5, p2, Lcom/snowballfinance/message/io/b;->g:[B

    .line 616
    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    .line 50296
    invoke-virtual {v1, v4, v0, v5}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
