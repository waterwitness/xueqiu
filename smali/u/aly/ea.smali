.class final Lu/aly/ea;
.super Lu/aly/gk;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/dz;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lu/aly/ea;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v1, 0x0

    const/16 v5, 0xc

    .line 1
    check-cast p2, Lu/aly/dz;

    .line 1658
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1662
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-eqz v2, :cond_a

    .line 1665
    iget-short v2, v0, Lu/aly/fx;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1768
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1667
    :pswitch_0
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_1

    .line 1668
    new-instance v0, Lu/aly/v;

    invoke-direct {v0}, Lu/aly/v;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->a:Lu/aly/v;

    .line 1669
    iget-object v0, p2, Lu/aly/dz;->a:Lu/aly/v;

    invoke-virtual {v0, p1}, Lu/aly/v;->a(Lu/aly/ga;)V

    goto :goto_0

    .line 1672
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1676
    :pswitch_1
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_2

    .line 1677
    new-instance v0, Lu/aly/p;

    invoke-direct {v0}, Lu/aly/p;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->b:Lu/aly/p;

    .line 1678
    iget-object v0, p2, Lu/aly/dz;->b:Lu/aly/p;

    invoke-virtual {v0, p1}, Lu/aly/p;->a(Lu/aly/ga;)V

    goto :goto_0

    .line 1681
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1685
    :pswitch_2
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_3

    .line 1686
    new-instance v0, Lu/aly/ab;

    invoke-direct {v0}, Lu/aly/ab;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->c:Lu/aly/ab;

    .line 1687
    iget-object v0, p2, Lu/aly/dz;->c:Lu/aly/ab;

    invoke-virtual {v0, p1}, Lu/aly/ab;->a(Lu/aly/ga;)V

    goto :goto_0

    .line 1690
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1694
    :pswitch_3
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_4

    .line 1695
    new-instance v0, Lu/aly/cl;

    invoke-direct {v0}, Lu/aly/cl;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->d:Lu/aly/cl;

    .line 1696
    iget-object v0, p2, Lu/aly/dz;->d:Lu/aly/cl;

    invoke-virtual {v0, p1}, Lu/aly/cl;->a(Lu/aly/ga;)V

    goto :goto_0

    .line 1699
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1703
    :pswitch_4
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_5

    .line 1704
    new-instance v0, Lu/aly/i;

    invoke-direct {v0}, Lu/aly/i;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->e:Lu/aly/i;

    .line 1705
    iget-object v0, p2, Lu/aly/dz;->e:Lu/aly/i;

    invoke-virtual {v0, p1}, Lu/aly/i;->a(Lu/aly/ga;)V

    goto :goto_0

    .line 1708
    :cond_5
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1712
    :pswitch_5
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v6, :cond_6

    .line 1714
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/dz;->f:Ljava/util/List;

    move v0, v1

    .line 1716
    :goto_1
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1719
    new-instance v3, Lu/aly/bz;

    invoke-direct {v3}, Lu/aly/bz;-><init>()V

    .line 1720
    invoke-virtual {v3, p1}, Lu/aly/bz;->a(Lu/aly/ga;)V

    .line 1721
    iget-object v4, p2, Lu/aly/dz;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1727
    :cond_6
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1731
    :pswitch_6
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v6, :cond_7

    .line 1733
    invoke-virtual {p1}, Lu/aly/ga;->h()Lu/aly/fy;

    move-result-object v2

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/fy;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/dz;->g:Ljava/util/List;

    move v0, v1

    .line 1735
    :goto_2
    iget v3, v2, Lu/aly/fy;->b:I

    if-ge v0, v3, :cond_0

    .line 1738
    new-instance v3, Lu/aly/dn;

    invoke-direct {v3}, Lu/aly/dn;-><init>()V

    .line 1739
    invoke-virtual {v3, p1}, Lu/aly/dn;->a(Lu/aly/ga;)V

    .line 1740
    iget-object v4, p2, Lu/aly/dz;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1746
    :cond_7
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1750
    :pswitch_7
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_8

    .line 1751
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0}, Lu/aly/bn;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->h:Lu/aly/bn;

    .line 1752
    iget-object v0, p2, Lu/aly/dz;->h:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->a(Lu/aly/ga;)V

    goto/16 :goto_0

    .line 1755
    :cond_8
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1759
    :pswitch_8
    iget-byte v2, v0, Lu/aly/fx;->b:B

    if-ne v2, v5, :cond_9

    .line 1760
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    iput-object v0, p2, Lu/aly/dz;->i:Lu/aly/bh;

    .line 1761
    iget-object v0, p2, Lu/aly/dz;->i:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->a(Lu/aly/ga;)V

    goto/16 :goto_0

    .line 1764
    :cond_9
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1772
    :cond_a
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 1775
    invoke-virtual {p2}, Lu/aly/dz;->g()V

    .line 1
    return-void

    .line 1665
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
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1
    check-cast p2, Lu/aly/dz;

    .line 2779
    invoke-virtual {p2}, Lu/aly/dz;->g()V

    .line 2781
    invoke-static {}, Lu/aly/dz;->h()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2782
    iget-object v0, p2, Lu/aly/dz;->a:Lu/aly/v;

    if-eqz v0, :cond_0

    .line 2783
    invoke-static {}, Lu/aly/dz;->i()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2784
    iget-object v0, p2, Lu/aly/dz;->a:Lu/aly/v;

    invoke-virtual {v0, p1}, Lu/aly/v;->b(Lu/aly/ga;)V

    .line 2787
    :cond_0
    iget-object v0, p2, Lu/aly/dz;->b:Lu/aly/p;

    if-eqz v0, :cond_1

    .line 2788
    invoke-static {}, Lu/aly/dz;->j()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2789
    iget-object v0, p2, Lu/aly/dz;->b:Lu/aly/p;

    invoke-virtual {v0, p1}, Lu/aly/p;->b(Lu/aly/ga;)V

    .line 2792
    :cond_1
    iget-object v0, p2, Lu/aly/dz;->c:Lu/aly/ab;

    if-eqz v0, :cond_2

    .line 2793
    invoke-static {}, Lu/aly/dz;->k()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2794
    iget-object v0, p2, Lu/aly/dz;->c:Lu/aly/ab;

    invoke-virtual {v0, p1}, Lu/aly/ab;->b(Lu/aly/ga;)V

    .line 2797
    :cond_2
    iget-object v0, p2, Lu/aly/dz;->d:Lu/aly/cl;

    if-eqz v0, :cond_3

    .line 2798
    invoke-static {}, Lu/aly/dz;->l()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2799
    iget-object v0, p2, Lu/aly/dz;->d:Lu/aly/cl;

    invoke-virtual {v0, p1}, Lu/aly/cl;->b(Lu/aly/ga;)V

    .line 2802
    :cond_3
    iget-object v0, p2, Lu/aly/dz;->e:Lu/aly/i;

    if-eqz v0, :cond_4

    .line 2803
    invoke-virtual {p2}, Lu/aly/dz;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2804
    invoke-static {}, Lu/aly/dz;->m()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2805
    iget-object v0, p2, Lu/aly/dz;->e:Lu/aly/i;

    invoke-virtual {v0, p1}, Lu/aly/i;->b(Lu/aly/ga;)V

    .line 2809
    :cond_4
    iget-object v0, p2, Lu/aly/dz;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2810
    invoke-virtual {p2}, Lu/aly/dz;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2811
    invoke-static {}, Lu/aly/dz;->n()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2813
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/dz;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 2814
    iget-object v0, p2, Lu/aly/dz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2823
    :cond_5
    iget-object v0, p2, Lu/aly/dz;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 2824
    invoke-virtual {p2}, Lu/aly/dz;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2825
    invoke-static {}, Lu/aly/dz;->o()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2827
    new-instance v0, Lu/aly/fy;

    iget-object v1, p2, Lu/aly/dz;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/fy;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fy;)V

    .line 2828
    iget-object v0, p2, Lu/aly/dz;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2837
    :cond_6
    iget-object v0, p2, Lu/aly/dz;->h:Lu/aly/bn;

    if-eqz v0, :cond_7

    .line 2838
    invoke-virtual {p2}, Lu/aly/dz;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2839
    invoke-static {}, Lu/aly/dz;->p()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2840
    iget-object v0, p2, Lu/aly/dz;->h:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/ga;)V

    .line 2844
    :cond_7
    iget-object v0, p2, Lu/aly/dz;->i:Lu/aly/bh;

    if-eqz v0, :cond_8

    .line 2845
    invoke-virtual {p2}, Lu/aly/dz;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2846
    invoke-static {}, Lu/aly/dz;->q()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2847
    iget-object v0, p2, Lu/aly/dz;->i:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->b(Lu/aly/ga;)V

    .line 2851
    :cond_8
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2852
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void

    .line 2814
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bz;

    .line 2816
    invoke-virtual {v0, p1}, Lu/aly/bz;->b(Lu/aly/ga;)V

    goto :goto_0

    .line 2828
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dn;

    .line 2830
    invoke-virtual {v0, p1}, Lu/aly/dn;->b(Lu/aly/ga;)V

    goto :goto_1
.end method
