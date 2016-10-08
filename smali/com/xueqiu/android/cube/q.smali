.class final Lcom/xueqiu/android/cube/q;
.super Landroid/widget/BaseAdapter;
.source "StockGainAnalysisActivity.java"


# instance fields
.field a:D

.field b:Z

.field c:I

.field final synthetic d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V
    .locals 1

    .prologue
    .line 298
    iput-object p1, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/q;->e:Ljava/util/List;

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/q;->b:Z

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/cube/q;->c:I

    .line 427
    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;B)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/q;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/q;)Ljava/util/List;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/r;Z)V
    .locals 0

    .prologue
    .line 298
    invoke-static {p0, p1}, Lcom/xueqiu/android/cube/q;->b(Lcom/xueqiu/android/cube/r;Z)V

    return-void
.end method

.method private static b(Lcom/xueqiu/android/cube/r;Z)V
    .locals 2

    .prologue
    .line 393
    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/xueqiu/android/cube/r;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/xueqiu/android/cube/r;->h:Landroid/widget/ImageView;

    const v1, 0x7f02007a

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/r;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/cube/r;->h:Landroid/widget/ImageView;

    const v1, 0x7f02006f

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 320
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const v6, 0x7f0201e2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 325
    if-nez p2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030103

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 327
    new-instance v0, Lcom/xueqiu/android/cube/r;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/cube/r;-><init>(Lcom/xueqiu/android/cube/q;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->e:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/StockGain;

    .line 334
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/r;

    .line 335
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->a:Landroid/widget/TextView;

    const-string v3, "%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getStockName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->isHolding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getStockBenefit()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 346
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    iget-object v3, v1, Lcom/xueqiu/android/cube/r;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getStockBenefit()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;Landroid/widget/TextView;D)V

    .line 356
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->b:Landroid/widget/TextView;

    const-string v3, "%+.4f"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getStockBenefit()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 358
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getStockBenefit()D

    move-result-wide v2

    mul-double/2addr v2, v10

    iget-wide v4, p0, Lcom/xueqiu/android/cube/q;->a:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1420
    iget-boolean v3, p0, Lcom/xueqiu/android/cube/q;->b:Z

    .line 360
    if-nez v3, :cond_5

    .line 361
    iget-object v3, v1, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 369
    :goto_2
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->e:Landroid/widget/TextView;

    const-string v3, "%d\u5929"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getHoldingDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->f:Landroid/widget/TextView;

    const-string v3, "%.2f%%"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getAvgPosition()D

    move-result-wide v6

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->g:Landroid/widget/TextView;

    const-string v3, "%d\u6b21"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/StockGain;->getTransactionTimes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/cube/q;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/q;->b(Lcom/xueqiu/android/cube/r;Z)V

    .line 373
    iget-object v0, v1, Lcom/xueqiu/android/cube/r;->i:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/xueqiu/android/cube/q$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/xueqiu/android/cube/q$1;-><init>(Lcom/xueqiu/android/cube/q;ILcom/xueqiu/android/cube/r;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-object p2

    .line 340
    :cond_2
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 349
    :cond_3
    iget-object v2, p0, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 352
    :cond_4
    iget-object v2, v1, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    const v3, 0x7f020385

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 363
    :cond_5
    iget-object v3, v1, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    const-string v4, "progress"

    new-array v5, v9, [I

    aput v2, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 364
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 365
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2
.end method
