.class public final Landroid/support/v7/widget/k;
.super Landroid/support/v7/widget/aa;
.source "LinearLayoutManager.java"


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/r;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/o;

.field final g:Landroid/support/v7/widget/l;

.field private k:Landroid/support/v7/widget/n;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/aa;-><init>()V

    .line 91
    iput-boolean v1, p0, Landroid/support/v7/widget/k;->m:Z

    .line 98
    iput-boolean v1, p0, Landroid/support/v7/widget/k;->c:Z

    .line 105
    iput-boolean v1, p0, Landroid/support/v7/widget/k;->n:Z

    .line 111
    iput-boolean v3, p0, Landroid/support/v7/widget/k;->o:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/k;->d:I

    .line 123
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/k;->e:I

    .line 127
    iput-object v2, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    .line 151
    new-instance v0, Landroid/support/v7/widget/l;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/l;-><init>(Landroid/support/v7/widget/k;)V

    iput-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    .line 8303
    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    .line 8304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8306
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/k;->a(Ljava/lang/String;)V

    .line 8307
    iget v0, p0, Landroid/support/v7/widget/k;->a:I

    if-eq p1, v0, :cond_1

    .line 8310
    iput p1, p0, Landroid/support/v7/widget/k;->a:I

    .line 8311
    iput-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    .line 8312
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->f()V

    .line 8354
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/k;->a(Ljava/lang/String;)V

    .line 8355
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->m:Z

    if-eqz v0, :cond_2

    .line 8358
    iput-boolean v1, p0, Landroid/support/v7/widget/k;->m:Z

    .line 8359
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->f()V

    .line 154
    :cond_2
    return-void
.end method

.method private a(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;Z)I
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    sub-int/2addr v0, p1

    .line 797
    if-lez v0, :cond_1

    .line 798
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/k;->d(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I

    move-result v0

    neg-int v0, v0

    .line 803
    add-int v1, p1, v0

    .line 804
    if-eqz p4, :cond_0

    .line 806
    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    sub-int v1, v2, v1

    .line 807
    if-lez v1, :cond_0

    .line 808
    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->a(I)V

    .line 809
    add-int/2addr v0, v1

    .line 812
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I
    .locals 18

    .prologue
    .line 1257
    move-object/from16 v0, p2

    iget v8, v0, Landroid/support/v7/widget/n;->c:I

    .line 1258
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1260
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    if-gez v1, :cond_0

    .line 1261
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->g:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/support/v7/widget/n;->g:I

    .line 1263
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;)V

    .line 1265
    :cond_1
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->h:I

    add-int/2addr v1, v2

    .line 1266
    new-instance v9, Landroid/support/v7/widget/m;

    invoke-direct {v9}, Landroid/support/v7/widget/m;-><init>()V

    move v6, v1

    .line 1267
    :goto_0
    if-lez v6, :cond_9

    .line 26797
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->d:I

    if-ltz v1, :cond_3

    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->d:I

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/al;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v1, 0x1

    .line 1267
    :goto_1
    if-eqz v1, :cond_9

    .line 26982
    const/4 v1, 0x0

    iput v1, v9, Landroid/support/v7/widget/m;->a:I

    .line 26983
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/support/v7/widget/m;->b:Z

    .line 26984
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/support/v7/widget/m;->c:Z

    .line 26985
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/support/v7/widget/m;->d:Z

    .line 27807
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 27823
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 27824
    const/4 v4, 0x0

    .line 27825
    const v2, 0x7fffffff

    .line 27826
    const/4 v1, 0x0

    move v5, v1

    :goto_2
    if-ge v5, v7, :cond_4

    .line 27827
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ao;

    .line 27828
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/support/v7/widget/n;->i:Z

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->m()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 27831
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->c()I

    move-result v3

    move-object/from16 v0, p2

    iget v10, v0, Landroid/support/v7/widget/n;->d:I

    sub-int/2addr v3, v10

    move-object/from16 v0, p2

    iget v10, v0, Landroid/support/v7/widget/n;->e:I

    mul-int/2addr v3, v10

    .line 27832
    if-ltz v3, :cond_1c

    .line 27835
    if-ge v3, v2, :cond_1c

    .line 27838
    if-eqz v3, :cond_5

    move-object v2, v1

    move v1, v3

    .line 27826
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move-object v4, v2

    move v5, v3

    move v2, v1

    goto :goto_2

    .line 26797
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move-object v1, v4

    .line 27846
    :cond_5
    if-eqz v1, :cond_a

    .line 27847
    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->c()I

    move-result v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/n;->e:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/n;->d:I

    .line 27848
    iget-object v1, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    move-object v7, v1

    .line 27307
    :goto_4
    if-nez v7, :cond_c

    .line 27313
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/support/v7/widget/m;->b:Z

    .line 1270
    :goto_5
    iget-boolean v1, v9, Landroid/support/v7/widget/m;->b:Z

    if-nez v1, :cond_9

    .line 1273
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->b:I

    iget v2, v9, Landroid/support/v7/widget/m;->a:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/n;->f:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/support/v7/widget/n;->b:I

    .line 1280
    iget-boolean v1, v9, Landroid/support/v7/widget/m;->c:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-object v1, v1, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    if-nez v1, :cond_6

    .line 35633
    move-object/from16 v0, p3

    iget-boolean v1, v0, Landroid/support/v7/widget/al;->i:Z

    .line 1280
    if-nez v1, :cond_1b

    .line 1282
    :cond_6
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    iget v2, v9, Landroid/support/v7/widget/m;->a:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p2

    iput v1, v0, Landroid/support/v7/widget/n;->c:I

    .line 1284
    iget v1, v9, Landroid/support/v7/widget/m;->a:I

    sub-int v1, v6, v1

    .line 1287
    :goto_6
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->g:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_8

    .line 1288
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->g:I

    iget v3, v9, Landroid/support/v7/widget/m;->a:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/n;->g:I

    .line 1289
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->c:I

    if-gez v2, :cond_7

    .line 1290
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->g:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/n;->g:I

    .line 1292
    :cond_7
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;)V

    .line 1294
    :cond_8
    if-eqz p4, :cond_1a

    iget-boolean v2, v9, Landroid/support/v7/widget/m;->d:Z

    if-eqz v2, :cond_1a

    .line 1301
    :cond_9
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->c:I

    sub-int v1, v8, v1

    return v1

    .line 27850
    :cond_a
    const/4 v1, 0x0

    move-object v7, v1

    .line 27808
    goto :goto_4

    .line 27810
    :cond_b
    move-object/from16 v0, p2

    iget v1, v0, Landroid/support/v7/widget/n;->d:I

    .line 28340
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/af;->a(I)Landroid/view/View;

    move-result-object v1

    .line 27811
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->d:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/n;->e:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/n;->d:I

    move-object v7, v1

    .line 27812
    goto/16 :goto_4

    .line 27316
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ab;

    .line 27317
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    if-nez v2, :cond_11

    .line 27318
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/k;->c:Z

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->f:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    :goto_7
    if-ne v3, v2, :cond_10

    .line 28913
    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v7, v2, v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;IZ)V

    .line 32541
    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ab;

    .line 32543
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    .line 32734
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ab;

    .line 32735
    iget-boolean v4, v3, Landroid/support/v7/widget/ab;->c:Z

    if-nez v4, :cond_14

    .line 32736
    iget-object v3, v3, Landroid/support/v7/widget/ab;->b:Landroid/graphics/Rect;

    .line 32544
    :goto_9
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x0

    .line 32545
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x0

    .line 32547
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->h()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->j()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->l()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v2, Landroid/support/v7/widget/ab;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Landroid/support/v7/widget/ab;->rightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    iget v10, v2, Landroid/support/v7/widget/ab;->width:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->c()Z

    move-result v11

    invoke-static {v5, v4, v10, v11}, Landroid/support/v7/widget/aa;->a(IIIZ)I

    move-result v4

    .line 32551
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->i()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->k()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->m()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v2, Landroid/support/v7/widget/ab;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v2, Landroid/support/v7/widget/ab;->bottomMargin:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    iget v2, v2, Landroid/support/v7/widget/ab;->height:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aa;->d()Z

    move-result v10

    invoke-static {v5, v3, v2, v10}, Landroid/support/v7/widget/aa;->a(IIIZ)I

    move-result v2

    .line 32555
    invoke-virtual {v7, v4, v2}, Landroid/view/View;->measure(II)V

    .line 27333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/r;->c(Landroid/view/View;)I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/m;->a:I

    .line 27335
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/k;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 27336
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/k;->p()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 27337
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/k;->h()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/k;->l()I

    move-result v3

    sub-int/2addr v2, v3

    .line 27338
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/r;->d(Landroid/view/View;)I

    move-result v3

    sub-int v3, v2, v3

    .line 27343
    :goto_a
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/n;->f:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 27344
    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/n;->b:I

    .line 27345
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    iget v10, v9, Landroid/support/v7/widget/m;->a:I

    sub-int/2addr v4, v10

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    .line 27364
    :goto_b
    iget v10, v1, Landroid/support/v7/widget/ab;->leftMargin:I

    add-int/2addr v4, v10

    iget v10, v1, Landroid/support/v7/widget/ab;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v1, Landroid/support/v7/widget/ab;->rightMargin:I

    sub-int v10, v2, v10

    iget v2, v1, Landroid/support/v7/widget/ab;->bottomMargin:I

    sub-int/2addr v5, v2

    .line 34656
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ab;

    iget-object v2, v2, Landroid/support/v7/widget/ab;->b:Landroid/graphics/Rect;

    .line 34657
    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v11

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    iget v11, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v5, v2

    invoke-virtual {v7, v4, v3, v10, v2}, Landroid/view/View;->layout(IIII)V

    .line 35065
    iget-object v2, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v2}, Landroid/support/v7/widget/ao;->m()Z

    move-result v2

    .line 27372
    if-nez v2, :cond_d

    .line 35076
    iget-object v1, v1, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->k()Z

    move-result v1

    .line 27372
    if-eqz v1, :cond_e

    .line 27373
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/support/v7/widget/m;->c:Z

    .line 27375
    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v1

    iput-boolean v1, v9, Landroid/support/v7/widget/m;->d:Z

    goto/16 :goto_5

    .line 27318
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 29913
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v7, v2, v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;IZ)V

    goto/16 :goto_8

    .line 27325
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/k;->c:Z

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->f:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    :goto_c
    if-ne v3, v2, :cond_13

    .line 30890
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v7, v2, v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;IZ)V

    goto/16 :goto_8

    .line 27325
    :cond_12
    const/4 v2, 0x0

    goto :goto_c

    .line 31890
    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v7, v2, v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;IZ)V

    goto/16 :goto_8

    .line 32739
    :cond_14
    iget-object v4, v3, Landroid/support/v7/widget/ab;->b:Landroid/graphics/Rect;

    .line 32740
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 32741
    iget-object v5, v10, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 32742
    const/4 v5, 0x0

    :goto_d
    if-ge v5, v11, :cond_15

    .line 32743
    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView;->e:Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 32744
    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView;->e:Landroid/graphics/Rect;

    .line 33613
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34595
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 32745
    iget v12, v4, Landroid/graphics/Rect;->left:I

    iget-object v13, v10, Landroid/support/v7/widget/RecyclerView;->e:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 32746
    iget v12, v4, Landroid/graphics/Rect;->top:I

    iget-object v13, v10, Landroid/support/v7/widget/RecyclerView;->e:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 32747
    iget v12, v4, Landroid/graphics/Rect;->right:I

    iget-object v13, v10, Landroid/support/v7/widget/RecyclerView;->e:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 32748
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v10, Landroid/support/v7/widget/RecyclerView;->e:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 32742
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 32750
    :cond_15
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/support/v7/widget/ab;->c:Z

    move-object v3, v4

    .line 32751
    goto/16 :goto_9

    .line 27340
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/k;->j()I

    move-result v3

    .line 27341
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/r;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    goto/16 :goto_a

    .line 27347
    :cond_17
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    .line 27348
    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/n;->b:I

    iget v10, v9, Landroid/support/v7/widget/m;->a:I

    add-int/2addr v5, v10

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto/16 :goto_b

    .line 27351
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/k;->k()I

    move-result v3

    .line 27352
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/r;->d(Landroid/view/View;)I

    move-result v2

    add-int v5, v3, v2

    .line 27354
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->f:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_19

    .line 27355
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    .line 27356
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    iget v10, v9, Landroid/support/v7/widget/m;->a:I

    sub-int/2addr v4, v10

    goto/16 :goto_b

    .line 27358
    :cond_19
    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/n;->b:I

    .line 27359
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/n;->b:I

    iget v10, v9, Landroid/support/v7/widget/m;->a:I

    add-int/2addr v2, v10

    goto/16 :goto_b

    :cond_1a
    move v6, v1

    goto/16 :goto_0

    :cond_1b
    move v1, v6

    goto/16 :goto_6

    :cond_1c
    move v1, v2

    move-object v2, v4

    goto/16 :goto_3
.end method

.method private a(III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1476
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1479
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v5

    .line 1480
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v6

    .line 1481
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1482
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1483
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v3

    .line 1484
    invoke-static {v3}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v0

    .line 1485
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1486
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 36065
    iget-object v0, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->m()Z

    move-result v0

    .line 1486
    if-eqz v0, :cond_1

    .line 1487
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1482
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1481
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1490
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1492
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1493
    goto :goto_2

    .line 1500
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    .line 846
    iget-object v2, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/n;->e:I

    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput p1, v0, Landroid/support/v7/widget/n;->d:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v1, v0, Landroid/support/v7/widget/n;->f:I

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput p2, v0, Landroid/support/v7/widget/n;->b:I

    .line 851
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/n;->g:I

    .line 852
    return-void

    :cond_0
    move v0, v1

    .line 846
    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/al;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1054
    iget-object v2, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/k;->g(Landroid/support/v7/widget/al;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/n;->h:I

    .line 1055
    iget-object v2, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput p1, v2, Landroid/support/v7/widget/n;->f:I

    .line 1057
    if-ne p1, v1, :cond_2

    .line 1058
    iget-object v2, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v3, v2, Landroid/support/v7/widget/n;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v4}, Landroid/support/v7/widget/r;->f()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/n;->h:I

    .line 1060
    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v2

    .line 1062
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-boolean v4, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/n;->e:I

    .line 1064
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-static {v2}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v3, v3, Landroid/support/v7/widget/n;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/n;->d:I

    .line 1065
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/n;->b:I

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1080
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput p2, v1, Landroid/support/v7/widget/n;->c:I

    .line 1081
    if-eqz p3, :cond_0

    .line 1082
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v2, v1, Landroid/support/v7/widget/n;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/n;->c:I

    .line 1084
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v0, v1, Landroid/support/v7/widget/n;->g:I

    .line 1085
    return-void

    :cond_1
    move v0, v1

    .line 1062
    goto :goto_0

    .line 1071
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v2

    .line 1072
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v3, Landroid/support/v7/widget/n;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v5}, Landroid/support/v7/widget/r;->b()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/n;->h:I

    .line 1073
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-boolean v4, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/n;->e:I

    .line 1075
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-static {v2}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v3, v3, Landroid/support/v7/widget/n;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/n;->d:I

    .line 1076
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/n;->b:I

    .line 1077
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1073
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/af;II)V
    .locals 1

    .prologue
    .line 1126
    if-ne p2, p3, :cond_1

    .line 1141
    :cond_0
    return-void

    .line 1132
    :cond_1
    if-le p3, p2, :cond_2

    .line 1133
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1134
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/k;->a(ILandroid/support/v7/widget/af;)V

    .line 1133
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1137
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1138
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/k;->a(ILandroid/support/v7/widget/af;)V

    .line 1137
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/al;II)V
    .locals 9

    .prologue
    .line 591
    .line 21644
    iget-boolean v0, p2, Landroid/support/v7/widget/al;->k:Z

    .line 591
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    if-eqz v0, :cond_0

    .line 22633
    iget-boolean v0, p2, Landroid/support/v7/widget/al;->i:Z

    .line 591
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 23211
    iget-object v5, p1, Landroid/support/v7/widget/af;->d:Ljava/util/List;

    .line 599
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v7

    .line 601
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_5

    .line 602
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 603
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v1

    .line 604
    if-ge v1, v7, :cond_2

    const/4 v1, 0x1

    :goto_2
    iget-boolean v8, p0, Landroid/support/v7/widget/k;->c:Z

    if-eq v1, v8, :cond_3

    const/4 v1, -0x1

    .line 606
    :goto_3
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 607
    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/r;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    .line 601
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 604
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_3

    .line 609
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/r;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_4

    .line 617
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput-object v5, v0, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    .line 618
    if-lez v3, :cond_6

    .line 619
    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/k;->b(II)V

    .line 621
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v3, v0, Landroid/support/v7/widget/n;->h:I

    .line 622
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/n;->c:I

    .line 623
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v3, v1, Landroid/support/v7/widget/n;->d:I

    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    add-int/2addr v0, v3

    iput v0, v1, Landroid/support/v7/widget/n;->d:I

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 627
    :cond_6
    if-lez v2, :cond_7

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/k;->a(II)V

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v2, v0, Landroid/support/v7/widget/n;->h:I

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/n;->c:I

    .line 632
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v2, v1, Landroid/support/v7/widget/n;->d:I

    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    :goto_6
    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/n;->d:I

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 635
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/n;->j:Ljava/util/List;

    goto/16 :goto_0

    .line 623
    :cond_8
    const/4 v0, -0x1

    goto :goto_5

    .line 632
    :cond_9
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1233
    iget-boolean v0, p2, Landroid/support/v7/widget/n;->a:Z

    if-nez v0, :cond_1

    .line 26176
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/n;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1237
    iget v0, p2, Landroid/support/v7/widget/n;->g:I

    .line 25192
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v2

    .line 25193
    if-ltz v0, :cond_0

    .line 25200
    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->d()I

    move-result v3

    sub-int/2addr v3, v0

    .line 25201
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 25202
    :goto_1
    if-ge v0, v2, :cond_0

    .line 25203
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v4

    .line 25204
    iget-object v5, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 25205
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;II)V

    goto :goto_0

    .line 25202
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25210
    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 25211
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v1

    .line 25212
    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 25213
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;II)V

    goto :goto_0

    .line 25210
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1239
    :cond_5
    iget v2, p2, Landroid/support/v7/widget/n;->g:I

    .line 26153
    if-ltz v2, :cond_0

    .line 26162
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v3

    .line 26163
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_7

    .line 26164
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    .line 26165
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v1

    .line 26166
    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_6

    .line 26167
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;II)V

    goto :goto_0

    .line 26164
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 26172
    :goto_4
    if-ge v0, v3, :cond_0

    .line 26173
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v4

    .line 26174
    iget-object v5, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_8

    .line 26175
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;II)V

    goto :goto_0

    .line 26172
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private a(Landroid/support/v7/widget/l;)V
    .locals 2

    .prologue
    .line 841
    iget v0, p1, Landroid/support/v7/widget/l;->a:I

    iget v1, p1, Landroid/support/v7/widget/l;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/k;->a(II)V

    .line 842
    return-void
.end method

.method private b(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;Z)I
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    sub-int v0, p1, v0

    .line 822
    if-lez v0, :cond_1

    .line 824
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/k;->d(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I

    move-result v0

    neg-int v0, v0

    .line 828
    add-int v1, p1, v0

    .line 829
    if-eqz p4, :cond_0

    .line 831
    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 832
    if-lez v1, :cond_0

    .line 833
    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/r;->a(I)V

    .line 834
    sub-int/2addr v0, v1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 859
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->b()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/n;->c:I

    .line 860
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput p1, v0, Landroid/support/v7/widget/n;->d:I

    .line 861
    iget-object v2, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/n;->e:I

    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v1, v0, Landroid/support/v7/widget/n;->f:I

    .line 864
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput p2, v0, Landroid/support/v7/widget/n;->b:I

    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/n;->g:I

    .line 867
    return-void

    :cond_0
    move v0, v1

    .line 861
    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/l;)V
    .locals 2

    .prologue
    .line 855
    iget v0, p1, Landroid/support/v7/widget/l;->a:I

    iget v1, p1, Landroid/support/v7/widget/l;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/k;->b(II)V

    .line 856
    return-void
.end method

.method private c(II)Landroid/view/View;
    .locals 6

    .prologue
    .line 1580
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1581
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v2

    .line 1582
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v3

    .line 1583
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 1584
    :goto_0
    if-eq p1, p2, :cond_2

    .line 1585
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v1

    .line 1586
    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v4

    .line 1587
    iget-object v5, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v5

    .line 1588
    if-ge v4, v3, :cond_1

    if-le v5, v2, :cond_1

    move-object v0, v1

    .line 1598
    :goto_1
    return-object v0

    .line 1583
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1584
    :cond_1
    add-int/2addr p1, v0

    goto :goto_0

    .line 1598
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1088
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1109
    :goto_0
    return p1

    .line 1091
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput-boolean v1, v0, Landroid/support/v7/widget/n;->a:Z

    .line 1092
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1093
    if-lez p1, :cond_2

    move v0, v1

    .line 1094
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1095
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/k;->a(IIZLandroid/support/v7/widget/al;)V

    .line 1096
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v1, v1, Landroid/support/v7/widget/n;->g:I

    .line 1097
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1098
    if-gez v1, :cond_3

    move p1, v2

    .line 1102
    goto :goto_0

    .line 1093
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1104
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1105
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->a(I)V

    goto :goto_0
.end method

.method private e(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1468
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/k;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private f(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1472
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/k;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/support/v7/widget/al;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 392
    .line 9717
    iget v1, p1, Landroid/support/v7/widget/al;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 392
    :goto_0
    if-eqz v1, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->e()I

    move-result v0

    .line 395
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 9717
    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/al;)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 991
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 25042
    :cond_0
    :goto_0
    return v0

    .line 994
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 995
    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/v7/widget/k;->o:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/k;->c:Z

    .line 25032
    invoke-virtual {p0}, Landroid/support/v7/widget/aa;->g()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 25036
    invoke-static {v2}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v6

    invoke-static {v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 25037
    invoke-static {v2}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v7

    invoke-static {v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 25038
    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25041
    :goto_1
    if-eqz v4, :cond_0

    .line 25044
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 25046
    invoke-static {v2}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v5

    invoke-static {v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v3

    sub-int v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 25047
    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 25049
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->b()I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    sub-int v1, v3, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 25038
    :cond_2
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/al;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1001
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 25065
    :cond_0
    :goto_0
    return v0

    .line 1004
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1005
    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/v7/widget/k;->o:Z

    .line 25060
    invoke-virtual {p0}, Landroid/support/v7/widget/aa;->g()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 25064
    if-nez v4, :cond_2

    .line 25065
    invoke-static {v2}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v0

    invoke-static {v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25067
    :cond_2
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 25069
    invoke-virtual {v1}, Landroid/support/v7/widget/r;->e()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private j(Landroid/support/v7/widget/al;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1011
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 25084
    :cond_0
    :goto_0
    return v0

    .line 1014
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1015
    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Landroid/support/v7/widget/k;->o:Z

    .line 25079
    invoke-virtual {p0}, Landroid/support/v7/widget/aa;->g()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 25083
    if-nez v4, :cond_2

    .line 25084
    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    goto :goto_0

    .line 25087
    :cond_2
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 25089
    invoke-static {v2}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {v3}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25092
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1015
    goto :goto_0
.end method

.method private k(Landroid/support/v7/widget/al;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1447
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/k;->e(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/k;->f(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Landroid/support/v7/widget/al;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1463
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/k;->f(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/k;->e(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 322
    iget v1, p0, Landroid/support/v7/widget/k;->a:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/k;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->m:Z

    .line 325
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    .line 327
    return-void

    .line 325
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/k;->m:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 870
    .line 23843
    iget-object v1, p0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)I

    move-result v1

    .line 870
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-direct {v0}, Landroid/support/v7/widget/n;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    .line 877
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    if-nez v0, :cond_1

    .line 878
    iget v0, p0, Landroid/support/v7/widget/k;->a:I

    .line 24177
    packed-switch v0, :pswitch_data_0

    .line 24183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24194
    :pswitch_0
    new-instance v0, Landroid/support/v7/widget/r$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/r$1;-><init>(Landroid/support/v7/widget/aa;)V

    .line 878
    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    .line 880
    :cond_1
    return-void

    .line 24270
    :pswitch_1
    new-instance v0, Landroid/support/v7/widget/r$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/r$2;-><init>(Landroid/support/v7/widget/aa;)V

    goto :goto_0

    .line 24177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()Landroid/view/View;
    .locals 1

    .prologue
    .line 1422
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Landroid/view/View;
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I
    .locals 2

    .prologue
    .line 942
    iget v0, p0, Landroid/support/v7/widget/k;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 943
    const/4 v0, 0x0

    .line 945
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/k;->d(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;->h(Landroid/support/v7/widget/al;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/ab;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Landroid/support/v7/widget/ab;

    invoke-direct {v0}, Landroid/support/v7/widget/ab;-><init>()V

    return-object v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    .line 368
    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 371
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v2

    .line 372
    sub-int v2, p1, v2

    .line 373
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 374
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Landroid/support/v7/widget/o;

    iput-object p1, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->f()V

    .line 251
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/af;)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/af;)V

    .line 196
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->p:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/k;->b(Landroid/support/v7/widget/af;)V

    .line 198
    invoke-virtual {p2}, Landroid/support/v7/widget/af;->a()V

    .line 200
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/al;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    iget v0, v0, Landroid/support/v7/widget/o;->a:I

    iput v0, p0, Landroid/support/v7/widget/k;->d:I

    .line 446
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput-boolean v2, v0, Landroid/support/v7/widget/n;->a:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/k;->o()V

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    .line 9925
    iput v10, v0, Landroid/support/v7/widget/l;->a:I

    .line 9926
    iput v9, v0, Landroid/support/v7/widget/l;->b:I

    .line 9927
    iput-boolean v2, v0, Landroid/support/v7/widget/l;->c:Z

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    iget-boolean v3, p0, Landroid/support/v7/widget/k;->c:Z

    iget-boolean v4, p0, Landroid/support/v7/widget/k;->n:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Landroid/support/v7/widget/l;->c:Z

    .line 454
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    .line 11633
    iget-boolean v0, p2, Landroid/support/v7/widget/al;->i:Z

    .line 10710
    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/k;->d:I

    if-ne v0, v10, :cond_5

    :cond_1
    move v0, v2

    .line 10639
    :goto_0
    if-nez v0, :cond_2

    .line 11666
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 12347
    iget-object v0, p0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_14

    move-object v3, v5

    .line 11670
    :goto_1
    if-eqz v3, :cond_18

    .line 13954
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 14065
    iget-object v6, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->m()Z

    move-result v6

    .line 13955
    if-nez v6, :cond_17

    .line 14085
    iget-object v6, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->c()I

    move-result v6

    .line 13955
    if-ltz v6, :cond_17

    .line 15085
    iget-object v0, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v0

    .line 13955
    invoke-virtual {p2}, Landroid/support/v7/widget/al;->a()I

    move-result v6

    if-ge v0, v6, :cond_17

    .line 13957
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/l;->a(Landroid/view/View;)V

    move v0, v1

    .line 11670
    :goto_2
    if-eqz v0, :cond_18

    move v0, v1

    .line 10646
    :goto_3
    if-nez v0, :cond_2

    .line 10655
    invoke-virtual {v4}, Landroid/support/v7/widget/l;->a()V

    .line 10656
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->n:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iput v0, v4, Landroid/support/v7/widget/l;->a:I

    .line 463
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/k;->g(Landroid/support/v7/widget/al;)I

    move-result v3

    .line 15708
    iget v0, p2, Landroid/support/v7/widget/al;->a:I

    .line 464
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    iget v4, v4, Landroid/support/v7/widget/l;->a:I

    if-ge v0, v4, :cond_20

    move v0, v1

    .line 465
    :goto_5
    iget-boolean v4, p0, Landroid/support/v7/widget/k;->c:Z

    if-ne v0, v4, :cond_21

    move v0, v3

    move v3, v2

    .line 472
    :goto_6
    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v4}, Landroid/support/v7/widget/r;->b()I

    move-result v4

    add-int/2addr v3, v4

    .line 473
    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v4}, Landroid/support/v7/widget/r;->f()I

    move-result v4

    add-int/2addr v0, v4

    .line 16633
    iget-boolean v4, p2, Landroid/support/v7/widget/al;->i:Z

    .line 474
    if-eqz v4, :cond_3

    iget v4, p0, Landroid/support/v7/widget/k;->d:I

    if-eq v4, v10, :cond_3

    iget v4, p0, Landroid/support/v7/widget/k;->e:I

    if-eq v4, v9, :cond_3

    .line 479
    iget v4, p0, Landroid/support/v7/widget/k;->d:I

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/k;->a(I)Landroid/view/View;

    move-result-object v4

    .line 480
    if-eqz v4, :cond_3

    .line 483
    iget-boolean v6, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v6, :cond_22

    .line 484
    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->c()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v4

    sub-int v4, v6, v4

    .line 486
    iget v6, p0, Landroid/support/v7/widget/k;->e:I

    sub-int/2addr v4, v6

    .line 492
    :goto_7
    if-lez v4, :cond_23

    .line 493
    add-int/2addr v3, v4

    .line 17447
    :cond_3
    :goto_8
    invoke-virtual {p0}, Landroid/support/v7/widget/aa;->g()I

    move-result v4

    .line 17448
    add-int/lit8 v4, v4, -0x1

    :goto_9
    if-ltz v4, :cond_29

    .line 17449
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/aa;->d(I)Landroid/view/View;

    move-result-object v6

    .line 17455
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v7

    .line 17456
    invoke-virtual {v7}, Landroid/support/v7/widget/ao;->b()Z

    move-result v8

    if-nez v8, :cond_4

    .line 17462
    invoke-virtual {v7}, Landroid/support/v7/widget/ao;->i()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-virtual {v7}, Landroid/support/v7/widget/ao;->m()Z

    move-result v8

    if-nez v8, :cond_24

    invoke-virtual {v7}, Landroid/support/v7/widget/ao;->k()Z

    move-result v8

    if-nez v8, :cond_24

    iget-object v8, p0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v8

    .line 18202
    iget-boolean v8, v8, Landroid/support/v7/widget/s;->b:Z

    .line 17462
    if-nez v8, :cond_24

    .line 17464
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/aa;->b(I)V

    .line 17465
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/af;->a(Landroid/support/v7/widget/ao;)V

    .line 17448
    :cond_4
    :goto_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 10714
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/k;->d:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/k;->d:I

    invoke-virtual {p2}, Landroid/support/v7/widget/al;->a()I

    move-result v3

    if-lt v0, v3, :cond_7

    .line 10715
    :cond_6
    iput v10, p0, Landroid/support/v7/widget/k;->d:I

    .line 10716
    iput v9, p0, Landroid/support/v7/widget/k;->e:I

    move v0, v2

    .line 10720
    goto/16 :goto_0

    .line 10725
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/k;->d:I

    iput v0, v4, Landroid/support/v7/widget/l;->a:I

    .line 10726
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10729
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    iget-boolean v0, v0, Landroid/support/v7/widget/o;->c:Z

    iput-boolean v0, v4, Landroid/support/v7/widget/l;->c:Z

    .line 10730
    iget-boolean v0, v4, Landroid/support/v7/widget/l;->c:Z

    if-eqz v0, :cond_8

    .line 10731
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    iget v3, v3, Landroid/support/v7/widget/o;->b:I

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    :goto_b
    move v0, v1

    .line 10737
    goto/16 :goto_0

    .line 10734
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    iget v3, v3, Landroid/support/v7/widget/o;->b:I

    add-int/2addr v0, v3

    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    goto :goto_b

    .line 10740
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/k;->e:I

    if-ne v0, v9, :cond_12

    .line 10741
    iget v0, p0, Landroid/support/v7/widget/k;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/k;->a(I)Landroid/view/View;

    move-result-object v0

    .line 10742
    if-eqz v0, :cond_e

    .line 10743
    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->c(Landroid/view/View;)I

    move-result v3

    .line 10744
    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->e()I

    move-result v6

    if-le v3, v6, :cond_a

    .line 10746
    invoke-virtual {v4}, Landroid/support/v7/widget/l;->a()V

    :goto_c
    move v0, v1

    .line 10787
    goto/16 :goto_0

    .line 10749
    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->b()I

    move-result v6

    sub-int/2addr v3, v6

    .line 10751
    if-gez v3, :cond_b

    .line 10752
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    .line 10753
    iput-boolean v2, v4, Landroid/support/v7/widget/l;->c:Z

    goto :goto_c

    .line 10756
    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->c()I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v3, v6

    .line 10758
    if-gez v3, :cond_c

    .line 10759
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    .line 10760
    iput-boolean v1, v4, Landroid/support/v7/widget/l;->c:Z

    goto :goto_c

    .line 10763
    :cond_c
    iget-boolean v3, v4, Landroid/support/v7/widget/l;->c:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->a()I

    move-result v3

    add-int/2addr v0, v3

    :goto_d
    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    :goto_e
    move v0, v1

    .line 10776
    goto/16 :goto_0

    .line 10763
    :cond_d
    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_d

    .line 10768
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    if-lez v0, :cond_f

    .line 10770
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/k;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v0

    .line 10771
    iget v3, p0, Landroid/support/v7/widget/k;->d:I

    if-ge v3, v0, :cond_10

    move v0, v1

    :goto_f
    iget-boolean v3, p0, Landroid/support/v7/widget/k;->c:Z

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_10
    iput-boolean v0, v4, Landroid/support/v7/widget/l;->c:Z

    .line 10774
    :cond_f
    invoke-virtual {v4}, Landroid/support/v7/widget/l;->a()V

    goto :goto_e

    :cond_10
    move v0, v2

    .line 10771
    goto :goto_f

    :cond_11
    move v0, v2

    goto :goto_10

    .line 10779
    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    iput-boolean v0, v4, Landroid/support/v7/widget/l;->c:Z

    .line 10780
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->c:Z

    if-eqz v0, :cond_13

    .line 10781
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/k;->e:I

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    goto/16 :goto_c

    .line 10784
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/k;->e:I

    add-int/2addr v0, v3

    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    goto/16 :goto_c

    .line 12350
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 12351
    if-eqz v0, :cond_15

    iget-object v3, p0, Landroid/support/v7/widget/aa;->h:Landroid/support/v7/widget/d;

    .line 13292
    iget-object v3, v3, Landroid/support/v7/widget/d;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 12351
    if-eqz v3, :cond_16

    :cond_15
    move-object v3, v5

    .line 12352
    goto/16 :goto_1

    :cond_16
    move-object v3, v0

    .line 12354
    goto/16 :goto_1

    :cond_17
    move v0, v2

    .line 13960
    goto/16 :goto_2

    .line 11677
    :cond_18
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->l:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/k;->n:Z

    if-ne v0, v3, :cond_1e

    .line 11681
    iget-boolean v0, v4, Landroid/support/v7/widget/l;->c:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0, p2}, Landroid/support/v7/widget/k;->k(Landroid/support/v7/widget/al;)Landroid/view/View;

    move-result-object v0

    .line 11683
    :goto_11
    if-eqz v0, :cond_1e

    .line 11684
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/l;->a(Landroid/view/View;)V

    .line 15633
    iget-boolean v3, p2, Landroid/support/v7/widget/al;->i:Z

    .line 11687
    if-nez v3, :cond_1a

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->e()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 11689
    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v3

    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->c()I

    move-result v6

    if-ge v3, v6, :cond_19

    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->b()I

    move-result v3

    if-ge v0, v3, :cond_1c

    :cond_19
    move v0, v1

    .line 11694
    :goto_12
    if-eqz v0, :cond_1a

    .line 11695
    iget-boolean v0, v4, Landroid/support/v7/widget/l;->c:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v0

    :goto_13
    iput v0, v4, Landroid/support/v7/widget/l;->b:I

    :cond_1a
    move v0, v1

    .line 11700
    goto/16 :goto_3

    .line 11681
    :cond_1b
    invoke-direct {p0, p2}, Landroid/support/v7/widget/k;->l(Landroid/support/v7/widget/al;)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    :cond_1c
    move v0, v2

    .line 11689
    goto :goto_12

    .line 11695
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    goto :goto_13

    :cond_1e
    move v0, v2

    .line 11702
    goto/16 :goto_3

    :cond_1f
    move v0, v2

    .line 10656
    goto/16 :goto_4

    :cond_20
    move v0, v2

    .line 464
    goto/16 :goto_5

    :cond_21
    move v0, v2

    .line 470
    goto/16 :goto_6

    .line 488
    :cond_22
    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->b()I

    move-result v6

    sub-int/2addr v4, v6

    .line 490
    iget v6, p0, Landroid/support/v7/widget/k;->e:I

    sub-int v4, v6, v4

    goto/16 :goto_7

    .line 495
    :cond_23
    sub-int/2addr v0, v4

    goto/16 :goto_8

    .line 17467
    :cond_24
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/aa;->c(I)V

    .line 18653
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v6

    .line 18895
    iput-object p1, v6, Landroid/support/v7/widget/ao;->j:Landroid/support/v7/widget/af;

    .line 18655
    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->k()Z

    move-result v7

    if-eqz v7, :cond_25

    iget-object v7, p1, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 18656
    :cond_25
    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->i()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->m()Z

    move-result v7

    if-nez v7, :cond_26

    iget-object v7, p1, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v7

    .line 19202
    iget-boolean v7, v7, Landroid/support/v7/widget/s;->b:Z

    .line 18656
    if-nez v7, :cond_26

    .line 18657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18661
    :cond_26
    iget-object v7, p1, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 18663
    :cond_27
    iget-object v7, p1, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    if-nez v7, :cond_28

    .line 18664
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p1, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    .line 18666
    :cond_28
    iget-object v7, p1, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 503
    :cond_29
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    .line 19633
    iget-boolean v6, p2, Landroid/support/v7/widget/al;->i:Z

    .line 503
    iput-boolean v6, v4, Landroid/support/v7/widget/n;->i:Z

    .line 504
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    iget-boolean v4, v4, Landroid/support/v7/widget/l;->c:Z

    if-eqz v4, :cond_2d

    .line 506
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/k;->b(Landroid/support/v7/widget/l;)V

    .line 507
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v3, v4, Landroid/support/v7/widget/n;->h:I

    .line 508
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p1, v3, p2, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 509
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v3, v3, Landroid/support/v7/widget/n;->b:I

    .line 510
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v4, Landroid/support/v7/widget/n;->c:I

    if-lez v4, :cond_2a

    .line 511
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v4, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v0, v4

    .line 514
    :cond_2a
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/l;)V

    .line 515
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v0, v4, Landroid/support/v7/widget/n;->h:I

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v0, Landroid/support/v7/widget/n;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v6, v6, Landroid/support/v7/widget/n;->e:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/support/v7/widget/n;->d:I

    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v0, v0, Landroid/support/v7/widget/n;->b:I

    .line 539
    :goto_14
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v4

    if-lez v4, :cond_2b

    .line 543
    iget-boolean v4, p0, Landroid/support/v7/widget/k;->c:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/k;->n:Z

    xor-int/2addr v4, v6

    if-eqz v4, :cond_2f

    .line 544
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/k;->a(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;Z)I

    move-result v1

    .line 545
    add-int/2addr v3, v1

    .line 546
    add-int/2addr v0, v1

    .line 547
    invoke-direct {p0, v3, p1, p2, v2}, Landroid/support/v7/widget/k;->b(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;Z)I

    move-result v1

    .line 548
    add-int/2addr v3, v1

    .line 549
    add-int/2addr v0, v1

    .line 559
    :cond_2b
    :goto_15
    invoke-direct {p0, p1, p2, v3, v0}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/al;II)V

    .line 20633
    iget-boolean v0, p2, Landroid/support/v7/widget/al;->i:Z

    .line 560
    if-nez v0, :cond_2c

    .line 561
    iput v10, p0, Landroid/support/v7/widget/k;->d:I

    .line 562
    iput v9, p0, Landroid/support/v7/widget/k;->e:I

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    .line 21054
    invoke-virtual {v0}, Landroid/support/v7/widget/r;->e()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/r;->b:I

    .line 565
    :cond_2c
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->n:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/k;->l:Z

    .line 566
    iput-object v5, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    .line 570
    return-void

    .line 521
    :cond_2d
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/l;)V

    .line 522
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v0, v4, Landroid/support/v7/widget/n;->h:I

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v0, v0, Landroid/support/v7/widget/n;->b:I

    .line 525
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v4, Landroid/support/v7/widget/n;->c:I

    if-lez v4, :cond_2e

    .line 526
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v4, Landroid/support/v7/widget/n;->c:I

    add-int/2addr v3, v4

    .line 529
    :cond_2e
    iget-object v4, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/widget/l;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/k;->b(Landroid/support/v7/widget/l;)V

    .line 530
    iget-object v4, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v3, v4, Landroid/support/v7/widget/n;->h:I

    .line 531
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v4, v3, Landroid/support/v7/widget/n;->d:I

    iget-object v6, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v6, v6, Landroid/support/v7/widget/n;->e:I

    add-int/2addr v4, v6

    iput v4, v3, Landroid/support/v7/widget/n;->d:I

    .line 532
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p1, v3, p2, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 533
    iget-object v3, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iget v3, v3, Landroid/support/v7/widget/n;->b:I

    goto :goto_14

    .line 551
    :cond_2f
    invoke-direct {p0, v3, p1, p2, v1}, Landroid/support/v7/widget/k;->b(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;Z)I

    move-result v1

    .line 552
    add-int/2addr v3, v1

    .line 553
    add-int/2addr v0, v1

    .line 554
    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/k;->a(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;Z)I

    move-result v1

    .line 555
    add-int/2addr v3, v1

    .line 556
    add-int/2addr v0, v1

    goto :goto_15
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/widget/aa;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/ac;

    move-result-object v2

    .line 8521
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v3

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/k;->c(II)Landroid/view/View;

    move-result-object v0

    .line 8522
    if-nez v0, :cond_1

    move v0, v1

    .line 208
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/view/a/ac;->b(I)V

    .line 8559
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/k;->c(II)Landroid/view/View;

    move-result-object v0

    .line 8560
    if-nez v0, :cond_2

    .line 209
    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v4/view/a/ac;->c(I)V

    .line 211
    :cond_0
    return-void

    .line 8522
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 8560
    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    if-nez v0, :cond_0

    .line 1115
    invoke-super {p0, p1}, Landroid/support/v7/widget/aa;->a(Ljava/lang/String;)V

    .line 1117
    :cond_0
    return-void
.end method

.method public final b(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Landroid/support/v7/widget/k;->a:I

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/k;->d(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;->h(Landroid/support/v7/widget/al;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Landroid/support/v7/widget/o;

    iget-object v1, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/o;)V

    .line 237
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-instance v0, Landroid/support/v7/widget/o;

    invoke-direct {v0}, Landroid/support/v7/widget/o;-><init>()V

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    if-lez v1, :cond_2

    .line 220
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 221
    iget-boolean v1, p0, Landroid/support/v7/widget/k;->l:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/k;->c:Z

    xor-int/2addr v1, v2

    .line 222
    iput-boolean v1, v0, Landroid/support/v7/widget/o;->c:Z

    .line 223
    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v1

    .line 225
    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/o;->b:I

    .line 227
    invoke-static {v1}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/o;->a:I

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v1

    .line 230
    invoke-static {v1}, Landroid/support/v7/widget/k;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/o;->a:I

    .line 231
    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/o;->b:I

    goto :goto_0

    .line 8888
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/o;->a:I

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;->i(Landroid/support/v7/widget/al;)I

    move-result v0

    return v0
.end method

.method public final c(ILandroid/support/v7/widget/af;Landroid/support/v7/widget/al;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    .line 1604
    invoke-direct {p0}, Landroid/support/v7/widget/k;->o()V

    .line 1605
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()I

    move-result v1

    if-nez v1, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-object v0

    .line 36389
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 1610
    :goto_1
    if-eq v3, v6, :cond_0

    .line 1613
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1615
    if-ne v3, v4, :cond_6

    .line 1616
    invoke-direct {p0, p3}, Landroid/support/v7/widget/k;->l(Landroid/support/v7/widget/al;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1620
    :goto_2
    if-eqz v2, :cond_0

    .line 1627
    invoke-direct {p0}, Landroid/support/v7/widget/k;->q()V

    .line 1628
    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v7, p0, Landroid/support/v7/widget/k;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v7}, Landroid/support/v7/widget/r;->e()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1629
    invoke-direct {p0, v3, v1, v8, p3}, Landroid/support/v7/widget/k;->a(IIZLandroid/support/v7/widget/al;)V

    .line 1630
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput v6, v1, Landroid/support/v7/widget/n;->g:I

    .line 1631
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    iput-boolean v8, v1, Landroid/support/v7/widget/n;->a:Z

    .line 1632
    iget-object v1, p0, Landroid/support/v7/widget/k;->k:Landroid/support/v7/widget/n;

    invoke-direct {p0, p2, v1, p3, v5}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/widget/af;Landroid/support/v7/widget/n;Landroid/support/v7/widget/al;Z)I

    .line 1634
    if-ne v3, v4, :cond_7

    .line 1635
    invoke-direct {p0}, Landroid/support/v7/widget/k;->r()Landroid/view/View;

    move-result-object v1

    .line 1639
    :goto_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1642
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 36391
    goto :goto_1

    :sswitch_1
    move v3, v5

    .line 36393
    goto :goto_1

    .line 36395
    :sswitch_2
    iget v1, p0, Landroid/support/v7/widget/k;->a:I

    if-ne v1, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    .line 36398
    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/k;->a:I

    if-ne v1, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_1

    .line 36401
    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/k;->a:I

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_1

    .line 36404
    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/k;->a:I

    if-nez v1, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 1618
    :cond_6
    invoke-direct {p0, p3}, Landroid/support/v7/widget/k;->k(Landroid/support/v7/widget/al;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1637
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/k;->s()Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 36389
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/support/v7/widget/k;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 977
    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;->i(Landroid/support/v7/widget/al;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 266
    iget v1, p0, Landroid/support/v7/widget/k;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 982
    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;->j(Landroid/support/v7/widget/al;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Landroid/support/v7/widget/k;->f:Landroid/support/v7/widget/o;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/k;->l:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/k;->n:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/support/v7/widget/al;)I
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;->j(Landroid/support/v7/widget/al;)I

    move-result v0

    return v0
.end method
