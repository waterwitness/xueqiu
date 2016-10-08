.class final Lu/aly/do;
.super Lu/aly/gk;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/dn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 1
    check-cast p2, Lu/aly/dn;

    .line 1536
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1539
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1540
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-eqz v2, :cond_8

    .line 1543
    iget-short v2, v0, Lu/aly/fx;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1624
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1545
    :pswitch_0
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 1546
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/dn;->a:Ljava/lang/String;

    goto :goto_0

    .line 1549
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1553
    :pswitch_1
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_2

    .line 1554
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/dn;->b:J

    .line 1555
    invoke-virtual {p2}, Lu/aly/dn;->a()V

    goto :goto_0

    .line 1557
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1561
    :pswitch_2
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_3

    .line 1562
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/dn;->c:J

    .line 1563
    invoke-virtual {p2}, Lu/aly/dn;->b()V

    goto :goto_0

    .line 1565
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1569
    :pswitch_3
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_4

    .line 1570
    invoke-virtual {p1}, Lu/aly/ga;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/dn;->d:J

    .line 1571
    invoke-virtual {p2}, Lu/aly/dn;->c()V

    goto :goto_0

    .line 1573
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1577
    :pswitch_4
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v6, :cond_5

    .line 1579
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/dn;->e:Ljava/util/List;

    move v0, v1

    .line 1581
    :goto_1
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1584
    new-instance v3, Lu/aly/cr;

    invoke-direct {v3}, Lu/aly/cr;-><init>()V

    .line 1585
    invoke-virtual {v3, p1}, Lu/aly/cr;->a(Lu/aly/ga;)V

    .line 1586
    iget-object v4, p2, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1592
    :cond_5
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1596
    :pswitch_5
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v6, :cond_6

    .line 1598
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1599
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/dn;->f:Ljava/util/List;

    move v0, v1

    .line 1600
    :goto_2
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1603
    new-instance v3, Lu/aly/cf;

    invoke-direct {v3}, Lu/aly/cf;-><init>()V

    .line 1604
    invoke-virtual {v3, p1}, Lu/aly/cf;->a(Lu/aly/ga;)V

    .line 1605
    iget-object v4, p2, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1611
    :cond_6
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1615
    :pswitch_6
    iget-byte v2, v0, Lu/aly/fx;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 1616
    new-instance v0, Lu/aly/dt;

    invoke-direct {v0}, Lu/aly/dt;-><init>()V

    iput-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    .line 1617
    iget-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    invoke-virtual {v0, p1}, Lu/aly/dt;->a(Lu/aly/ga;)V

    goto/16 :goto_0

    .line 1620
    :cond_7
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1628
    :cond_8
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 3269
    iget-byte v0, p2, Lu/aly/dn;->h:B

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1631
    if-nez v0, :cond_9

    .line 1632
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'start_time\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3292
    :cond_9
    iget-byte v0, p2, Lu/aly/dn;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1634
    if-nez v0, :cond_a

    .line 1635
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'end_time\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3315
    :cond_a
    iget-byte v0, p2, Lu/aly/dn;->h:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1637
    if-nez v0, :cond_b

    .line 1638
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_b
    invoke-virtual {p2}, Lu/aly/dn;->g()V

    .line 1
    return-void

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1
    check-cast p2, Lu/aly/dn;

    .line 3644
    invoke-virtual {p2}, Lu/aly/dn;->g()V

    .line 3646
    invoke-static {}, Lu/aly/dn;->h()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 3647
    iget-object v0, p2, Lu/aly/dn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3648
    invoke-static {}, Lu/aly/dn;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3649
    iget-object v0, p2, Lu/aly/dn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3652
    :cond_0
    invoke-static {}, Lu/aly/dn;->j()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3653
    iget-wide v0, p2, Lu/aly/dn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 3655
    invoke-static {}, Lu/aly/dn;->k()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3656
    iget-wide v0, p2, Lu/aly/dn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 3658
    invoke-static {}, Lu/aly/dn;->l()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3659
    iget-wide v0, p2, Lu/aly/dn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/ga;->a(J)V

    .line 3661
    iget-object v0, p2, Lu/aly/dn;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3662
    invoke-virtual {p2}, Lu/aly/dn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3663
    invoke-static {}, Lu/aly/dn;->m()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3665
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 3666
    iget-object v0, p2, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3675
    :cond_1
    iget-object v0, p2, Lu/aly/dn;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3676
    invoke-virtual {p2}, Lu/aly/dn;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3677
    invoke-static {}, Lu/aly/dn;->n()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3679
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 3680
    iget-object v0, p2, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3689
    :cond_2
    iget-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    if-eqz v0, :cond_3

    .line 3690
    invoke-virtual {p2}, Lu/aly/dn;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3691
    invoke-static {}, Lu/aly/dn;->o()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3692
    iget-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    invoke-virtual {v0, p1}, Lu/aly/dt;->b(Lu/aly/ga;)V

    .line 3696
    :cond_3
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 3697
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void

    .line 3666
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cr;

    .line 3668
    invoke-virtual {v0, p1}, Lu/aly/cr;->b(Lu/aly/ga;)V

    goto :goto_0

    .line 3680
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cf;

    .line 3682
    invoke-virtual {v0, p1}, Lu/aly/cf;->b(Lu/aly/ga;)V

    goto :goto_1
.end method
