.class final Landroid/support/v7/widget/an;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:I

.field c:Landroid/support/v4/widget/ac;

.field final synthetic d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2767
    iput-object p1, p0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2758
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->h()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/an;->e:Landroid/view/animation/Interpolator;

    .line 2762
    iput-boolean v1, p0, Landroid/support/v7/widget/an;->f:Z

    .line 2765
    iput-boolean v1, p0, Landroid/support/v7/widget/an;->g:Z

    .line 2768
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->h()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ac;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ac;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/an;->c:Landroid/support/v4/widget/ac;

    .line 2769
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 2906
    iget-boolean v0, p0, Landroid/support/v7/widget/an;->f:Z

    if-eqz v0, :cond_0

    .line 2907
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/an;->g:Z

    .line 2911
    :goto_0
    return-void

    .line 2909
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 2922
    .line 10936
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 10937
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 10938
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 10939
    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 10940
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 10941
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 10942
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 10943
    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 10944
    int-to-float v7, v6

    int-to-float v6, v6

    .line 11930
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 11931
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 11932
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 10944
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 10948
    if-lez v4, :cond_2

    .line 10949
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 10954
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10926
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/an;->a(III)V

    .line 2923
    return-void

    .line 10938
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10941
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 10951
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 10952
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 10951
    goto :goto_3
.end method

.method public final a(III)V
    .locals 1

    .prologue
    .line 2958
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->h()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/an;->a(IIILandroid/view/animation/Interpolator;)V

    .line 2959
    return-void
.end method

.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2962
    iget-object v0, p0, Landroid/support/v7/widget/an;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 2963
    iput-object p4, p0, Landroid/support/v7/widget/an;->e:Landroid/view/animation/Interpolator;

    .line 2964
    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ac;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ac;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/an;->c:Landroid/support/v4/widget/ac;

    .line 2966
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2967
    iput v1, p0, Landroid/support/v7/widget/an;->b:I

    iput v1, p0, Landroid/support/v7/widget/an;->a:I

    .line 2968
    iget-object v0, p0, Landroid/support/v7/widget/an;->c:Landroid/support/v4/widget/ac;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ac;->a(IIIII)V

    .line 2969
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->a()V

    .line 2970
    return-void
.end method

.method public final run()V
    .locals 20

    .prologue
    .line 2773
    .line 7894
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v7/widget/an;->g:Z

    .line 7895
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v7/widget/an;->f:Z

    .line 2774
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/an;->c:Landroid/support/v4/widget/ac;

    .line 2778
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    move-result-object v3

    iget-object v12, v3, Landroid/support/v7/widget/aa;->j:Landroid/support/v7/widget/aj;

    .line 2779
    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->g()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2780
    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->b()I

    move-result v13

    .line 2781
    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->c()I

    move-result v14

    .line 2782
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/an;->a:I

    sub-int v15, v13, v3

    .line 2783
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/an;->b:I

    sub-int v16, v14, v3

    .line 2784
    const/4 v6, 0x0

    .line 2785
    const/4 v4, 0x0

    .line 2786
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/an;->a:I

    .line 2787
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v7/widget/an;->b:I

    .line 2788
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2789
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 2790
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2791
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2792
    if-eqz v15, :cond_0

    .line 2793
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v5, v15, v6, v7}, Landroid/support/v7/widget/aa;->a(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I

    move-result v6

    .line 2794
    sub-int v5, v15, v6

    .line 2796
    :cond_0
    if-eqz v16, :cond_1

    .line 2797
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4, v7}, Landroid/support/v7/widget/aa;->b(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I

    move-result v4

    .line 2798
    sub-int v3, v16, v4

    .line 2800
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2802
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v7}, Landroid/support/v7/widget/d;->a()I

    move-result v9

    .line 2803
    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_5

    .line 2804
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/d;->b(I)Landroid/view/View;

    move-result-object v10

    .line 2805
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v7

    .line 2806
    if-eqz v7, :cond_3

    iget-object v0, v7, Landroid/support/v7/widget/ao;->h:Landroid/support/v7/widget/ao;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2807
    iget-object v0, v7, Landroid/support/v7/widget/ao;->h:Landroid/support/v7/widget/ao;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v7, v7, Landroid/support/v7/widget/ao;->h:Landroid/support/v7/widget/ao;

    iget-object v7, v7, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    .line 2809
    :goto_1
    if-eqz v7, :cond_3

    .line 2810
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v17

    .line 2811
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2812
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    if-eq v10, v0, :cond_3

    .line 2814
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v18, v18, v17

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v19

    add-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v10, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2803
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 2807
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 2823
    :cond_5
    if-eqz v12, :cond_6

    .line 8209
    iget-boolean v7, v12, Landroid/support/v7/widget/aj;->b:Z

    .line 2823
    if-nez v7, :cond_6

    .line 8217
    iget-boolean v7, v12, Landroid/support/v7/widget/aj;->c:Z

    .line 2823
    if-eqz v7, :cond_6

    .line 2825
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v7}, Landroid/support/v7/widget/al;->a()I

    move-result v7

    .line 2826
    if-nez v7, :cond_1a

    .line 2827
    invoke-virtual {v12}, Landroid/support/v7/widget/aj;->a()V

    .line 2835
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2836
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_7
    move v7, v3

    move v8, v5

    move v9, v4

    move v10, v6

    .line 2838
    if-ne v15, v10, :cond_1c

    move/from16 v0, v16

    if-ne v0, v9, :cond_1c

    const/4 v3, 0x1

    .line 2839
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2840
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2842
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 2844
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    move/from16 v0, v16

    invoke-static {v4, v15, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 2846
    :cond_9
    if-nez v8, :cond_a

    if-eqz v7, :cond_12

    .line 2847
    :cond_a
    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->f()F

    move-result v4

    float-to-int v5, v4

    .line 2849
    const/4 v4, 0x0

    .line 2850
    if-eq v8, v13, :cond_24

    .line 2851
    if-gez v8, :cond_1d

    neg-int v4, v5

    :goto_4
    move v6, v4

    .line 2854
    :goto_5
    const/4 v4, 0x0

    .line 2855
    if-eq v7, v14, :cond_23

    .line 2856
    if-gez v7, :cond_1f

    neg-int v5, v5

    .line 2859
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v4

    const/4 v15, 0x2

    if-eq v4, v15, :cond_f

    .line 2861
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    .line 9288
    if-gez v6, :cond_20

    .line 9289
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 9290
    iget-object v15, v4, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v4/widget/r;

    neg-int v0, v6

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/r;->a(I)Z

    .line 9296
    :cond_c
    :goto_7
    if-gez v5, :cond_21

    .line 9297
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 9298
    iget-object v15, v4, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v4/widget/r;

    neg-int v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v4/widget/r;->a(I)Z

    .line 9304
    :cond_d
    :goto_8
    if-nez v6, :cond_e

    if-eqz v5, :cond_f

    .line 9305
    :cond_e
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 2863
    :cond_f
    if-nez v6, :cond_10

    if-eq v8, v13, :cond_10

    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->d()I

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    if-nez v5, :cond_11

    if-eq v7, v14, :cond_11

    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->e()I

    move-result v4

    if-nez v4, :cond_12

    .line 2865
    :cond_11
    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->h()V

    .line 2868
    :cond_12
    if-nez v10, :cond_13

    if-eqz v9, :cond_14

    .line 2870
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)V

    .line 2871
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ad;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2872
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ad;

    .line 2876
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 2877
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2880
    :cond_15
    invoke-virtual {v11}, Landroid/support/v4/widget/ac;->a()Z

    move-result v4

    if-nez v4, :cond_16

    if-nez v3, :cond_22

    .line 2881
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/an;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2887
    :cond_17
    :goto_9
    if-eqz v12, :cond_18

    .line 10209
    iget-boolean v3, v12, Landroid/support/v7/widget/aj;->b:Z

    .line 2887
    if-eqz v3, :cond_18

    .line 2888
    invoke-static {v12}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)V

    .line 10899
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v7/widget/an;->f:Z

    .line 10900
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/an;->g:Z

    if-eqz v3, :cond_19

    .line 10901
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/an;->a()V

    .line 2891
    :cond_19
    return-void

    .line 8227
    :cond_1a
    iget v8, v12, Landroid/support/v7/widget/aj;->a:I

    .line 2828
    if-lt v8, v7, :cond_1b

    .line 2829
    add-int/lit8 v7, v7, -0x1

    .line 9168
    iput v7, v12, Landroid/support/v7/widget/aj;->a:I

    .line 2832
    :cond_1b
    invoke-static {v12}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)V

    goto/16 :goto_2

    .line 2838
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2851
    :cond_1d
    if-lez v8, :cond_1e

    move v4, v5

    goto/16 :goto_4

    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2856
    :cond_1f
    if-gtz v7, :cond_b

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 9291
    :cond_20
    if-lez v6, :cond_c

    .line 9292
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 9293
    iget-object v15, v4, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v4/widget/r;

    invoke-virtual {v15, v6}, Landroid/support/v4/widget/r;->a(I)Z

    goto/16 :goto_7

    .line 9299
    :cond_21
    if-lez v5, :cond_d

    .line 9300
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 9301
    iget-object v15, v4, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v4/widget/r;

    invoke-virtual {v15, v5}, Landroid/support/v4/widget/r;->a(I)Z

    goto/16 :goto_8

    .line 2883
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/an;->a()V

    goto :goto_9

    :cond_23
    move v5, v4

    goto/16 :goto_6

    :cond_24
    move v6, v4

    goto/16 :goto_5
.end method
