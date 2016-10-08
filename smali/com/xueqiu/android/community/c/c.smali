.class public Lcom/xueqiu/android/community/c/c;
.super Lcom/xueqiu/android/common/e;
.source "HomeFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# instance fields
.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:I

.field private ao:Landroid/widget/LinearLayout;

.field private ap:Landroid/widget/LinearLayout;

.field private aq:Landroid/widget/LinearLayout;

.field private ar:Landroid/widget/LinearLayout;

.field private as:Landroid/widget/RelativeLayout;

.field private at:Landroid/view/View;

.field private au:Landroid/os/Handler;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/View$OnClickListener;

.field private b:Lcom/viewpagerindicator/TabPageIndicator;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/view/View;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/UserGroup;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Lcom/xueqiu/android/community/c/d;

.field private g:Lcom/xueqiu/android/community/c/f;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Lcom/xueqiu/android/common/e;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->b:Lcom/viewpagerindicator/TabPageIndicator;

    .line 108
    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    .line 110
    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->d:Landroid/view/View;

    .line 112
    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    .line 114
    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    .line 116
    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->g:Lcom/xueqiu/android/community/c/f;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/c;->h:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->ak:Z

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->au:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/xueqiu/android/community/c/c$6;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/c/c$6;-><init>(Lcom/xueqiu/android/community/c/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    .line 151
    return-void
.end method

.method private C()V
    .locals 8

    .prologue
    .line 350
    new-instance v0, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 351
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 352
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 355
    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 356
    const v2, 0x7f0703b0

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/c/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 358
    new-instance v2, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 359
    const-wide/16 v4, 0x6

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 360
    const v3, 0x7f0703b9

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/c/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 362
    new-instance v3, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 363
    const-wide/16 v4, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 364
    const v4, 0x7f0703b1

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/c/c;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 366
    new-instance v4, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v4}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 367
    const-wide/16 v6, 0x4

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 368
    const v5, 0x7f0703b2

    invoke-virtual {p0, v5}, Lcom/xueqiu/android/community/c/c;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 370
    new-instance v5, Lcom/xueqiu/android/community/model/UserGroup;

    invoke-direct {v5}, Lcom/xueqiu/android/community/model/UserGroup;-><init>()V

    .line 371
    const-wide/16 v6, 0xd

    invoke-virtual {v5, v6, v7}, Lcom/xueqiu/android/community/model/UserGroup;->setGroupId(J)V

    .line 372
    const v6, 0x7f0703b8

    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/c/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/community/model/UserGroup;->setName(Ljava/lang/String;)V

    .line 374
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    .line 375
    iget-object v6, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->D()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    return-void
.end method

.method private D()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/UserGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_friendship_groups"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_2

    .line 388
    :try_start_0
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/UserGroupParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/UserGroupParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserGroup;

    .line 395
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 396
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 397
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 405
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    .line 400
    goto :goto_1
.end method

.method private E()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 569
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 574
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 575
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 576
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->au:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/community/c/c$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/c$7;-><init>(Lcom/xueqiu/android/community/c/c;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/c;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/xueqiu/android/community/c/c;->an:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/c;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->ak:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->u()V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/c;)V
    .locals 4

    .prologue
    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 8193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 7608
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    if-eqz v0, :cond_1

    .line 7609
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 7610
    if-eqz v3, :cond_0

    .line 7611
    invoke-virtual {v3}, Lcom/xueqiu/android/community/c/d;->u()V

    .line 7609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7615
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 7616
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_selected_timeline_group"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/c;)Lcom/viewpagerindicator/TabPageIndicator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->b:Lcom/viewpagerindicator/TabPageIndicator;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/c/c;)[Lcom/xueqiu/android/community/c/d;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/c/c;)Lcom/xueqiu/android/community/c/f;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->g:Lcom/xueqiu/android/community/c/f;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/c/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/c/c;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    .line 8586
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8587
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->E()V

    :goto_0
    return-void

    .line 9557
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9558
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->at:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9559
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 9564
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 9565
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/c/c;)V
    .locals 3

    .prologue
    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 11186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 10542
    if-eqz v0, :cond_0

    .line 10543
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 12152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 10544
    :goto_0
    return-void

    .line 10547
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10548
    const-string v1, "extra_write_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10549
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->a(Landroid/content/Intent;)V

    .line 10550
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 10552
    const-string v1, "name"

    const-string v2, "\u53d1\u5e16"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 10553
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/c/c;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->am:Z

    return v0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/c/c;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->am:Z

    return v0
.end method

.method static synthetic n(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/community/c/c;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->al:Z

    return v0
.end method

.method static synthetic p(Lcom/xueqiu/android/community/c/c;)V
    .locals 5

    .prologue
    .line 13468
    const-string v0, "HomeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showPayGuide mHasUsedPay = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/xueqiu/android/community/c/c;->al:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13469
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13470
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->PAY_ASK_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13471
    const-string v1, "extra_view_click_position"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0253

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 13472
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->a(Landroid/content/Intent;)V

    .line 13473
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    .line 98
    return-void
.end method

.method static synthetic q(Lcom/xueqiu/android/community/c/c;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->al:Z

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->E()V

    return-void
.end method

.method static synthetic s(Lcom/xueqiu/android/community/c/c;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->ao:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/xueqiu/android/community/c/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->at:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/community/c/c;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private u()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->ak:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->a(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/model/UserGroup;

    move-result-object v3

    .line 208
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->C()V

    .line 4425
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 4436
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 4437
    iget-object v4, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 4438
    if-eqz v6, :cond_0

    .line 4439
    invoke-virtual {v2, v6}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 4437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4442
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->e()I

    .line 4429
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xueqiu/android/community/c/d;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    .line 4431
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->d()V

    .line 4432
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->b:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicator;->a()V

    .line 212
    const/4 v2, 0x1

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserGroup;

    .line 214
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    move v0, v1

    .line 219
    :goto_1
    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 222
    :cond_4
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/c;->ak:Z

    .line 224
    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final B_()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/d;->B_()V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->e_(Z)V

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    if-nez v0, :cond_7

    .line 188
    const v0, 0x7f03012b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    .line 3227
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->b(Ljava/lang/String;)V

    .line 3228
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->at:Landroid/view/View;

    .line 3229
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e04ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->ao:Landroid/widget/LinearLayout;

    .line 3230
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->ao:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3231
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e04ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->ap:Landroid/widget/LinearLayout;

    .line 3232
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e04ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->aq:Landroid/widget/LinearLayout;

    .line 3233
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->aq:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3234
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e04af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->ar:Landroid/widget/LinearLayout;

    .line 3235
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->ar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3236
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e04b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->as:Landroid/widget/RelativeLayout;

    .line 3237
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->as:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3238
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->b:Lcom/viewpagerindicator/TabPageIndicator;

    .line 3239
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    .line 3240
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->d:Landroid/view/View;

    .line 3241
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->b:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/c$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/c$3;-><init>(Lcom/xueqiu/android/community/c/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 3252
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e0783

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/c$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/c$4;-><init>(Lcom/xueqiu/android/community/c/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3288
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xueqiu/android/community/c/d;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    .line 3293
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3294
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xueqiu/android/community/c/d;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/community/c/d;

    .line 3295
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 3296
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/UserGroup;

    .line 3297
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 3298
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v6

    invoke-static {v5}, Lcom/xueqiu/android/community/c/d;->a(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/model/UserGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/UserGroup;->getGroupId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 3299
    iget-object v6, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    aput-object v5, v6, v2

    .line 3297
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3295
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3304
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->g:Lcom/xueqiu/android/community/c/f;

    if-nez v0, :cond_4

    .line 3305
    new-instance v0, Lcom/xueqiu/android/community/c/f;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/c/f;-><init>(Lcom/xueqiu/android/community/c/c;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/c;->g:Lcom/xueqiu/android/community/c/f;

    .line 3307
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->g:Lcom/xueqiu/android/community/c/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 3308
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xueqiu/android/community/c/c$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/c$5;-><init>(Lcom/xueqiu/android/community/c/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/cp;)V

    .line 3334
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->b:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 3335
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 3338
    iget v0, p0, Lcom/xueqiu/android/community/c/c;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/community/c/c;->h:I

    if-le v0, v1, :cond_5

    .line 3339
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/xueqiu/android/community/c/c;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 3340
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/c;->h:I

    .line 3446
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e04a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3447
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3448
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->aw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    return-object v0

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 1086
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    iget v1, p0, Lcom/xueqiu/android/community/c/c;->an:I

    aget-object v2, v0, v1

    .line 1088
    const-string v0, "back_status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1089
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/d;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6034
    iget-object v1, v2, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 6367
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 6034
    invoke-virtual {v1}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 6035
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 6036
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 6037
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/model/Status;->setRetweetsCount(I)V

    .line 6038
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/model/Status;->setCommentsCount(I)V

    .line 6039
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRewardUserCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/Status;->setRewardUserCount(I)V

    .line 6040
    iget-object v0, v2, Lcom/xueqiu/android/community/c/d;->a:Lcom/xueqiu/android/community/widget/i;

    .line 7367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 6040
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 1093
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/e;->a(IILandroid/content/Intent;)V

    .line 1094
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "timeline"

    .line 2073
    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->C()V

    .line 158
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.USER_GROUP_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/c$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/c$1;-><init>(Lcom/xueqiu/android/community/c/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->a(Lrx/j;)V

    .line 165
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.intent.action.USER_OFFLINE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/c$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/c$2;-><init>(Lcom/xueqiu/android/community/c/c;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->a(Lrx/j;)V

    .line 171
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_selected_timeline_group"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/c/c;->h:I

    .line 172
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->c(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->b(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->a:Ljava/lang/String;

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 271
    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->f:[Lcom/xueqiu/android/community/c/d;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/community/c/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 345
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/c;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 346
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 347
    return-void
.end method

.method public final o()V
    .locals 6

    .prologue
    const v5, 0x7f0e04b5

    const v4, 0x7f0e04aa

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 176
    const-string v0, "HomeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->o()V

    .line 178
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->u()V

    .line 2452
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_ask_first_in"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->al:Z

    .line 2453
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pay_ask_first_in_write"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->am:Z

    .line 2454
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->am:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/c;->al:Z

    if-eqz v0, :cond_1

    .line 2455
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2459
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "post_long_status_tag"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2460
    if-eqz v0, :cond_2

    .line 2461
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    .line 2457
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2463
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->av:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final p()V
    .locals 0

    .prologue
    .line 595
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->p()V

    .line 596
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/c;->E()V

    .line 597
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 604
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->q()V

    .line 605
    return-void
.end method
