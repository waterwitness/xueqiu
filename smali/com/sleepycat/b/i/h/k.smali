.class public abstract Lcom/sleepycat/b/i/h/k;
.super Lcom/sleepycat/b/i/h/d;
.source "BinaryProtocol.java"


# instance fields
.field final synthetic k:Lcom/sleepycat/b/i/h/a;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/a;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;[B)V
    .locals 1

    .prologue
    .line 725
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 726
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 727
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;[Lcom/sleepycat/b/i/c/am;)V
    .locals 3

    .prologue
    .line 731
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 732
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 733
    invoke-static {v2}, Lcom/sleepycat/b/i/c/t;->b(Lcom/sleepycat/b/i/c/am;)[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sleepycat/b/i/h/k;->a(Ljava/nio/ByteBuffer;[B)V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 667
    .line 1761
    array-length v6, p1

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_f

    aget-object v0, p1, v3

    .line 1762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1763
    const-class v5, Ljava/lang/Long;

    if-ne v4, v5, :cond_0

    .line 1764
    add-int/lit8 v0, v1, 0x8

    .line 1761
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 1765
    :cond_0
    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1

    .line 1766
    add-int/lit8 v0, v1, 0x4

    goto :goto_1

    .line 1767
    :cond_1
    const-class v5, Ljava/lang/Short;

    if-ne v4, v5, :cond_2

    .line 1768
    add-int/lit8 v0, v1, 0x2

    goto :goto_1

    .line 1769
    :cond_2
    const-class v5, Ljava/lang/Byte;

    if-ne v4, v5, :cond_3

    .line 1770
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 1771
    :cond_3
    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_4

    .line 1772
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 1773
    :cond_4
    const-class v5, Lcom/sleepycat/b/p/au;

    if-ne v4, v5, :cond_5

    .line 1774
    add-int/lit8 v0, v1, 0x8

    goto :goto_1

    .line 1775
    :cond_5
    const-class v5, Ljava/lang/Enum;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1776
    iget-object v4, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 1777
    :cond_6
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_7

    .line 1778
    iget-object v4, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 1779
    :cond_7
    const-class v5, Ljava/lang/Double;

    if-ne v4, v5, :cond_8

    .line 1780
    iget-object v4, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 1781
    :cond_8
    const-class v5, [Ljava/lang/String;

    if-ne v4, v5, :cond_a

    .line 1782
    add-int/lit8 v1, v1, 0x4

    .line 1783
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1784
    array-length v7, v0

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_9

    aget-object v5, v0, v4

    .line 1785
    iget-object v8, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    invoke-virtual {v8, v5}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v1

    .line 1784
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_2

    :cond_9
    move v0, v1

    .line 1787
    goto :goto_1

    :cond_a
    const-class v5, [B

    if-ne v4, v5, :cond_b

    .line 1788
    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    goto/16 :goto_1

    .line 1789
    :cond_b
    const-class v5, [Lcom/sleepycat/b/i/c/am;

    if-ne v4, v5, :cond_d

    .line 1790
    check-cast v0, [Lcom/sleepycat/b/i/c/am;

    check-cast v0, [Lcom/sleepycat/b/i/c/am;

    .line 2746
    const/4 v4, 0x4

    .line 2747
    array-length v7, v0

    move v5, v4

    move v4, v2

    :goto_3
    if-ge v4, v7, :cond_c

    aget-object v8, v0, v4

    .line 2748
    invoke-static {v8}, Lcom/sleepycat/b/i/c/t;->b(Lcom/sleepycat/b/i/c/am;)[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v5, v8

    .line 2747
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1790
    :cond_c
    add-int v0, v1, v5

    goto/16 :goto_1

    .line 1791
    :cond_d
    instance-of v5, v0, Lcom/sleepycat/b/i/c/b/x;

    if-eqz v5, :cond_e

    .line 1793
    check-cast v0, Lcom/sleepycat/b/i/c/b/x;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    .line 3080
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1793
    add-int/2addr v0, v1

    goto/16 :goto_1

    .line 1796
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 670
    :cond_f
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/i/h/k;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 672
    array-length v5, p1

    move v1, v2

    :goto_4
    if-ge v1, v5, :cond_1f

    aget-object v0, p1, v1

    .line 673
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 674
    const-class v6, Ljava/lang/Long;

    if-ne v3, v6, :cond_11

    .line 675
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 672
    :cond_10
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 676
    :cond_11
    const-class v6, Ljava/lang/Integer;

    if-ne v3, v6, :cond_12

    .line 677
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_5

    .line 678
    :cond_12
    const-class v6, Ljava/lang/Short;

    if-ne v3, v6, :cond_13

    .line 679
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v4, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;S)V

    goto :goto_5

    .line 680
    :cond_13
    const-class v6, Ljava/lang/Byte;

    if-ne v3, v6, :cond_14

    .line 681
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 682
    :cond_14
    const-class v6, Ljava/lang/Boolean;

    if-ne v3, v6, :cond_16

    .line 683
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_15
    move v0, v2

    goto :goto_6

    .line 686
    :cond_16
    const-class v6, Lcom/sleepycat/b/p/au;

    if-ne v3, v6, :cond_17

    .line 687
    check-cast v0, Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v6, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 687
    invoke-static {v4, v6, v7}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_5

    .line 688
    :cond_17
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 690
    check-cast v0, Ljava/lang/Enum;

    .line 691
    iget-object v3, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 692
    :cond_18
    const-class v6, Ljava/lang/String;

    if-ne v3, v6, :cond_19

    .line 698
    iget-object v3, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 699
    :cond_19
    const-class v6, Ljava/lang/Double;

    if-ne v3, v6, :cond_1a

    .line 701
    iget-object v3, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_5

    .line 702
    :cond_1a
    const-class v6, [Ljava/lang/String;

    if-ne v3, v6, :cond_1b

    .line 703
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 704
    array-length v3, v0

    invoke-static {v4, v3}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 705
    array-length v6, v0

    move v3, v2

    :goto_7
    if-ge v3, v6, :cond_10

    aget-object v7, v0, v3

    .line 706
    iget-object v8, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    invoke-virtual {v8, v7, v4}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 708
    :cond_1b
    const-class v6, [B

    if-ne v3, v6, :cond_1c

    .line 709
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v4, v0}, Lcom/sleepycat/b/i/h/k;->a(Ljava/nio/ByteBuffer;[B)V

    goto/16 :goto_5

    .line 710
    :cond_1c
    const-class v6, [Lcom/sleepycat/b/i/c/am;

    if-ne v3, v6, :cond_1d

    .line 711
    check-cast v0, [Lcom/sleepycat/b/i/c/am;

    check-cast v0, [Lcom/sleepycat/b/i/c/am;

    invoke-static {v4, v0}, Lcom/sleepycat/b/i/h/k;->a(Ljava/nio/ByteBuffer;[Lcom/sleepycat/b/i/c/am;)V

    goto/16 :goto_5

    .line 712
    :cond_1d
    instance-of v6, v0, Lcom/sleepycat/b/i/c/b/x;

    if-eqz v6, :cond_1e

    .line 714
    check-cast v0, Lcom/sleepycat/b/i/c/b/x;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/k;->k:Lcom/sleepycat/b/i/h/a;

    .line 4068
    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/sleepycat/b/i/h/a;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 4069
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    invoke-static {v4, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_5

    .line 716
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknow type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 720
    :cond_1f
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 721
    return-object v4
.end method
