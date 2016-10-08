.class final Lu/aly/co;
.super Lu/aly/gl;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/cl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Lu/aly/co;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 4

    .prologue
    .line 1
    check-cast p2, Lu/aly/cl;

    .line 1943
    check-cast p1, Lu/aly/gh;

    .line 1944
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lu/aly/gh;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1945
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1946
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v1

    iput v1, p2, Lu/aly/cl;->a:I

    .line 1947
    invoke-virtual {p2}, Lu/aly/cl;->b()V

    .line 1949
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1950
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cl;->b:Ljava/lang/String;

    .line 1953
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1954
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cl;->c:Ljava/lang/String;

    .line 1957
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1958
    invoke-virtual {p1}, Lu/aly/gh;->o()D

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/cl;->d:D

    .line 1959
    invoke-virtual {p2}, Lu/aly/cl;->f()V

    .line 1961
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1962
    invoke-virtual {p1}, Lu/aly/gh;->o()D

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/cl;->e:D

    .line 1963
    invoke-virtual {p2}, Lu/aly/cl;->h()V

    .line 1965
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1966
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cl;->f:Ljava/lang/String;

    .line 1969
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1970
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v1

    iput v1, p2, Lu/aly/cl;->g:I

    .line 1971
    invoke-virtual {p2}, Lu/aly/cl;->k()V

    .line 1973
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1974
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cl;->h:Ljava/lang/String;

    .line 1977
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1978
    invoke-virtual {p1}, Lu/aly/gh;->m()I

    move-result v1

    invoke-static {v1}, Lu/aly/h;->a(I)Lu/aly/h;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cl;->i:Lu/aly/h;

    .line 1981
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1982
    invoke-virtual {p1}, Lu/aly/gh;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cl;->j:Ljava/lang/String;

    .line 1985
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1986
    new-instance v0, Lu/aly/ef;

    invoke-direct {v0}, Lu/aly/ef;-><init>()V

    iput-object v0, p2, Lu/aly/cl;->k:Lu/aly/ef;

    .line 1987
    iget-object v0, p2, Lu/aly/cl;->k:Lu/aly/ef;

    invoke-virtual {v0, p1}, Lu/aly/ef;->a(Lu/aly/ga;)V

    .line 1
    :cond_a
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cl;

    .line 2870
    check-cast p1, Lu/aly/gh;

    .line 2871
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2872
    invoke-virtual {p2}, Lu/aly/cl;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2873
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2875
    :cond_0
    invoke-virtual {p2}, Lu/aly/cl;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2876
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2878
    :cond_1
    invoke-virtual {p2}, Lu/aly/cl;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2879
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2881
    :cond_2
    invoke-virtual {p2}, Lu/aly/cl;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2882
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2884
    :cond_3
    invoke-virtual {p2}, Lu/aly/cl;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2885
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2887
    :cond_4
    invoke-virtual {p2}, Lu/aly/cl;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2888
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2890
    :cond_5
    invoke-virtual {p2}, Lu/aly/cl;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2891
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2893
    :cond_6
    invoke-virtual {p2}, Lu/aly/cl;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2894
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2896
    :cond_7
    invoke-virtual {p2}, Lu/aly/cl;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2897
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2899
    :cond_8
    invoke-virtual {p2}, Lu/aly/cl;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2900
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2902
    :cond_9
    invoke-virtual {p2}, Lu/aly/cl;->o()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2903
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2905
    :cond_a
    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(Ljava/util/BitSet;I)V

    .line 2906
    invoke-virtual {p2}, Lu/aly/cl;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2907
    iget v0, p2, Lu/aly/cl;->a:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2909
    :cond_b
    invoke-virtual {p2}, Lu/aly/cl;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2910
    iget-object v0, p2, Lu/aly/cl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2912
    :cond_c
    invoke-virtual {p2}, Lu/aly/cl;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2913
    iget-object v0, p2, Lu/aly/cl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2915
    :cond_d
    invoke-virtual {p2}, Lu/aly/cl;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2916
    iget-wide v0, p2, Lu/aly/cl;->d:D

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(D)V

    .line 2918
    :cond_e
    invoke-virtual {p2}, Lu/aly/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2919
    iget-wide v0, p2, Lu/aly/cl;->e:D

    invoke-virtual {p1, v0, v1}, Lu/aly/gh;->a(D)V

    .line 2921
    :cond_f
    invoke-virtual {p2}, Lu/aly/cl;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2922
    iget-object v0, p2, Lu/aly/cl;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2924
    :cond_10
    invoke-virtual {p2}, Lu/aly/cl;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2925
    iget v0, p2, Lu/aly/cl;->g:I

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2927
    :cond_11
    invoke-virtual {p2}, Lu/aly/cl;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2928
    iget-object v0, p2, Lu/aly/cl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2930
    :cond_12
    invoke-virtual {p2}, Lu/aly/cl;->m()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2931
    iget-object v0, p2, Lu/aly/cl;->i:Lu/aly/h;

    .line 3031
    iget v0, v0, Lu/aly/h;->e:I

    .line 2931
    invoke-virtual {p1, v0}, Lu/aly/gh;->a(I)V

    .line 2933
    :cond_13
    invoke-virtual {p2}, Lu/aly/cl;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2934
    iget-object v0, p2, Lu/aly/cl;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/gh;->a(Ljava/lang/String;)V

    .line 2936
    :cond_14
    invoke-virtual {p2}, Lu/aly/cl;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2937
    iget-object v0, p2, Lu/aly/cl;->k:Lu/aly/ef;

    invoke-virtual {v0, p1}, Lu/aly/ef;->b(Lu/aly/ga;)V

    .line 1
    :cond_15
    return-void
.end method
