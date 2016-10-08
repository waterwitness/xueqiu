.class final Lu/aly/dq;
.super Lu/aly/gl;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/dn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v1, 0x0

    .line 1
    check-cast p2, Lu/aly/dn;

    .line 1753
    check-cast p1, Lu/aly/gh;

    .line 1754
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/dn;->a:Ljava/lang/String;

    .line 1756
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/dn;->b:J

    .line 1757
    invoke-virtual {p2}, Lu/aly/dn;->a()V

    .line 1758
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/dn;->c:J

    .line 1759
    invoke-virtual {p2}, Lu/aly/dn;->b()V

    .line 1760
    invoke-virtual {p1}, Lu/aly/gh;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/dn;->d:J

    .line 1761
    invoke-virtual {p2}, Lu/aly/dn;->c()V

    .line 1762
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 1763
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    new-instance v3, Lu/aly/fy;

    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    invoke-direct {v3, v6, v0}, Lu/aly/fy;-><init>(BI)V

    .line 1766
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/fy;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/dn;->e:Ljava/util/List;

    move v0, v1

    .line 1767
    :goto_0
    iget v4, v3, Lu/aly/fy;->b:I

    if-lt v0, v4, :cond_3

    .line 1777
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    new-instance v0, Lu/aly/fy;

    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v3

    invoke-direct {v0, v6, v3}, Lu/aly/fy;-><init>(BI)V

    .line 1780
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lu/aly/fy;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/dn;->f:Ljava/util/List;

    .line 1781
    :goto_1
    iget v3, v0, Lu/aly/fy;->b:I

    if-lt v1, v3, :cond_4

    .line 1791
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    new-instance v0, Lu/aly/dt;

    invoke-direct {v0}, Lu/aly/dt;-><init>()V

    iput-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    .line 1793
    iget-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    invoke-virtual {v0, p1}, Lu/aly/dt;->a(Lu/aly/ga;)V

    .line 1
    :cond_2
    return-void

    .line 1770
    :cond_3
    new-instance v4, Lu/aly/cr;

    invoke-direct {v4}, Lu/aly/cr;-><init>()V

    .line 1771
    invoke-virtual {v4, p1}, Lu/aly/cr;->a(Lu/aly/ga;)V

    .line 1772
    iget-object v5, p2, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1784
    :cond_4
    new-instance v3, Lu/aly/cf;

    invoke-direct {v3}, Lu/aly/cf;-><init>()V

    .line 1785
    invoke-virtual {v3, p1}, Lu/aly/cf;->a(Lu/aly/ga;)V

    .line 1786
    iget-object v4, p2, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/dn;

    .line 2712
    check-cast p1, Lu/aly/gh;

    .line 2713
    iget-object v0, p2, Lu/aly/dn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2714
    iget-wide v0, p2, Lu/aly/dn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2715
    iget-wide v0, p2, Lu/aly/dn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2716
    iget-wide v0, p2, Lu/aly/dn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(J)V

    .line 2717
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2718
    invoke-virtual {p2}, Lu/aly/dn;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2719
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2721
    :cond_0
    invoke-virtual {p2}, Lu/aly/dn;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2722
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2724
    :cond_1
    invoke-virtual {p2}, Lu/aly/dn;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2725
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2727
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2728
    invoke-virtual {p2}, Lu/aly/dn;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2730
    iget-object v0, p2, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2731
    iget-object v0, p2, Lu/aly/dn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2737
    :cond_3
    invoke-virtual {p2}, Lu/aly/dn;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2739
    iget-object v0, p2, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2740
    iget-object v0, p2, Lu/aly/dn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2746
    :cond_4
    invoke-virtual {p2}, Lu/aly/dn;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2747
    iget-object v0, p2, Lu/aly/dn;->g:Lu/aly/dt;

    invoke-virtual {v0, p1}, Lu/aly/dt;->b(Lu/aly/ga;)V

    .line 1
    :cond_5
    return-void

    .line 2731
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cr;

    .line 2733
    invoke-virtual {v0, p1}, Lu/aly/cr;->b(Lu/aly/ga;)V

    goto :goto_0

    .line 2740
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cf;

    .line 2742
    invoke-virtual {v0, p1}, Lu/aly/cf;->b(Lu/aly/ga;)V

    goto :goto_1
.end method
