.class final Lu/aly/ar;
.super Lu/aly/gl;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/ao;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lu/aly/ar;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    check-cast p2, Lu/aly/ao;

    .line 1582
    check-cast p1, Lu/aly/gh;

    .line 1583
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ao;->a:Ljava/lang/String;

    .line 1586
    new-instance v2, Lu/aly/fz;

    const/16 v0, 0xb

    const/16 v3, 0xc

    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lu/aly/fz;-><init>(BBI)V

    .line 1587
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/fz;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/ao;->b:Ljava/util/Map;

    move v0, v1

    .line 1588
    :goto_0
    iget v3, v2, Lu/aly/fz;->c:I

    if-lt v0, v3, :cond_2

    .line 1599
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ao;->e:J

    .line 1600
    invoke-virtual {p2}, Lu/aly/ao;->e()V

    .line 1601
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1602
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/ao;->c:J

    .line 1604
    invoke-virtual {p2}, Lu/aly/ao;->b()V

    .line 1606
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ao;->d:I

    .line 1608
    invoke-virtual {p2}, Lu/aly/ao;->d()V

    .line 1
    :cond_1
    return-void

    .line 1592
    :cond_2
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v3

    .line 1593
    new-instance v4, Lu/aly/cx;

    invoke-direct {v4}, Lu/aly/cx;-><init>()V

    .line 1594
    invoke-virtual {v4, p1}, Lu/aly/cx;->a(Lu/aly/ga;)V

    .line 1595
    iget-object v5, p2, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/ao;

    .line 2553
    check-cast p1, Lu/aly/gh;

    .line 2554
    iget-object v0, p2, Lu/aly/ao;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2556
    iget-object v0, p2, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2557
    iget-object v0, p2, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2563
    iget-wide v0, p2, Lu/aly/ao;->e:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2564
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2565
    invoke-virtual {p2}, Lu/aly/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2568
    :cond_0
    invoke-virtual {p2}, Lu/aly/ao;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2569
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2571
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2572
    invoke-virtual {p2}, Lu/aly/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2573
    iget-wide v0, p2, Lu/aly/ao;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2575
    :cond_2
    invoke-virtual {p2}, Lu/aly/ao;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2576
    iget v0, p2, Lu/aly/ao;->d:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 1
    :cond_3
    return-void

    .line 2557
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cx;

    invoke-virtual {v0, p1}, Lu/aly/cx;->b(Lu/aly/ga;)V

    goto :goto_0
.end method
