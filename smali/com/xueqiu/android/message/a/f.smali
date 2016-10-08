.class public final Lcom/xueqiu/android/message/a/f;
.super Ljava/lang/Object;
.source "ChatAdapter.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/webkit/WebView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/d/a/b/d;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/f;->l:Ljava/util/Map;

    .line 638
    iget-object v0, p0, Lcom/xueqiu/android/message/a/f;->l:Ljava/util/Map;

    const-string v1, "Cookie"

    const-string v2, "xq_a_token=%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v5

    .line 2182
    iget-object v5, v5, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 638
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 2341
    iput-boolean v6, v0, Lcom/d/a/b/e;->h:Z

    .line 642
    iget-object v1, p0, Lcom/xueqiu/android/message/a/f;->l:Ljava/util/Map;

    .line 2409
    iput-object v1, v0, Lcom/d/a/b/e;->n:Ljava/lang/Object;

    .line 3248
    const v1, 0x7f020106

    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 3367
    iput-boolean v6, v0, Lcom/d/a/b/e;->i:Z

    .line 645
    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 3376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 3415
    iput-boolean v6, v0, Lcom/d/a/b/e;->m:Z

    .line 647
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/f;->m:Lcom/d/a/b/d;

    .line 650
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/xueqiu/android/message/a/f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 653
    new-instance v1, Lcom/xueqiu/android/message/a/f;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/f;-><init>()V

    .line 654
    const v0, 0x7f0e0551

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->j:Landroid/view/View;

    .line 655
    const v0, 0x7f0e0557

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    .line 656
    const v0, 0x7f0e0558

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    .line 657
    const v0, 0x7f0e0559

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->k:Landroid/widget/TextView;

    .line 658
    const v0, 0x7f0e0556

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    .line 659
    const v0, 0x7f0e0568

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->c:Landroid/widget/ImageView;

    .line 660
    const v0, 0x7f0e0553

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    .line 661
    const v0, 0x7f0e0552

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->f:Landroid/widget/TextView;

    .line 662
    const v0, 0x7f0e0554

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->g:Landroid/widget/TextView;

    .line 663
    const v0, 0x7f0e01d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->h:Landroid/widget/TextView;

    .line 664
    const v0, 0x7f0e0555

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/f;->i:Landroid/view/View;

    .line 665
    iget-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 666
    iget-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 667
    iget-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 668
    iget-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 669
    iget-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/xueqiu/android/message/a/f$1;

    invoke-direct {v2}, Lcom/xueqiu/android/message/a/f$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 675
    iget-object v0, v1, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/xueqiu/android/message/a/f$2;

    invoke-direct {v2}, Lcom/xueqiu/android/message/a/f$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 686
    return-object v1
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v5, -0x2

    const/high16 v9, 0x43160000    # 150.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 840
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 842
    if-eqz v0, :cond_1

    .line 843
    const-string v2, "ChatAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 845
    array-length v0, v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 849
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 850
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 11868
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 11869
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 11870
    cmpl-float v5, v4, v8

    if-ltz v5, :cond_2

    .line 11871
    invoke-static {v1, v9, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11872
    int-to-float v1, v0

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 11877
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11878
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 863
    :cond_1
    :goto_2
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    const-string v2, "ChatAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    move v2, v1

    .line 854
    goto :goto_0

    .line 11873
    :cond_2
    cmpg-float v5, v4, v8

    if-gez v5, :cond_0

    .line 11874
    invoke-static {v1, v9, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11875
    int-to-float v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v1, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 858
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 859
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 18

    .prologue
    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->k:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/message/a/e;

    .line 692
    if-eqz v4, :cond_d

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 696
    :cond_0
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->e:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 697
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, v4, Lcom/xueqiu/android/message/a/e;->b:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v4, Lcom/xueqiu/android/message/a/e;->c:Landroid/widget/ImageView;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v4, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    aput-object v4, v5, v6

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_6

    aget-object v6, v5, v4

    .line 698
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 697
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 701
    :cond_1
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->e:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 702
    const/4 v5, 0x3

    new-array v6, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v7, v4, Lcom/xueqiu/android/message/a/e;->b:Landroid/widget/TextView;

    aput-object v7, v6, v5

    const/4 v5, 0x1

    iget-object v7, v4, Lcom/xueqiu/android/message/a/e;->c:Landroid/widget/ImageView;

    aput-object v7, v6, v5

    const/4 v5, 0x2

    iget-object v7, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    aput-object v7, v6, v5

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x3

    if-ge v5, v7, :cond_2

    aget-object v7, v6, v5

    .line 703
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 702
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3492
    :cond_2
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3493
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_a

    .line 3955
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 3494
    iget-object v6, v4, Lcom/xueqiu/android/message/a/e;->f:Lcom/d/a/b/d;

    .line 4513
    const-string v8, "symbol"

    invoke-static {v7, v8}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4514
    iget-object v9, v4, Lcom/xueqiu/android/message/a/e;->b:Landroid/widget/TextView;

    const-string v10, "%s(%s)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-static {v7, v13}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4515
    const-string v9, "icon"

    invoke-static {v7, v9}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lcom/xueqiu/android/message/a/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v9, v10, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4516
    const-string v5, "change"

    invoke-static {v7, v5}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v10

    .line 4517
    const-string v5, "price"

    invoke-static {v7, v5}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v12

    .line 4518
    const-string v5, "changePercentage"

    invoke-static {v7, v5}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v14

    .line 4519
    const-string v5, ""

    .line 4521
    iget-object v6, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4523
    const-wide/16 v16, 0x0

    cmpl-double v6, v10, v16

    if-lez v6, :cond_9

    .line 4524
    const-string v5, "+"

    move-object v6, v5

    .line 4529
    :goto_2
    const-string v5, "unit"

    invoke-static {v7, v5}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4530
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 4531
    :cond_3
    invoke-static {v8}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/String;)Lcom/xueqiu/android/base/util/at;

    move-result-object v5

    iget-object v5, v5, Lcom/xueqiu/android/base/util/at;->a:Ljava/lang/String;

    .line 4534
    :cond_4
    const-string v8, "%s%.2f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v9, v16

    const/4 v5, 0x1

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4535
    const-string v8, "%s%.2f(%s%.2f%%)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v9, v12

    const/4 v12, 0x1

    .line 4536
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v6, 0x3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    .line 4538
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v6

    .line 4535
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4539
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4540
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0x10

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v9, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4541
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4542
    const-string v5, "\n"

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4543
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3500
    :cond_5
    :goto_3
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->a:Landroid/view/View;

    new-instance v6, Lcom/xueqiu/android/message/a/e$1;

    move-object/from16 v0, p2

    invoke-direct {v6, v4, v7, v0}, Lcom/xueqiu/android/message/a/e$1;-><init>(Lcom/xueqiu/android/message/a/e;Lorg/json/JSONObject;Lcom/xueqiu/android/message/ChatActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3506
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->a:Landroid/view/View;

    new-instance v6, Lcom/xueqiu/android/message/a/h;

    iget-object v4, v4, Lcom/xueqiu/android/message/a/e;->g:Lcom/xueqiu/android/message/a/d;

    move-object/from16 v0, p1

    invoke-direct {v6, v4, v0}, Lcom/xueqiu/android/message/a/h;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 801
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->isFailed()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->h:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 825
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v4, :cond_20

    .line 827
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    :cond_8
    :goto_6
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->g:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    return-void

    .line 4525
    :cond_9
    const-wide/16 v16, 0x0

    cmpg-double v6, v10, v16

    if-gez v6, :cond_21

    .line 4526
    :try_start_1
    const-string v5, ""

    move-object v6, v5

    goto/16 :goto_2

    .line 3495
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_c

    .line 4955
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 3496
    iget-object v8, v4, Lcom/xueqiu/android/message/a/e;->f:Lcom/d/a/b/d;

    .line 5547
    const-string v5, "title"

    invoke-static {v7, v5}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5548
    const-string v9, "user"

    invoke-static {v7, v9}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5549
    const-string v10, "image"

    invoke-static {v7, v10}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5550
    const-string v11, "text"

    invoke-static {v7, v11}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5551
    iget-object v12, v4, Lcom/xueqiu/android/message/a/e;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_b

    :goto_7
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5552
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v10, v5, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 5553
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5554
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d0011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 3508
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 5551
    :cond_b
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 3497
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    .line 5955
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 3498
    iget-object v6, v4, Lcom/xueqiu/android/message/a/e;->f:Lcom/d/a/b/d;

    .line 6558
    iget-object v8, v4, Lcom/xueqiu/android/message/a/e;->b:Landroid/widget/TextView;

    const-string v9, "name"

    invoke-static {v7, v9}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6559
    const-string v8, "icon"

    invoke-static {v7, v8}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/xueqiu/android/message/a/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v8, v9, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 6560
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    const-string v6, "\u88ab%d\u4eba\u5173\u6ce8\n%d\u6761\u8bc4\u8bba\n\u5173\u6ce8%d\u53ea\u80a1\u7968"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "fans"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "posts"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "stocks"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6561
    iget-object v5, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/xueqiu/android/message/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0d0011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 707
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v4

    if-nez v4, :cond_e

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_4

    .line 712
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_17

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 714
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xueqiu/android/message/a/f;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6955
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 715
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/message/a/f;->m:Lcom/d/a/b/d;

    invoke-virtual {v4, v5, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->k:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    new-instance v5, Lcom/xueqiu/android/message/a/f$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/xueqiu/android/message/a/f$5;-><init>(Lcom/xueqiu/android/message/a/f;Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 718
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->k:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v5

    .line 720
    const-string v4, ""

    .line 721
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 722
    const-string v4, "\\?"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 724
    :cond_12
    const-string v6, "%s!thumb.png"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 725
    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 726
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    invoke-static {v7, v5}, Lcom/xueqiu/android/message/a/f;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7955
    :cond_13
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 729
    invoke-virtual {v5}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 730
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 731
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 8955
    :cond_14
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 733
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/message/a/f;->m:Lcom/d/a/b/d;

    new-instance v8, Lcom/xueqiu/android/message/a/f$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lcom/xueqiu/android/message/a/f$3;-><init>(Lcom/xueqiu/android/message/a/f;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_8

    .line 742
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 9955
    :cond_16
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 743
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/message/a/f;->m:Lcom/d/a/b/d;

    new-instance v8, Lcom/xueqiu/android/message/a/f$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/xueqiu/android/message/a/f$4;-><init>(Lcom/xueqiu/android/message/a/f;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v5, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_8

    .line 768
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 769
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v4

    .line 773
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 774
    const-string v5, "%s&access_token=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    .line 10069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v7

    .line 10182
    iget-object v7, v7, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 774
    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 778
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Lcom/xueqiu/android/message/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x1

    const/high16 v7, 0x43160000    # 150.0f

    invoke-static {v6, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 781
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x1

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v6, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    new-instance v5, Lcom/xueqiu/android/message/a/f$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/xueqiu/android/message/a/f$6;-><init>(Lcom/xueqiu/android/message/a/f;Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_4

    .line 776
    :cond_19
    const-string v5, "%s?access_token=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v7

    .line 11182
    iget-object v7, v7, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 776
    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 806
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->g:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1b

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 811
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1d

    .line 812
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const-string v5, "\u53d1\u9001\u4e2d"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 814
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    .line 815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const-string v5, "\u5df2\u8bfb"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 816
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v4

    if-nez v4, :cond_1f

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const-string v5, "\u5df2\u53d1\u9001"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 819
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->e:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 830
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/message/a/f;->h:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_21
    move-object v6, v5

    goto/16 :goto_2
.end method
