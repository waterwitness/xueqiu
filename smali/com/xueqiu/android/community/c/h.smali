.class public final Lcom/xueqiu/android/community/c/h;
.super Lcom/xueqiu/android/common/c;
.source "HotTopicFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;
.implements Lcom/xueqiu/android/common/widget/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;",
        "Lcom/xueqiu/android/common/widget/l;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/xueqiu/android/community/a/am;

.field private e:Lcom/xueqiu/android/community/model/Status;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 192
    iput-object v2, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    .line 194
    iput-object v2, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    .line 196
    iput-object v2, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    .line 197
    iput v1, p0, Lcom/xueqiu/android/community/c/h;->f:I

    .line 198
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/h;->g:Z

    .line 199
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/h;->h:Z

    .line 200
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/h;->a:Z

    return-void
.end method

.method private C()V
    .locals 5

    .prologue
    .line 366
    .line 5240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 366
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    if-eqz v0, :cond_1

    .line 367
    const v0, 0x7f0e02ee

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 368
    const/4 v1, 0x0

    .line 369
    iget-object v2, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 370
    iget-object v1, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getTopicTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 374
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v0, 0x7f0e02ed

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 377
    iget-object v1, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getTopicPicHead()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 379
    new-instance v2, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 380
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getTopicPicHead()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 383
    :cond_1
    return-void

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method private D()I
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 405
    const/16 v0, 0xb

    .line 415
    :goto_0
    return v0

    .line 406
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 407
    const/16 v0, 0x9

    goto :goto_0

    .line 408
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 409
    const/16 v0, 0xa

    goto :goto_0

    .line 410
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 411
    const/16 v0, 0xc

    goto :goto_0

    .line 413
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private E()V
    .locals 2

    .prologue
    .line 427
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 428
    const v0, 0x7f070536

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/h;->f()Landroid/content/Context;

    move-result-object v1

    .line 7088
    invoke-static {v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    return-void

    .line 429
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 430
    const v0, 0x7f070535

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 432
    const v0, 0x7f070538

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 434
    const v0, 0x7f070537

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_3
    const v0, 0x7f070534

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/community/model/Status;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method private c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 319
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 320
    const-string v0, "2"

    .line 330
    :goto_0
    iget v2, p0, Lcom/xueqiu/android/community/c/h;->c:I

    .line 4456
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v1, v2, v0, p1}, Lcom/xueqiu/android/base/b/aj;->a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 330
    return-object v0

    .line 321
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 322
    const-string v0, "5"

    goto :goto_0

    .line 323
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 324
    const-string v0, "1"

    goto :goto_0

    .line 325
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 326
    const-string v0, "4"

    goto :goto_0

    .line 328
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/h;)Lcom/xueqiu/android/community/a/am;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/h;)I
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->D()I

    move-result v0

    return v0
.end method

.method private u()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 249
    new-instance v1, Lcom/xueqiu/android/community/widget/i;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    .line 250
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0300b6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/xueqiu/android/community/c/h$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/h$1;-><init>(Lcom/xueqiu/android/community/c/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/h;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v2, v1

    .line 264
    const-wide v4, 0x3fe0cccccccccccdL    # 0.525

    mul-double/2addr v2, v4

    .line 265
    const v1, 0x7f0e02ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    double-to-int v2, v2

    invoke-direct {v4, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v1, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    .line 3338
    invoke-virtual {v1}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/xueqiu/android/community/a/am;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/h;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/c/h$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/h$2;-><init>(Lcom/xueqiu/android/community/c/h;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    if-nez v0, :cond_2

    .line 287
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->D()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->queryTodayTopicStatuses(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 292
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    .line 293
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/am;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/am;->a(Ljava/util/ArrayList;)V

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->C()V

    .line 303
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 304
    :cond_3
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->g:Z

    if-nez v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    .line 4225
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 306
    iput-boolean v7, p0, Lcom/xueqiu/android/community/c/h;->g:Z

    .line 308
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->E()V

    .line 311
    :cond_4
    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->u()V

    .line 231
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/h;->h:Z

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    .line 3225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 236
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/h;->g:Z

    .line 238
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->E()V

    .line 241
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 210
    const v0, 0x7f0300b5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 211
    const v1, 0x7f070475

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/h;->d(I)V

    .line 212
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    .line 355
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/c/h;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 218
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/h;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 219
    const-string v1, "view_which"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/c/h;->f:I

    .line 221
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->h:Z

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->u()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->h:Z

    .line 225
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 338
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 340
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 341
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p3, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->b:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 346
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/h;->e:Lcom/xueqiu/android/community/model/Status;

    .line 347
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 348
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/h;->C()V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 361
    iget v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/h;->c:I

    .line 362
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/c/h;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->h:Z

    .line 421
    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/h;->a:Z

    .line 422
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 423
    return-void
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/h;->d:Lcom/xueqiu/android/community/a/am;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/am;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 388
    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xueqiu/android/community/c/h$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/h$3;-><init>(Lcom/xueqiu/android/community/c/h;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 400
    return-void
.end method
