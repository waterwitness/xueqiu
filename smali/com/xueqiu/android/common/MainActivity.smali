.class public Lcom/xueqiu/android/common/MainActivity;
.super Lcom/xueqiu/android/common/b;
.source "MainActivity.java"


# instance fields
.field public j:Lcom/xueqiu/android/community/model/Remind;

.field public k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

.field public p:Z

.field private q:Lrx/j;

.field private r:I

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:Landroid/content/BroadcastReceiver;

.field private v:Landroid/content/BroadcastReceiver;

.field private w:I

.field private x:Lcom/xueqiu/android/common/k;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    .line 102
    new-instance v0, Lcom/xueqiu/android/community/model/Remind;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Remind;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    .line 111
    iput-boolean v1, p0, Lcom/xueqiu/android/common/MainActivity;->s:Z

    .line 117
    new-instance v0, Lcom/xueqiu/android/common/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/MainActivity$1;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->u:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/xueqiu/android/common/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/MainActivity$8;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->v:Landroid/content/BroadcastReceiver;

    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->y:Ljava/lang/String;

    .line 806
    iput-boolean v1, p0, Lcom/xueqiu/android/common/MainActivity;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/MainActivity;I)I
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/xueqiu/android/common/MainActivity;->r:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/community/model/Remind;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/MainActivity;Lcom/xueqiu/android/community/model/Remind;)Lcom/xueqiu/android/community/model/Remind;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->x:Lcom/xueqiu/android/common/k;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/k;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/l;

    move-result-object v1

    .line 354
    const v0, 0x7f0300d4

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 355
    const v0, 0x7f0e034c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7746
    iget-object v3, v1, Lcom/xueqiu/android/common/l;->a:Ljava/lang/String;

    .line 356
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const-string v3, "public_timeline_tag"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7784
    iget v3, v1, Lcom/xueqiu/android/common/l;->d:I

    .line 358
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    :goto_0
    const v0, 0x7f0e034b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9768
    iget v1, v1, Lcom/xueqiu/android/common/l;->b:I

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 366
    const-string v0, "portfolio_tag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/xueqiu/android/common/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/MainActivity$5;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 380
    :cond_0
    const-string v0, "trends_tag"

    if-ne p1, v0, :cond_1

    .line 381
    new-instance v0, Lcom/xueqiu/android/common/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/MainActivity$6;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->x:Lcom/xueqiu/android/common/k;

    .line 10729
    iget-object v0, v0, Lcom/xueqiu/android/common/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object v2

    .line 8780
    :cond_2
    iget v3, v1, Lcom/xueqiu/android/common/l;->c:I

    .line 360
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    if-nez p0, :cond_0

    .line 669
    const-string v0, ""

    .line 675
    :goto_0
    return-object v0

    .line 670
    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    .line 671
    const-string v0, "999+"

    goto :goto_0

    .line 673
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 2

    .prologue
    .line 76
    .line 15660
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "trends_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/c;

    .line 15661
    if-eqz v0, :cond_0

    .line 15662
    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/c;->B_()V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->t:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/widget/SnowBallTabHost;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/k;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->x:Lcom/xueqiu/android/common/k;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 12

    .prologue
    const/4 v2, 0x5

    const/4 v7, 0x0

    .line 339
    new-instance v0, Lcom/xueqiu/android/common/k;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->x:Lcom/xueqiu/android/common/k;

    .line 340
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 341
    new-array v9, v2, [Ljava/lang/String;

    const-string v0, "public_timeline_tag"

    aput-object v0, v9, v7

    const/4 v0, 0x1

    const-string v1, "portfolio_tag"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "trends_tag"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "quotes_center_tag"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "trade_tag"

    aput-object v1, v9, v0

    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Remind;->getStatus()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Remind;->getStatus()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    .line 344
    :cond_0
    new-array v10, v2, [I

    fill-array-data v10, :array_0

    .line 345
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v11

    move v6, v7

    .line 347
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_1

    .line 348
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->x:Lcom/xueqiu/android/common/k;

    aget-object v2, v9, v6

    aget-object v3, v8, v6

    invoke-virtual {v11, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aget v5, v10, v6

    .line 7718
    new-instance v0, Lcom/xueqiu/android/common/l;

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/l;-><init>(Lcom/xueqiu/android/common/k;Ljava/lang/String;Ljava/lang/String;II)V

    .line 7719
    iget-object v1, v1, Lcom/xueqiu/android/common/k;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 350
    :cond_1
    return-void

    .line 344
    :array_0
    .array-data 4
        0x0
        0xa
        0x0
        0x0
        0x0
    .end array-data

    .line 345
    :array_1
    .array-data 4
        0x7f0100f7
        0x7f0100f6
        0x7f0100fa
        0x7f0100f8
        0x7f0100f9
    .end array-data
.end method


# virtual methods
.method protected final A_()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 489
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->A_()V

    .line 490
    iget v0, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    if-eq v0, v3, :cond_1

    .line 491
    iget v1, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    .line 12498
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 12499
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 12501
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v2, "trends_tag"

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 12502
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_notification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    iput v3, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    .line 495
    :cond_1
    return-void

    .line 12503
    :cond_2
    if-ne v1, v4, :cond_3

    .line 12504
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 12505
    :cond_3
    if-ne v1, v5, :cond_4

    .line 12506
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 12507
    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 12508
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 12509
    :cond_5
    const/16 v0, 0x8

    if-ne v1, v0, :cond_6

    .line 12510
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v1, "public_timeline_tag"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 12511
    :cond_6
    const/16 v0, 0x9

    if-eq v1, v0, :cond_7

    const/16 v0, 0xa

    if-ne v1, v0, :cond_8

    .line 12512
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v1, "trade_tag"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 12513
    :cond_8
    const/16 v0, 0xb

    if-ne v1, v0, :cond_0

    .line 12514
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v1, "quotes_center_tag"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/community/model/Remind;)V
    .locals 9

    .prologue
    const v8, 0x7f0e024b

    const/4 v7, 0x0

    .line 529
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->isLegal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14572
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->x:Lcom/xueqiu/android/common/k;

    const-string v1, "trends_tag"

    .line 12733
    iget-object v0, v0, Lcom/xueqiu/android/common/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 532
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 533
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getStatus()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    .line 534
    if-lez v1, :cond_7

    .line 535
    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    :goto_1
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v0

    .line 551
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    .line 552
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v2

    .line 553
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v3

    .line 554
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getFollowers()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v4

    .line 555
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getTradeNotification()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v5

    .line 557
    iget v6, p0, Lcom/xueqiu/android/common/MainActivity;->r:I

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 560
    invoke-static {v0}, Lcom/xueqiu/android/common/MainActivity;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 13582
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "public_timeline_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/o;

    .line 13583
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    const-string v2, "portfolio_tag"

    invoke-virtual {v1, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/c/m;

    .line 13584
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    const-string v3, "trends_tag"

    invoke-virtual {v2, v3}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/c/c;

    .line 13585
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v3

    const-string v4, "quotes_center_tag"

    invoke-virtual {v3, v4}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/stock/c/u;

    .line 13586
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v4

    const-string v6, "trade_tag"

    invoke-virtual {v4, v6}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/trade/c/n;

    .line 13587
    if-eqz v0, :cond_2

    .line 13588
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/community/c/o;->c(Ljava/lang/String;)V

    .line 13590
    :cond_2
    if-eqz v1, :cond_3

    .line 13591
    invoke-virtual {v1, v5}, Lcom/xueqiu/android/stock/c/m;->b(Ljava/lang/String;)V

    .line 13593
    :cond_3
    if-eqz v2, :cond_4

    .line 13594
    invoke-virtual {v2, v5}, Lcom/xueqiu/android/community/c/c;->c(Ljava/lang/String;)V

    .line 13596
    :cond_4
    if-eqz v3, :cond_5

    .line 14237
    invoke-virtual {v3, v8}, Lcom/xueqiu/android/stock/c/u;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 14238
    invoke-static {v5, v0}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 13599
    :cond_5
    if-eqz v4, :cond_6

    .line 13600
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/trade/c/n;->c(Ljava/lang/String;)V

    .line 562
    :cond_6
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getStrategy()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Remind;->getStrategy()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RemindItem;->getTs()J

    move-result-wide v2

    .line 14567
    const-string v0, "key_quotes_center_new_strategy_clear_ts"

    const-wide/16 v4, 0x0

    invoke-static {p0, v0, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 14568
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v6, "quotes_center_tag"

    invoke-virtual {v0, v6}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/u;

    .line 14570
    if-lez v1, :cond_8

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    .line 14571
    if-eqz v0, :cond_0

    .line 14572
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/u;->a(Z)V

    goto/16 :goto_0

    .line 539
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 14575
    :cond_8
    if-eqz v0, :cond_0

    .line 14576
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/stock/c/u;->a(Z)V

    goto/16 :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/common/MainActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 446
    instance-of v3, v0, Lcom/xueqiu/android/common/c;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 454
    :goto_0
    return v0

    .line 11458
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b;->a(Z)V

    .line 11459
    invoke-static {p0}, Lcom/xueqiu/android/base/n;->b(Landroid/content/Context;)Lcom/xueqiu/android/base/n;

    move-result-object v0

    .line 12413
    iget-boolean v0, v0, Lcom/xueqiu/android/base/n;->d:Z

    .line 11459
    if-eqz v0, :cond_1

    .line 11460
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 11461
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_1
    move v0, v2

    .line 451
    goto :goto_0

    .line 11463
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/MainActivity;->moveTaskToBack(Z)Z

    goto :goto_1

    .line 454
    :cond_2
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 848
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->setTheme(I)V

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->isLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    iget v0, p0, Lcom/xueqiu/android/common/MainActivity;->r:I

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    .line 800
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    .line 801
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 803
    :cond_0
    invoke-static {v0}, Lcom/xueqiu/android/common/MainActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 829
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/message/RecentTalkActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 830
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Remind;->getMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 831
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Remind;->getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v1

    .line 832
    :goto_1
    iget-object v3, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    .line 833
    :goto_2
    iget-object v4, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Remind;->getComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v4

    if-nez v4, :cond_3

    move v4, v1

    .line 834
    :goto_3
    iget-object v5, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/Remind;->getFollowers()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v5

    if-nez v5, :cond_4

    move v5, v1

    .line 835
    :goto_4
    iget-object v7, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Remind;->getTradeNotification()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v7

    if-nez v7, :cond_5

    .line 836
    :goto_5
    const-string v7, "extra_comment_count"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v4, "extra_mention_count"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    const-string v0, "extra_paid_mention_count"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    const-string v0, "extra_paid_comment_count"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    const-string v0, "extra_new_follower_count"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v0, "extra_trade_notification_count"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 15053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 843
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x3e8

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 844
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Remind;->getMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v0

    goto :goto_0

    .line 831
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Remind;->getPaidMentions()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v2

    goto :goto_1

    .line 832
    :cond_2
    iget-object v3, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/Remind;->getPmComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v3

    goto :goto_2

    .line 833
    :cond_3
    iget-object v4, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Remind;->getComments()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v4

    goto :goto_3

    .line 834
    :cond_4
    iget-object v5, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/Remind;->getFollowers()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v5

    goto :goto_4

    .line 835
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Remind;->getTradeNotification()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v1

    goto :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 687
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 688
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 689
    if-eqz v0, :cond_0

    .line 690
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/i;->a(IILandroid/content/Intent;)V

    .line 697
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 698
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 142
    iput-object p0, p0, Lcom/xueqiu/android/common/MainActivity;->t:Landroid/content/Context;

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 144
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->setContentView(I)V

    .line 145
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "key_remind"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Remind;

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/xueqiu/android/community/model/Remind;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Remind;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_need_login"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/MainActivity;->s:Z

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 150
    const v1, 0x7f020348

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->e(I)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v4}, Landroid/support/v7/a/a;->b(Z)V

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v4}, Landroid/support/v7/a/a;->e(Z)V

    .line 4280
    sget-object v0, Lcom/xueqiu/android/message/client/c;->f:Lrx/i/b;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$12;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4287
    sget-object v0, Lcom/xueqiu/android/message/client/c;->g:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$13;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4294
    sget-object v0, Lcom/xueqiu/android/message/client/c;->j:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$14;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4301
    sget-object v0, Lcom/xueqiu/android/message/client/c;->h:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$15;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4308
    sget-object v0, Lcom/xueqiu/android/message/client/c;->i:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$2;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4315
    sget-object v0, Lcom/xueqiu/android/message/client/c;->k:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$3;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4322
    sget-object v0, Lcom/xueqiu/android/message/client/c;->l:Lrx/i/c;

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$4;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 4330
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.action.UPDATE_UNREAD_COUNT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4331
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4333
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4334
    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4335
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    .line 5212
    iget-boolean v0, p0, Lcom/xueqiu/android/common/MainActivity;->s:Z

    if-eqz v0, :cond_1

    .line 5213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5214
    const-string v1, "extra_mode"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 5215
    const-string v1, "extra_need_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5216
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5217
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5218
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 5219
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/MainActivity;->overridePendingTransition(II)V

    .line 5221
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/common/MainActivity;->l()V

    .line 5223
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    .line 5224
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    const v2, 0x7f0e0135

    invoke-virtual {v0, p0, v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a(Landroid/content/Context;Landroid/support/v4/a/q;I)V

    .line 5225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5226
    const-string v1, "followers"

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Remind;->getFollowers()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RemindItem;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5227
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v3, "public_timeline_tag"

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "public_timeline_tag"

    invoke-direct {p0, v3}, Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 5229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5230
    const-string v1, "page_type"

    const-string v2, "portfolio_page_type"

    invoke-static {p0, v2, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5231
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v3, "portfolio_tag"

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "portfolio_tag"

    invoke-direct {p0, v3}, Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 5233
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v2, "trends_tag"

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "trends_tag"

    invoke-direct {p0, v2}, Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/c/c;

    invoke-virtual {v0, v1, v2, v6}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 5235
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v2, "quotes_center_tag"

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "quotes_center_tag"

    invoke-direct {p0, v2}, Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/c/u;

    invoke-virtual {v0, v1, v2, v6}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 5237
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5239
    iget v0, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 5240
    const-string v0, "performance"

    .line 5244
    :goto_0
    const-string v2, "page_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    const-string v3, "trade_tag"

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "trade_tag"

    invoke-direct {p0, v3}, Lcom/xueqiu/android/common/MainActivity;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/trade/c/n;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 5246
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$10;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 5268
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->k:Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TabWidget;->setShowDividers(I)V

    .line 5269
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.action.switchTabHostEnabled"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$11;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lrx/j;)V

    .line 158
    const-string v0, "has_visited_user_guide"

    invoke-static {v0, v4, p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v0

    .line 159
    if-nez v0, :cond_2

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_2
    return-void

    .line 5242
    :cond_3
    const-string v0, "trade_page_type"

    const-string v2, "trade"

    invoke-static {p0, v0, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->u:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 475
    :cond_1
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 476
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 482
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onNewIntent(Landroid/content/Intent;)V

    .line 483
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 484
    const-string v0, "extra_notification"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/MainActivity;->w:I

    .line 485
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 6172
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->isSpamUser()Z

    move-result v0

    .line 6174
    if-eqz v0, :cond_1

    .line 6178
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getUserTelephone()Ljava/lang/String;

    move-result-object v3

    .line 7197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6179
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6180
    :goto_0
    const-string v2, "\u60a8\u7684\u5e10\u53f7\u5b58\u5728\u5f02\u5e38\uff0c\u8bf7\u7ed1\u5b9a\u624b\u673a\u53f7\u89e3\u9664\u5f02\u5e38\u72b6\u6001"

    .line 6182
    if-eqz v0, :cond_0

    .line 6183
    const-string v2, "\u60a8\u7684\u5e10\u53f7\u5b58\u5728\u5f02\u5e38\uff0c\u8bf7\u9a8c\u8bc1\u7ed1\u5b9a\u624b\u673a\u53f7\u89e3\u9664\u5f02\u5e38\u72b6\u6001"

    .line 6186
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u63d0\u793a"

    .line 6187
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 6188
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0700b1

    .line 6189
    invoke-static {v4}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/common/MainActivity$9;

    invoke-direct {v5, p0, v0, v3}, Lcom/xueqiu/android/common/MainActivity$9;-><init>(Lcom/xueqiu/android/common/MainActivity;ZLjava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6206
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6208
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 169
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 6179
    goto :goto_0
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 402
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStart()V

    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 408
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/common/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/MainActivity$7;-><init>(Lcom/xueqiu/android/common/MainActivity;)V

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    .line 432
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStop()V

    .line 437
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity;->q:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 440
    :cond_0
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
