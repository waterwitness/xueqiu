.class final Lu/aly/em;
.super Lu/aly/gk;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/el;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lu/aly/em;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/16 v2, 0xb

    .line 1
    check-cast p2, Lu/aly/el;

    .line 1610
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1613
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1614
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_9

    .line 1617
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1691
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1619
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_0

    .line 1620
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->a:Ljava/lang/String;

    goto :goto_0

    .line 1623
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1627
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_1

    .line 1628
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->b:Ljava/lang/String;

    goto :goto_0

    .line 1631
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1635
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_2

    .line 1636
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->c:Ljava/lang/String;

    goto :goto_0

    .line 1639
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1643
    :pswitch_3
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_3

    .line 1644
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/el;->d:I

    .line 1645
    invoke-virtual {p2}, Lu/aly/el;->a()V

    goto :goto_0

    .line 1647
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1651
    :pswitch_4
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_4

    .line 1652
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/el;->e:I

    .line 1653
    invoke-virtual {p2}, Lu/aly/el;->b()V

    goto :goto_0

    .line 1655
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1659
    :pswitch_5
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_5

    .line 1660
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/el;->f:I

    .line 1661
    invoke-virtual {p2}, Lu/aly/el;->c()V

    goto :goto_0

    .line 1663
    :cond_5
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1667
    :pswitch_6
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_6

    .line 1668
    invoke-virtual {p1}, Lu/aly/ga;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->g:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 1671
    :cond_6
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1675
    :pswitch_7
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_7

    .line 1676
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 1679
    :cond_7
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1683
    :pswitch_8
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_8

    .line 1684
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/el;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 1687
    :cond_8
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1695
    :cond_9
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 3341
    iget-byte v0, p2, Lu/aly/el;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1698
    if-nez v0, :cond_a

    .line 1699
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3364
    :cond_a
    iget-byte v0, p2, Lu/aly/el;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1701
    if-nez v0, :cond_b

    .line 1702
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3387
    :cond_b
    iget-byte v0, p2, Lu/aly/el;->j:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ey;->a(BI)Z

    move-result v0

    .line 1704
    if-nez v0, :cond_c

    .line 1705
    new-instance v0, Lu/aly/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_c
    invoke-virtual {p2}, Lu/aly/el;->d()V

    .line 1
    return-void

    .line 1617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/el;

    .line 3711
    invoke-virtual {p2}, Lu/aly/el;->d()V

    .line 3713
    invoke-static {}, Lu/aly/el;->e()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 3714
    iget-object v0, p2, Lu/aly/el;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3715
    invoke-static {}, Lu/aly/el;->f()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3716
    iget-object v0, p2, Lu/aly/el;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3719
    :cond_0
    iget-object v0, p2, Lu/aly/el;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3720
    invoke-static {}, Lu/aly/el;->g()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3721
    iget-object v0, p2, Lu/aly/el;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3724
    :cond_1
    iget-object v0, p2, Lu/aly/el;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3725
    invoke-static {}, Lu/aly/el;->h()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3726
    iget-object v0, p2, Lu/aly/el;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3729
    :cond_2
    invoke-static {}, Lu/aly/el;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3730
    iget v0, p2, Lu/aly/el;->d:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 3732
    invoke-static {}, Lu/aly/el;->j()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3733
    iget v0, p2, Lu/aly/el;->e:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 3735
    invoke-static {}, Lu/aly/el;->k()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3736
    iget v0, p2, Lu/aly/el;->f:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 3738
    iget-object v0, p2, Lu/aly/el;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 3739
    invoke-static {}, Lu/aly/el;->l()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3740
    iget-object v0, p2, Lu/aly/el;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/nio/ByteBuffer;)V

    .line 3743
    :cond_3
    iget-object v0, p2, Lu/aly/el;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3744
    invoke-static {}, Lu/aly/el;->m()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3745
    iget-object v0, p2, Lu/aly/el;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3748
    :cond_4
    iget-object v0, p2, Lu/aly/el;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3749
    invoke-static {}, Lu/aly/el;->n()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 3750
    iget-object v0, p2, Lu/aly/el;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 3753
    :cond_5
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 3754
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method
