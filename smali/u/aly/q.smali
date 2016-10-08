.class final Lu/aly/q;
.super Lu/aly/gk;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gk",
        "<",
        "Lu/aly/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Lu/aly/gk;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Lu/aly/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/16 v2, 0xb

    .line 1
    check-cast p2, Lu/aly/p;

    .line 1652
    invoke-virtual {p1}, Lu/aly/ga;->d()Lu/aly/gg;

    .line 1655
    :goto_0
    invoke-virtual {p1}, Lu/aly/ga;->f()Lu/aly/fx;

    move-result-object v0

    .line 1656
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-eqz v1, :cond_a

    .line 1659
    iget-short v1, v0, Lu/aly/fx;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1741
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1661
    :pswitch_0
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_0

    .line 1662
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->a:Ljava/lang/String;

    goto :goto_0

    .line 1665
    :cond_0
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1669
    :pswitch_1
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_1

    .line 1670
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->b:Ljava/lang/String;

    goto :goto_0

    .line 1673
    :cond_1
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1677
    :pswitch_2
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_2

    .line 1678
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/p;->c:I

    .line 1679
    invoke-virtual {p2}, Lu/aly/p;->c()V

    goto :goto_0

    .line 1681
    :cond_2
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1685
    :pswitch_3
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_3

    .line 1686
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->d:Ljava/lang/String;

    goto :goto_0

    .line 1689
    :cond_3
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1693
    :pswitch_4
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_4

    .line 1694
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/dm;->a(I)Lu/aly/dm;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->e:Lu/aly/dm;

    goto :goto_0

    .line 1697
    :cond_4
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1701
    :pswitch_5
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_5

    .line 1702
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->f:Ljava/lang/String;

    goto :goto_0

    .line 1705
    :cond_5
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto :goto_0

    .line 1709
    :pswitch_6
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_6

    .line 1710
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 1713
    :cond_6
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1717
    :pswitch_7
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_7

    .line 1718
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 1721
    :cond_7
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1725
    :pswitch_8
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v2, :cond_8

    .line 1726
    invoke-virtual {p1}, Lu/aly/ga;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 1729
    :cond_8
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1733
    :pswitch_9
    iget-byte v1, v0, Lu/aly/fx;->b:B

    if-ne v1, v3, :cond_9

    .line 1734
    invoke-virtual {p1}, Lu/aly/ga;->m()I

    move-result v0

    iput v0, p2, Lu/aly/p;->j:I

    .line 1735
    invoke-virtual {p2}, Lu/aly/p;->h()V

    goto/16 :goto_0

    .line 1737
    :cond_9
    iget-byte v0, v0, Lu/aly/fx;->b:B

    invoke-static {p1, v0}, Lu/aly/ge;->a(Lu/aly/ga;B)V

    goto/16 :goto_0

    .line 1745
    :cond_a
    invoke-virtual {p1}, Lu/aly/ga;->e()V

    .line 1748
    invoke-virtual {p2}, Lu/aly/p;->i()V

    .line 1
    return-void

    .line 1659
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/p;

    .line 2752
    invoke-virtual {p2}, Lu/aly/p;->i()V

    .line 2754
    invoke-static {}, Lu/aly/p;->j()Lu/aly/gg;

    invoke-virtual {p1}, Lu/aly/ga;->a()V

    .line 2755
    iget-object v0, p2, Lu/aly/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2756
    invoke-static {}, Lu/aly/p;->k()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2757
    iget-object v0, p2, Lu/aly/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2760
    :cond_0
    iget-object v0, p2, Lu/aly/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2761
    invoke-virtual {p2}, Lu/aly/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2762
    invoke-static {}, Lu/aly/p;->l()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2763
    iget-object v0, p2, Lu/aly/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2767
    :cond_1
    invoke-virtual {p2}, Lu/aly/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2768
    invoke-static {}, Lu/aly/p;->m()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2769
    iget v0, p2, Lu/aly/p;->c:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2772
    :cond_2
    iget-object v0, p2, Lu/aly/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2773
    invoke-virtual {p2}, Lu/aly/p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2774
    invoke-static {}, Lu/aly/p;->n()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2775
    iget-object v0, p2, Lu/aly/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2779
    :cond_3
    iget-object v0, p2, Lu/aly/p;->e:Lu/aly/dm;

    if-eqz v0, :cond_4

    .line 2780
    invoke-static {}, Lu/aly/p;->o()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2781
    iget-object v0, p2, Lu/aly/p;->e:Lu/aly/dm;

    .line 3031
    iget v0, v0, Lu/aly/dm;->e:I

    .line 2781
    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2784
    :cond_4
    iget-object v0, p2, Lu/aly/p;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2785
    invoke-static {}, Lu/aly/p;->p()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2786
    iget-object v0, p2, Lu/aly/p;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2789
    :cond_5
    iget-object v0, p2, Lu/aly/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2790
    invoke-static {}, Lu/aly/p;->q()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2791
    iget-object v0, p2, Lu/aly/p;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2794
    :cond_6
    iget-object v0, p2, Lu/aly/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2795
    invoke-virtual {p2}, Lu/aly/p;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2796
    invoke-static {}, Lu/aly/p;->r()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2797
    iget-object v0, p2, Lu/aly/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2801
    :cond_7
    iget-object v0, p2, Lu/aly/p;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2802
    invoke-virtual {p2}, Lu/aly/p;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2803
    invoke-static {}, Lu/aly/p;->s()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2804
    iget-object v0, p2, Lu/aly/p;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Ljava/lang/String;)V

    .line 2808
    :cond_8
    invoke-virtual {p2}, Lu/aly/p;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2809
    invoke-static {}, Lu/aly/p;->t()Lu/aly/fx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(Lu/aly/fx;)V

    .line 2810
    iget v0, p2, Lu/aly/p;->j:I

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(I)V

    .line 2813
    :cond_9
    invoke-virtual {p1}, Lu/aly/ga;->c()V

    .line 2814
    invoke-virtual {p1}, Lu/aly/ga;->b()V

    .line 1
    return-void
.end method
