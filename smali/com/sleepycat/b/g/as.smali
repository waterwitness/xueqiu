.class public final Lcom/sleepycat/b/g/as;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Lcom/sleepycat/b/q/a;


# instance fields
.field private a:I

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput p1, p0, Lcom/sleepycat/b/g/as;->a:I

    .line 553
    iput-object p2, p0, Lcom/sleepycat/b/g/as;->b:[B

    .line 554
    iput-object p3, p0, Lcom/sleepycat/b/g/as;->c:[B

    .line 555
    return-void
.end method

.method private static a([B[B)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 604
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 606
    :cond_0
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 619
    :cond_1
    :goto_0
    return v1

    .line 609
    :cond_2
    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 613
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 614
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_1

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 619
    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/sleepycat/b/g/as;->a:I

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sleepycat/b/g/as;->b:[B

    return-object v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sleepycat/b/g/as;->c:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 571
    instance-of v1, p1, Lcom/sleepycat/b/g/as;

    if-nez v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 575
    :cond_1
    check-cast p1, Lcom/sleepycat/b/g/as;

    .line 1558
    iget v1, p1, Lcom/sleepycat/b/g/as;->a:I

    .line 576
    iget v2, p0, Lcom/sleepycat/b/g/as;->a:I

    if-ne v1, v2, :cond_0

    .line 1562
    iget-object v1, p1, Lcom/sleepycat/b/g/as;->b:[B

    .line 579
    iget-object v2, p0, Lcom/sleepycat/b/g/as;->b:[B

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/as;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    iget-object v1, p1, Lcom/sleepycat/b/g/as;->c:[B

    .line 579
    iget-object v2, p0, Lcom/sleepycat/b/g/as;->c:[B

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/as;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 589
    iget v0, p0, Lcom/sleepycat/b/g/as;->a:I

    .line 590
    iget-object v2, p0, Lcom/sleepycat/b/g/as;->b:[B

    if-eqz v2, :cond_0

    move v2, v0

    move v0, v1

    .line 591
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/b/g/as;->b:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 592
    iget-object v3, p0, Lcom/sleepycat/b/g/as;->b:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/as;->c:[B

    if-eqz v0, :cond_2

    .line 596
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/g/as;->c:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/sleepycat/b/g/as;->c:[B

    aget-byte v0, v0, v1

    add-int/2addr v2, v0

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 600
    :cond_2
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    const-string v1, "<Xid formatId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/g/as;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, "\" gTxnId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v1, p0, Lcom/sleepycat/b/g/as;->b:[B

    if-nez v1, :cond_0

    .line 628
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :goto_0
    const-string v1, "\" bqual=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v1, p0, Lcom/sleepycat/b/g/as;->c:[B

    if-nez v1, :cond_1

    .line 634
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :goto_1
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 630
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/b/g/as;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 636
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/b/g/as;->c:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
