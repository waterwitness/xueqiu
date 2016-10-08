.class public Lcom/xueqiu/android/community/c/o;
.super Lcom/xueqiu/android/common/e;
.source "PublicTimelineFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# instance fields
.field private aA:I

.field private aB:J

.field private aC:J

.field private ak:Landroid/widget/TextView;

.field private al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/PublicTimeline;",
            ">;"
        }
    .end annotation
.end field

.field private am:Lcom/d/a/b/d;

.field private an:Lcom/d/a/b/f;

.field private ao:Lcom/xueqiu/android/base/util/o;

.field private ap:J

.field private aq:J

.field private ar:Landroid/content/BroadcastReceiver;

.field private as:Landroid/content/BroadcastReceiver;

.field private at:Landroid/content/BroadcastReceiver;

.field private au:Landroid/view/View;

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:Z

.field private b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lcom/viewpagerindicator/CirclePageIndicator;

.field private e:Landroid/view/View;

.field private f:Lcom/xueqiu/android/community/a/o;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f020177

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/xueqiu/android/common/e;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->al:Ljava/util/List;

    .line 116
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 119
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->am:Lcom/d/a/b/d;

    .line 121
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->an:Lcom/d/a/b/f;

    .line 123
    new-instance v0, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->ao:Lcom/xueqiu/android/base/util/o;

    .line 138
    new-instance v0, Lcom/xueqiu/android/community/c/o$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/c/o$1;-><init>(Lcom/xueqiu/android/community/c/o;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->ar:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v0, Lcom/xueqiu/android/community/c/o$12;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/c/o$12;-><init>(Lcom/xueqiu/android/community/c/o;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->as:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/xueqiu/android/community/c/o$14;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/c/o$14;-><init>(Lcom/xueqiu/android/community/c/o;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->at:Landroid/content/BroadcastReceiver;

    .line 246
    iput v1, p0, Lcom/xueqiu/android/community/c/o;->av:I

    .line 247
    iput v1, p0, Lcom/xueqiu/android/community/c/o;->aw:I

    .line 248
    iput v1, p0, Lcom/xueqiu/android/community/c/o;->ax:I

    .line 249
    iput v1, p0, Lcom/xueqiu/android/community/c/o;->ay:I

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/o;->az:Z

    .line 408
    iput v1, p0, Lcom/xueqiu/android/community/c/o;->aA:I

    .line 538
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xueqiu/android/community/c/o;->aB:J

    .line 660
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/community/c/o;->aC:J

    .line 136
    return-void
.end method

.method private C()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 486
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 487
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 488
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 489
    invoke-virtual {v2, v4, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 490
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v2, v5, [I

    const v3, 0x7f01012e

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 492
    const v2, 0x7f0d012a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 493
    return-object v1
.end method

.method private D()V
    .locals 7

    .prologue
    const v2, 0x7f020208

    .line 725
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    const v1, 0x7f0e01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 727
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 10293
    iput v2, v1, Lcom/d/a/b/e;->c:I

    .line 11270
    iput v2, v1, Lcom/d/a/b/e;->b:I

    .line 12248
    iput v2, v1, Lcom/d/a/b/e;->a:I

    .line 731
    new-instance v2, Lcom/d/a/b/c/c;

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 12445
    iput-object v2, v1, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 731
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    .line 732
    const/4 v1, 0x0

    .line 13069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v3

    .line 13186
    iget-boolean v3, v3, Lcom/xueqiu/android/base/t;->d:Z

    .line 733
    if-nez v3, :cond_0

    .line 734
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v3

    .line 14069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 14077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 734
    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    .line 736
    if-eqz v3, :cond_1

    .line 737
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 743
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->an:Lcom/d/a/b/f;

    iget-object v4, p0, Lcom/xueqiu/android/community/c/o;->ao:Lcom/xueqiu/android/base/util/o;

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 745
    return-void

    .line 14749
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 15077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 14749
    new-instance v6, Lcom/xueqiu/android/community/c/o$13;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/community/c/o$13;-><init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method private E()V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v0, :cond_0

    .line 766
    const v0, 0x7f0701da

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v1

    .line 767
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/o;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/community/c/o;->av:I

    return p1
.end method

.method private a(JJZ)V
    .locals 7

    .prologue
    const/16 v4, 0x44c

    .line 541
    if-nez p5, :cond_1

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 543
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "last_refresh_time"

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 545
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/o;->aB:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 546
    iput-wide p1, p0, Lcom/xueqiu/android/community/c/o;->aB:J

    .line 551
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x1e

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 553
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 560
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v6, Lcom/xueqiu/android/community/c/o$11;

    invoke-direct {v6, p0, p0, p5}, Lcom/xueqiu/android/community/c/o$11;-><init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/base/b/q;Z)V

    .line 9700
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->c(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 622
    :goto_1
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    goto :goto_1

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->e:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x1d

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 558
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method private a(Lcom/xueqiu/android/common/model/EnterButton;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 505
    const v0, 0x7f0e01df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/EnterButton;->getButtonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const v0, 0x7f0e01de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 507
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/EnterButton;->getImageLink_3x()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->an:Lcom/d/a/b/f;

    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->am:Lcom/d/a/b/d;

    iget-object v4, p0, Lcom/xueqiu/android/community/c/o;->ao:Lcom/xueqiu/android/base/util/o;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 509
    new-instance v0, Lcom/xueqiu/android/community/c/o$9;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/community/c/o$9;-><init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/common/model/EnterButton;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->u()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/o;J)V
    .locals 7

    .prologue
    .line 82
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/xueqiu/android/community/c/o;->a(JJZ)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/o;Lcom/google/gson/JsonArray;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 82
    .line 16625
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 16626
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 16627
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16629
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16632
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 16634
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 16635
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 16636
    const-string v0, "location"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 16637
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v4, "item"

    .line 16638
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 16637
    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 16639
    const-string v4, "column"

    .line 17106
    invoke-static {v2, v4, v7}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16640
    const-string v5, "icon"

    .line 18106
    invoke-static {v2, v5, v7}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16641
    const-string v6, "target"

    .line 19106
    invoke-static {v2, v6, v7}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16642
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/model/PublicTimeline;->setHeaderText(Ljava/lang/String;)V

    .line 16643
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/community/model/PublicTimeline;->setHeaderIcon(Ljava/lang/String;)V

    .line 16644
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/PublicTimeline;->setTarget(Ljava/lang/String;)V

    .line 16647
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16649
    if-ltz v3, :cond_2

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 16650
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 16652
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->al:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16634
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 82
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/o;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/c/o;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->d:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 416
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xueqiu/android/cube/a/m;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/xueqiu/android/cube/a/m;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->d:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->d:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcom/xueqiu/android/community/c/o;->aA:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 419
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->d:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/xueqiu/android/community/c/o$7;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/community/c/o$7;-><init>(Lcom/xueqiu/android/community/c/o;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/o;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/community/c/o;->aw:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/o;J)J
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/community/c/o;->aC:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->D()V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/o;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/community/c/o;->ax:I

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/o;J)J
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/community/c/o;->aB:J

    return-wide p1
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/o;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->ak:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/o;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/community/c/o;->ay:I

    return p1
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/o;J)J
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/community/c/o;->aq:J

    return-wide p1
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/o;)V
    .locals 6

    .prologue
    .line 15663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/c/o;->aC:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    .line 15664
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    .line 15665
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 15666
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/o;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/xueqiu/android/community/c/o;->aA:I

    return p1
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/o;J)J
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/xueqiu/android/community/c/o;->ap:J

    return-wide p1
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->E()V

    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->refresh()V

    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/community/c/o;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/community/c/o;->ax:I

    return v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/c/o;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/community/c/o;->ay:I

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/c/o;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/community/c/o;->av:I

    return v0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/c/o;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/community/c/o;->aw:I

    return v0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/c/o;)J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/o;->aq:J

    return-wide v0
.end method

.method static synthetic n(Lcom/xueqiu/android/community/c/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/community/c/o;)J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/o;->aB:J

    return-wide v0
.end method

.method static synthetic p(Lcom/xueqiu/android/community/c/o;)J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/o;->ap:J

    return-wide v0
.end method

.method private refresh()V
    .locals 7

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 522
    const/4 v1, 0x1

    new-instance v2, Lcom/xueqiu/android/community/c/o$10;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/community/c/o$10;-><init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->d(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 535
    iget-wide v2, p0, Lcom/xueqiu/android/community/c/o;->ap:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xueqiu/android/community/c/o;->a(JJZ)V

    .line 536
    return-void
.end method

.method private u()V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 444
    const-string v0, "enter_button_config"

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v9, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->g:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 455
    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 457
    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/community/c/o$8;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/c/o$8;-><init>(Lcom/xueqiu/android/community/c/o;)V

    .line 459
    invoke-virtual {v4}, Lcom/xueqiu/android/community/c/o$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 458
    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 460
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 461
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 462
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v1

    .line 463
    :goto_1
    if-ge v3, v6, :cond_4

    .line 7497
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v7, 0x7f030066

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 465
    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/model/EnterButton;

    invoke-direct {p0, v1, v7}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/common/model/EnterButton;Landroid/view/View;)V

    .line 467
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 469
    :cond_4
    if-ge v5, v2, :cond_5

    .line 470
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_5
    :goto_2
    if-ge v2, v5, :cond_0

    .line 7501
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030067

    invoke-virtual {v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 474
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/model/EnterButton;

    invoke-direct {p0, v1, v3}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/common/model/EnterButton;Landroid/view/View;)V

    .line 476
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    add-int/lit8 v1, v5, -0x1

    if-eq v2, v1, :cond_6

    .line 478
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->C()Landroid/view/View;

    .line 479
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->C()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->m()V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    const v9, 0x7f0e0176

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    if-nez v0, :cond_6

    .line 206
    const v0, 0x7f03012f

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    const v1, 0x7f0e04ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/o$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$17;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    const v1, 0x7f0e04c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/o$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$18;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    const v1, 0x7f0e04a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/o$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$19;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->D()V

    .line 239
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    .line 4252
    const v0, 0x7f0e04c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->ak:Landroid/widget/TextView;

    .line 4366
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->ak:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4367
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4368
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->ak:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->k()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "title"

    .line 5106
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4368
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4256
    :cond_0
    :goto_0
    const v0, 0x7f0e0175

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 4257
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setShowDividers(I)V

    .line 4259
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/o;->b(Ljava/lang/String;)V

    .line 4261
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030068

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 4262
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006a

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 4263
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    .line 5672
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v6, "discover_header_img_height"

    invoke-static {v0, v6, v10, v11}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getDouble(Landroid/content/Context;Ljava/lang/String;D)D

    move-result-wide v6

    .line 5673
    cmpl-double v0, v6, v10

    if-lez v0, :cond_5

    .line 5674
    double-to-int v0, v6

    .line 4263
    :goto_1
    invoke-direct {v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4264
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    .line 4265
    const v0, 0x7f0e0186

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->d:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 4266
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->d:Lcom/viewpagerindicator/CirclePageIndicator;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    .line 4267
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->c:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/xueqiu/android/community/c/o$20;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/c/o$20;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4274
    const v0, 0x7f0e01e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->g:Landroid/widget/LinearLayout;

    .line 4275
    const v0, 0x7f0e01e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->h:Landroid/widget/LinearLayout;

    .line 4276
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03021c

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->e:Landroid/view/View;

    .line 4277
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->e:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4278
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4279
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4280
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4281
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 4282
    new-instance v0, Lcom/xueqiu/android/community/a/o;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/o;-><init>(Lcom/xueqiu/android/common/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    .line 4283
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/c/o$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$2;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 4291
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4292
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/c/o$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$3;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4337
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->e:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/c/o$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$4;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4343
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->E()V

    .line 6376
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cached_editorials"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6377
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cached_timeline"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6378
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 6379
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/c/o$5;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/c/o$5;-><init>(Lcom/xueqiu/android/community/c/o;)V

    .line 6380
    invoke-virtual {v3}, Lcom/xueqiu/android/community/c/o$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 6379
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6381
    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/c/o;->a(Ljava/util/List;)V

    .line 6384
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 6385
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/community/c/o$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/c/o$6;-><init>(Lcom/xueqiu/android/community/c/o;)V

    .line 6386
    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/o$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 6385
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6387
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/a/o;->a(Ljava/util/ArrayList;)V

    .line 6388
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->notifyDataSetChanged()V

    .line 4345
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->u()V

    .line 243
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    return-object v0

    .line 4370
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->ak:Landroid/widget/TextView;

    const v2, 0x7f07034c

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/c/o;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5677
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 5678
    int-to-float v0, v0

    const v6, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_1

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->au:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 690
    packed-switch p1, :pswitch_data_0

    .line 9718
    :cond_0
    :goto_0
    return-void

    .line 692
    :pswitch_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 693
    const-string v0, "back_status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 694
    if-eqz v0, :cond_0

    .line 9705
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    if-eqz v1, :cond_0

    .line 9708
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 9709
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/community/a/o;->a(I)I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/community/a/o;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9710
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/PublicTimeline;->getData()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 9712
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    .line 9713
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 9714
    const-string v3, "reply_count"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9715
    const-string v3, "retweet_count"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9716
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->setData(Ljava/lang/String;)V

    .line 9717
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x3

    const-wide/16 v8, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "index"

    .line 4073
    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/o;->e_(Z)V

    .line 173
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/community/c/o$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$15;-><init>(Lcom/xueqiu/android/community/c/o;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/o;->a(Lrx/j;)V

    .line 179
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cached_max_id"

    invoke-static {v0, v1, v8, v9}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/c/o;->aq:J

    .line 180
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cached_since_id"

    invoke-static {v0, v1, v8, v9}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/c/o;->ap:J

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "intent_action_enter_button_config_updated"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.user.UPDATE_USER_INFO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->v()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/c/o;->ar:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 186
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->as:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 187
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.fastScrollChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/o$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/o$16;-><init>(Lcom/xueqiu/android/community/c/o;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/o;->a(Lrx/j;)V

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_search_text_status_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->v()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->at:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 396
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 397
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/o;->az:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/o;->refresh()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/o;->az:Z

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->k()V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/o;->c(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->b(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->a:Ljava/lang/String;

    .line 7197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 356
    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {p1}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 682
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/o;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 683
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 684
    return-void
.end method

.method public final d()V
    .locals 7

    .prologue
    const/16 v0, 0xa

    const/4 v6, 0x0

    .line 772
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->d()V

    .line 773
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v2

    if-le v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 775
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cached_timeline"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cached_max_id"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 777
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cached_since_id"

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 779
    :cond_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o;->f:Lcom/xueqiu/android/community/a/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->o()V

    .line 351
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->ar:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 784
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->as:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 785
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/o;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o;->at:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 786
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->q()V

    .line 787
    return-void
.end method
