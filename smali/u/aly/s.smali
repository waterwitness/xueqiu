.class final Lu/aly/s;
.super Lu/aly/gl;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Lu/aly/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/p;

    .line 1876
    check-cast p1, Lu/aly/gh;

    .line 1877
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->a:Ljava/lang/String;

    .line 1879
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/dm;->a(I)Lu/aly/dm;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->e:Lu/aly/dm;

    .line 1881
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->f:Ljava/lang/String;

    .line 1883
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/p;->g:Ljava/lang/String;

    .line 1885
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1886
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1887
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/p;->b:Ljava/lang/String;

    .line 1890
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1891
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v1

    iput v1, p2, Lu/aly/p;->c:I

    .line 1892
    invoke-virtual {p2}, Lu/aly/p;->c()V

    .line 1894
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/p;->d:Ljava/lang/String;

    .line 1898
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1899
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/p;->h:Ljava/lang/String;

    .line 1902
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1903
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/p;->i:Ljava/lang/String;

    .line 1906
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1907
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v0

    iput v0, p2, Lu/aly/p;->j:I

    .line 1908
    invoke-virtual {p2}, Lu/aly/p;->h()V

    .line 1
    :cond_5
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/p;

    .line 3829
    check-cast p1, Lu/aly/gh;

    .line 3830
    iget-object v0, p2, Lu/aly/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3831
    iget-object v0, p2, Lu/aly/p;->e:Lu/aly/dm;

    .line 4031
    iget v0, v0, Lu/aly/dm;->e:I

    .line 3831
    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 3832
    iget-object v0, p2, Lu/aly/p;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3833
    iget-object v0, p2, Lu/aly/p;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3834
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 3835
    invoke-virtual {p2}, Lu/aly/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3836
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3838
    :cond_0
    invoke-virtual {p2}, Lu/aly/p;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3839
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3841
    :cond_1
    invoke-virtual {p2}, Lu/aly/p;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3842
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3844
    :cond_2
    invoke-virtual {p2}, Lu/aly/p;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3845
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3847
    :cond_3
    invoke-virtual {p2}, Lu/aly/p;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3848
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3850
    :cond_4
    invoke-virtual {p2}, Lu/aly/p;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3851
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 3853
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 3854
    invoke-virtual {p2}, Lu/aly/p;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3855
    iget-object v0, p2, Lu/aly/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3857
    :cond_6
    invoke-virtual {p2}, Lu/aly/p;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3858
    iget v0, p2, Lu/aly/p;->c:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 3860
    :cond_7
    invoke-virtual {p2}, Lu/aly/p;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3861
    iget-object v0, p2, Lu/aly/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3863
    :cond_8
    invoke-virtual {p2}, Lu/aly/p;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3864
    iget-object v0, p2, Lu/aly/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3866
    :cond_9
    invoke-virtual {p2}, Lu/aly/p;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3867
    iget-object v0, p2, Lu/aly/p;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 3869
    :cond_a
    invoke-virtual {p2}, Lu/aly/p;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3870
    iget v0, p2, Lu/aly/p;->j:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 1
    :cond_b
    return-void
.end method
