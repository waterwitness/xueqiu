.class public Lcom/xueqiu/android/stock/StockDetailActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/a/a;
.implements Lcom/xueqiu/android/stockchart/a/c;


# instance fields
.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public p:Z

.field private q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/os/Handler;

.field private t:Z

.field private u:Lcom/xueqiu/android/message/client/MessageService;

.field private v:Landroid/view/ViewGroup;

.field private w:Z

.field private x:Lcom/xueqiu/android/base/b/x;

.field private y:Ljava/lang/Runnable;

.field private z:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 74
    iput-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->r:Ljava/util/List;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->s:Landroid/os/Handler;

    .line 81
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->t:Z

    .line 82
    iput-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->u:Lcom/xueqiu/android/message/client/MessageService;

    .line 84
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->p:Z

    .line 86
    iput-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->v:Landroid/view/ViewGroup;

    .line 87
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->w:Z

    .line 332
    iput-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->x:Lcom/xueqiu/android/base/b/x;

    .line 334
    new-instance v0, Lcom/xueqiu/android/stock/StockDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$4;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->y:Ljava/lang/Runnable;

    .line 466
    new-instance v0, Lcom/xueqiu/android/stock/StockDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$9;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->z:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockDetailActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->k:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockDetailActivity;I)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/StockDetailActivity;->b(I)Landroid/support/v4/a/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockDetailActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->u:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/StockDetailActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 7427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7428
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7429
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->u:Lcom/xueqiu/android/message/client/MessageService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/util/List;Z)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7430
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/StockDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$8;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    .line 7431
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/StockDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$6;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    new-instance v2, Lcom/xueqiu/android/stock/StockDetailActivity$7;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$7;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    .line 7446
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 63
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/StockDetailActivity;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->k:I

    return p1
.end method

.method private b(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/c;

    .line 252
    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-object v0

    .line 257
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_broker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Lcom/xueqiu/android/stock/c/x;

    move-result-object v0

    .line 267
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->r:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/stock/c/x;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/StockDetailActivity;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/StockDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->y:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/StockDetailActivity;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/StockDetailActivity;->c(I)V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->j()Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/StockDetailActivity;)Z
    .locals 3

    .prologue
    .line 63
    .line 6365
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->j()Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/base/util/at;

    move-result-object v0

    .line 6366
    iget-object v1, v0, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    const-string v2, "bitcoin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6367
    const/4 v0, 0x1

    .line 6371
    :goto_0
    return v0

    .line 6368
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    const v2, 0x7f070225

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/StockDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6369
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->c()Z

    move-result v0

    goto :goto_0

    .line 6370
    :cond_1
    iget-object v0, v0, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    const v1, 0x7f070227

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6371
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->a()Z

    move-result v0

    goto :goto_0

    .line 6373
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->b()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/StockDetailActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->u:Lcom/xueqiu/android/message/client/MessageService;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/StockDetailActivity;)V
    .locals 3

    .prologue
    .line 63
    .line 6390
    if-eqz p0, :cond_1

    .line 6394
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->x:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->x:Lcom/xueqiu/android/base/b/x;

    .line 6538
    iget-boolean v0, v0, Lcom/android/volley/n;->i:Z

    .line 6395
    if-eqz v0, :cond_1

    .line 7180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6397
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->j()Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/StockDetailActivity$5;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$5;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->x:Lcom/xueqiu/android/base/b/x;

    .line 6422
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->x:Lcom/xueqiu/android/base/b/x;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 63
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/stock/c/x;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->k()Lcom/xueqiu/android/stock/c/x;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method private k()Lcom/xueqiu/android/stock/c/x;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->b(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/x;

    return-object v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    .prologue
    .line 273
    const v0, 0x7f0e051e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 274
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 276
    return-void
.end method

.method public final b(FF)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 281
    return-void
.end method

.method public final c(FF)V
    .locals 2

    .prologue
    .line 285
    const v0, 0x7f0e051e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 286
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 287
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 288
    return-void
.end method

.method public final d(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->w:Z

    .line 293
    const v0, 0x7f0e051e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 294
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 296
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v0

    .line 197
    :goto_0
    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->setRequestedOrientation(I)V

    .line 208
    :cond_0
    :goto_1
    return v0

    .line 196
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->k()Lcom/xueqiu/android/stock/c/x;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->k()Lcom/xueqiu/android/stock/c/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->y_()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    :cond_3
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->setTheme(I)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method public final e(FF)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public final f(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->w:Z

    .line 306
    const v0, 0x7f0e051e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 307
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 309
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->setContentView(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 96
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->finish()V

    .line 172
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_current_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->k:I

    .line 107
    new-instance v2, Lcom/xueqiu/android/stock/o;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/stock/o;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;Landroid/support/v4/a/q;)V

    .line 108
    const v1, 0x7f0e0176

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 109
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 110
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 112
    new-instance v1, Lcom/xueqiu/android/stock/StockDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$1;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    .line 142
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 143
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->k:I

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    .line 146
    iget v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->k:I

    if-nez v1, :cond_2

    .line 147
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/stock/StockDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$2;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 158
    :cond_2
    const v1, 0x7f0e01a2

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->v:Landroid/view/ViewGroup;

    .line 159
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->v:Landroid/view/ViewGroup;

    const v2, 0x7f0e00ce

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/StockDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$3;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->z:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Lcom/xueqiu/android/stock/StockDetailActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 169
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x640

    invoke-direct {v1, v2, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 170
    const-string v2, "symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->u:Lcom/xueqiu/android/message/client/MessageService;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->z:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->c(I)V

    .line 380
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 381
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStop()V

    .line 387
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const v5, 0x7f0e0195

    const/4 v4, 0x0

    .line 176
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->setRequestedOrientation(I)V

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/o;

    .line 180
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 2328
    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/stock/o;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 180
    check-cast v0, Lcom/xueqiu/android/stock/c/x;

    .line 182
    if-nez p1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 185
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 3124
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v0, :cond_1

    .line 3125
    const-string v0, "\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\uff01"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 3126
    :cond_0
    :goto_0
    return-void

    .line 3129
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x642

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 3130
    const-string v2, "symbol"

    iget-object v3, v1, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 3131
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 3133
    new-instance v0, Lcom/xueqiu/android/stockchart/d/b;

    invoke-direct {v0}, Lcom/xueqiu/android/stockchart/d/b;-><init>()V

    iput-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    .line 3134
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    .line 4194
    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 3135
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    .line 5030
    iget-object v2, v2, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 3135
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/d/b;->a(Ljava/lang/String;)V

    .line 3136
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/b;->e:Lcom/xueqiu/android/stockchart/c/b;

    .line 3137
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/c;->aq:Ljava/lang/String;

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->aq:Ljava/lang/String;

    .line 3138
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/c;->ar:Ljava/lang/String;

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->ar:Ljava/lang/String;

    .line 3139
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/c;->ax:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->ax:Ljava/util/HashMap;

    .line 3140
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/c;->ay:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->ay:Ljava/util/HashMap;

    .line 3141
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->am:Lcom/xueqiu/android/stockchart/b/a;

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->al:Lcom/xueqiu/android/stockchart/b/a;

    .line 3142
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v1, Lcom/xueqiu/android/stock/c/t;->an:Lcom/xueqiu/android/stockchart/a/b;

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->am:Lcom/xueqiu/android/stockchart/a/b;

    .line 3144
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    const-string v2, "big"

    iput-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->as:Ljava/lang/String;

    .line 3145
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 3146
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v2, v5, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 3147
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    .line 5275
    iget-boolean v0, v0, Lcom/xueqiu/android/common/b;->n:Z

    .line 3147
    if-eqz v0, :cond_2

    .line 3148
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->d()I

    .line 3150
    :cond_2
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 186
    :cond_3
    if-ne p1, v3, :cond_0

    .line 187
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 189
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 6154
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    if-eqz v0, :cond_0

    .line 6155
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/d/b;->aq:Ljava/lang/String;

    .line 6156
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6157
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v3

    .line 6158
    iget-object v0, v1, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v3, v0}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 6159
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    .line 6275
    iget-boolean v0, v0, Lcom/xueqiu/android/common/b;->n:Z

    .line 6159
    if-eqz v0, :cond_4

    .line 6160
    invoke-virtual {v3}, Landroid/support/v4/a/ac;->d()I

    .line 6162
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6164
    new-instance v3, Lcom/xueqiu/android/stock/c/t$1;

    invoke-direct {v3, v1, v2}, Lcom/xueqiu/android/stock/c/t$1;-><init>(Lcom/xueqiu/android/stock/c/t;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity;->w:Z

    if-eqz v1, :cond_1

    .line 218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
