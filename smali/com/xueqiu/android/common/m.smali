.class public final Lcom/xueqiu/android/common/m;
.super Lcom/xueqiu/android/common/c;
.source "MyActivity.java"


# instance fields
.field private a:J

.field private ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private am:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/view/View;

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private as:Landroid/content/BroadcastReceiver;

.field private at:I

.field private au:Landroid/content/BroadcastReceiver;

.field private b:Lcom/xueqiu/android/community/model/User;

.field private c:I

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/common/m;->a:J

    .line 165
    iput-object v2, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    .line 168
    iput-object v2, p0, Lcom/xueqiu/android/common/m;->d:Landroid/view/ViewGroup;

    .line 170
    iput-object v2, p0, Lcom/xueqiu/android/common/m;->e:Landroid/view/LayoutInflater;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->ak:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->ar:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/xueqiu/android/common/m$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/m$1;-><init>(Lcom/xueqiu/android/common/m;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->as:Landroid/content/BroadcastReceiver;

    .line 540
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/common/m;->at:I

    .line 981
    new-instance v0, Lcom/xueqiu/android/common/m$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/m$8;-><init>(Lcom/xueqiu/android/common/m;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->au:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 346
    .line 21240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 346
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const v0, 0x7f0e04be

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 351
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getStatusesCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const v0, 0x7f0e04c1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getFriendsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v0, 0x7f0e04c4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 355
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getFollowersCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->D()V

    .line 359
    const v0, 0x7f0e04bd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/m$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$13;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v0, 0x7f0e04c0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/m$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$14;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v0, 0x7f0e04c2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/m$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$15;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private D()V
    .locals 3

    .prologue
    .line 398
    .line 22240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 398
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const v0, 0x7f0e04c5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 403
    iget v1, p0, Lcom/xueqiu/android/common/m;->c:I

    if-lez v1, :cond_4

    .line 404
    iget v1, p0, Lcom/xueqiu/android/common/m;->c:I

    .line 22593
    if-nez v1, :cond_2

    .line 22594
    const-string v1, ""

    .line 404
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/m;->a(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 22595
    :cond_2
    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_3

    .line 22596
    const-string v1, "999+"

    goto :goto_1

    .line 22598
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 408
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private E()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 435
    .line 23240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 435
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_3

    .line 437
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 438
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const v0, 0x7f0e0209

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 441
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 442
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    const v0, 0x7f0e01d1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 449
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->an:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ao:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 457
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->i(I)I

    move-result v1

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 458
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->ao:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23471
    :goto_1
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 23472
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageWidth_100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 23473
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 23474
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageWidth_100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/d/a/b/f/d;

    invoke-direct {v4}, Lcom/d/a/b/f/d;-><init>()V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 23477
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v1, v2, :cond_6

    .line 23478
    const v1, 0x7f020483

    .line 23482
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23487
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v1

    .line 23488
    const v0, 0x7f0e04ba

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 23490
    sget-object v2, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v1, v2, :cond_7

    .line 23491
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23492
    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23495
    :cond_3
    :goto_3
    return-void

    .line 443
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 460
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->an:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ao:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 463
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->ao:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 23480
    :cond_6
    const v1, 0x7f020488

    goto :goto_2

    .line 23493
    :cond_7
    sget-object v2, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v1, v2, :cond_8

    .line 23494
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23495
    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 23497
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method private F()V
    .locals 14

    .prologue
    .line 611
    .line 25069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 25186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 24961
    if-eqz v0, :cond_6

    .line 24962
    const-string v0, "profile_menu_config_anonymous"

    .line 24963
    const-string v1, "profile_menu_config_updated_anonymous"

    .line 24969
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24970
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24971
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->H()Ljava/lang/String;

    move-result-object v2

    .line 24972
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24973
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    move-object v0, v2

    .line 24976
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/m$7;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/m$7;-><init>(Lcom/xueqiu/android/common/m;)V

    .line 24977
    invoke-virtual {v2}, Lcom/xueqiu/android/common/m$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 24976
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 612
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v10

    .line 613
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v11

    .line 615
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1b

    .line 616
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    .line 618
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 619
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 621
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f010052

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 622
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 624
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 625
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->ak:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1a

    .line 629
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/xueqiu/android/common/model/ProfileMenuItem;

    .line 631
    const-string v1, "ACTIVITY"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 632
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->G()Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    .line 641
    :goto_3
    const v1, 0x7f0e00a0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 642
    const v1, 0x7f0e00a1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 643
    const v1, 0x7f0e0256

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 644
    const v2, 0x7f0e0255

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 645
    if-eqz v2, :cond_1

    .line 646
    iget-object v13, p0, Lcom/xueqiu/android/common/m;->ar:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_1
    const-string v2, "IDENTIFY"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 649
    iput-object v5, p0, Lcom/xueqiu/android/common/m;->ap:Landroid/widget/TextView;

    .line 653
    :goto_4
    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 655
    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    :cond_2
    const-string v1, "CUBE"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 660
    const v1, 0x7f02030e

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    new-instance v1, Lcom/xueqiu/android/common/m$16;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/m$16;-><init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    :cond_3
    :goto_5
    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->isBadge()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ACTIVITY"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 764
    if-nez v1, :cond_4

    .line 765
    const v1, 0x7f0e0257

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 766
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    const-string v2, "new"

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xueqiu/android/common/m;->a(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 771
    :cond_4
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    const-string v1, "NIGHT"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 773
    iput-object v8, p0, Lcom/xueqiu/android/common/m;->aq:Landroid/view/View;

    .line 777
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v7, v1, :cond_5

    .line 25875
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25876
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x7f01012e

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 25877
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 25878
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25879
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 25880
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25882
    const/high16 v3, 0x423c0000    # 47.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 25883
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25884
    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25885
    iget-object v2, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_5
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_2

    .line 24965
    :cond_6
    const-string v0, "profile_menu_config"

    .line 24966
    const-string v1, "profile_menu_config_updated"

    goto/16 :goto_0

    .line 633
    :cond_7
    const-string v1, "NIGHT"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25859
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03008a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    .line 634
    goto/16 :goto_3

    .line 635
    :cond_8
    const-string v1, "IDENTIFY"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 636
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->G()Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    goto/16 :goto_3

    .line 638
    :cond_9
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030089

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    goto/16 :goto_3

    .line 651
    :cond_a
    iget-object v2, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 671
    :cond_b
    const-string v1, "FAV"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 672
    const v1, 0x7f02030f

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    new-instance v1, Lcom/xueqiu/android/common/m$2;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/m$2;-><init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 683
    :cond_c
    const-string v1, "PROFIT"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 684
    const v1, 0x7f020311

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    new-instance v1, Lcom/xueqiu/android/common/m$3;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/m$3;-><init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 695
    :cond_d
    const-string v1, "SECURITY"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 696
    const v1, 0x7f020312

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    :goto_7
    invoke-direct {p0, v8, v3}, Lcom/xueqiu/android/common/m;->a(Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    goto/16 :goto_5

    .line 699
    :cond_e
    const-string v1, "WALLET"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 700
    const v1, 0x7f020313

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 703
    :cond_f
    const-string v1, "ORDER"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 704
    const v1, 0x7f020310

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 707
    :cond_10
    const-string v1, "WEB"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "ACTIVITY"

    .line 708
    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 709
    :cond_11
    sget-object v1, Lcom/xueqiu/android/base/util/ac;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 710
    new-instance v1, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 711
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v11, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 720
    :cond_12
    :goto_8
    invoke-direct {p0, v8, v3}, Lcom/xueqiu/android/common/m;->a(Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    goto/16 :goto_5

    .line 713
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":drawable/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 715
    if-eqz v1, :cond_12

    .line 716
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 721
    :cond_14
    const-string v1, "NIGHT"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 722
    const v1, 0x7f0e0258

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/widget/SwitchButton;

    .line 723
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 724
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SwitchButton;->setChecked(Z)V

    .line 725
    new-instance v2, Lcom/xueqiu/android/common/m$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/m$4;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_5

    .line 739
    :cond_15
    const-string v1, "SETTING"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 740
    const v1, 0x7f0203c3

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 741
    new-instance v1, Lcom/xueqiu/android/common/m$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$5;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 747
    :cond_16
    const-string v1, "TRADER"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 748
    const v1, 0x7f0203be

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 750
    :cond_17
    const-string v1, "IDENTIFY"

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 751
    const v1, 0x7f02027e

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v1

    if-nez v1, :cond_18

    .line 753
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 755
    :cond_18
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 775
    :cond_19
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->ak:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 783
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, v12, v1}, Lcom/xueqiu/android/common/m;->a(Landroid/view/ViewGroup;I)V

    .line 786
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v12, v1}, Lcom/xueqiu/android/common/m;->a(Landroid/view/ViewGroup;I)V

    .line 788
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25928
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25929
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25930
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25931
    iget-object v3, p0, Lcom/xueqiu/android/common/m;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    .line 792
    :cond_1b
    return-void
.end method

.method private G()Landroid/view/View;
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 890
    return-object v0
.end method

.method private H()Ljava/lang/String;
    .locals 6

    .prologue
    .line 936
    const/4 v1, 0x0

    .line 26069
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 26186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 940
    if-nez v0, :cond_0

    .line 941
    const-string v0, "profile_menu_default"

    .line 945
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/k;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 946
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 948
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 949
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 950
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 954
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 956
    :goto_2
    return-object v0

    .line 943
    :cond_0
    :try_start_1
    const-string v0, "profile_menu_default_anonymous"

    goto :goto_0

    .line 952
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 16

    .prologue
    .line 560
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 561
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 562
    const v3, 0x7f080118

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 563
    const v3, 0x7f0d0148

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 565
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 566
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 568
    const v4, 0x7f080116

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 569
    const v5, 0x7f080117

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 571
    const v6, 0x7f080115

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 572
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v3, v7

    .line 573
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v2

    .line 575
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 576
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 578
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 579
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 581
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 582
    const v11, 0x7f0d00ee

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v3

    int-to-float v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v12, v6

    int-to-float v6, v6

    invoke-virtual {v9, v11, v12, v6, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 584
    int-to-float v4, v4

    add-int/2addr v2, v5

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v4, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 586
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 587
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 588
    return-object v1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V
    .locals 1

    .prologue
    .line 894
    new-instance v0, Lcom/xueqiu/android/common/m$6;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/common/m$6;-><init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 864
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 865
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v3, [I

    const v3, 0x7f01012e

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 867
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 868
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 869
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 870
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 871
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->E()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/m;Landroid/view/View;Lcom/xueqiu/android/common/model/ProfileMenuItem;)V
    .locals 3

    .prologue
    .line 27922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/ProfileMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27923
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27924
    const v0, 0x7f0e0257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    return-void
.end method

.method static synthetic a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 155
    .line 27917
    const v0, 0x7f0e0257

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27918
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 155
    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/m;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/community/model/User;)V
    .locals 1

    .prologue
    .line 26531
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 26532
    iput-object p1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    .line 27240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 26534
    if-eqz v0, :cond_0

    .line 26535
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->C()V

    .line 26536
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->E()V

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/m;)I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/m;->c:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->D()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/common/m;)V
    .locals 3

    .prologue
    .line 28428
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28429
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28430
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->a(Landroid/content/Intent;)V

    .line 28431
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070504

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 155
    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/common/m;)V
    .locals 3

    .prologue
    .line 29413
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/SimpleStatusListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29414
    const-string v1, "extra_status_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29415
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->a(Landroid/content/Intent;)V

    .line 29416
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_fav"

    .line 30088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/common/m;)V
    .locals 3

    .prologue
    .line 30420
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30421
    const-string v1, "extra_notification"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30422
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30423
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/k;->startActivity(Landroid/content/Intent;)V

    .line 30424
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "my_performance"

    .line 31088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/common/m;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0d000d

    .line 155
    .line 31795
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31796
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31797
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ap:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 31798
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31800
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->aq:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 31801
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->aq:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31803
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31804
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->w()Landroid/support/v7/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 31805
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->h:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 31806
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 31807
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 31808
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31809
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 31811
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31812
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 31814
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31815
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 31817
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31818
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 31820
    :cond_5
    invoke-static {v4}, Lcom/xueqiu/android/common/MyActivity;->b(Z)Z

    .line 155
    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/common/m;)V
    .locals 4

    .prologue
    const v3, 0x7f0d000a

    .line 155
    .line 31824
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31825
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31826
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ap:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 31827
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31829
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->aq:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 31830
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->aq:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31832
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31833
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->w()Landroid/support/v7/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 31834
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->h:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 31835
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 31836
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 31837
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31838
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 31840
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31841
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 31843
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31844
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 31846
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31847
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 31849
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xueqiu/android/common/MyActivity;->b(Z)Z

    .line 155
    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/common/m;)V
    .locals 3

    .prologue
    .line 31853
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31854
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->a(Landroid/content/Intent;)V

    .line 31855
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07050e

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 155
    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/common/m;)V
    .locals 1

    .prologue
    .line 155
    .line 32604
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 32605
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32606
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->F()V

    .line 155
    :cond_0
    return-void
.end method

.method public static u()Lcom/xueqiu/android/common/m;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/xueqiu/android/common/m;

    invoke-direct {v0}, Lcom/xueqiu/android/common/m;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 239
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/m;->e_(Z)V

    .line 241
    const v0, 0x7f070231

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->d(I)V

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 243
    if-eqz v0, :cond_0

    .line 244
    const v0, 0x7f03012e

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 247
    :cond_0
    const v0, 0x7f03012d

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 217
    iput-wide v0, p0, Lcom/xueqiu/android/common/m;->a:J

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 218
    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 219
    const-string v1, "followers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/m;->c:I

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->e:Landroid/view/LayoutInflater;

    .line 222
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    const-string v2, "intent_action_profile_menu_config_updated"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/xueqiu/android/common/m;->au:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 226
    if-eqz p1, :cond_1

    .line 227
    const-string v0, "com.xueqiu.android.intent.action.CHANGE_THEME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/common/MyActivity;->b(Z)Z

    .line 229
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0100ae

    aput v2, v1, v3

    .line 544
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 546
    iget v1, p0, Lcom/xueqiu/android/common/m;->at:I

    const-string v2, "\u8bbe\u7f6e"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 546
    invoke-static {v1, v2}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 550
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 551
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0e01f8

    .line 254
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 255
    const v1, 0x7f0e04bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->an:Landroid/widget/TextView;

    .line 5240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 256
    const v1, 0x7f0e0209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->ao:Landroid/widget/TextView;

    .line 6240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 257
    const v1, 0x7f0e020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->h:Landroid/widget/ScrollView;

    .line 7240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 258
    const v1, 0x7f0e04b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->f:Landroid/widget/RelativeLayout;

    .line 8240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 260
    const v1, 0x7f0e04bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->g:Landroid/widget/LinearLayout;

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    .line 9240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 261
    const v2, 0x7f0e04b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    .line 10240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 262
    const v2, 0x7f0e01fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->al:Ljava/util/List;

    .line 11240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 263
    const v2, 0x7f0e04c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 12240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 264
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 13240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 265
    const v2, 0x7f0e04be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 14240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 266
    const v2, 0x7f0e04c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 15240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 268
    const v2, 0x7f0e04c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 16240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 269
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->am:Ljava/util/List;

    .line 17240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 270
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, p0, Lcom/xueqiu/android/common/m;->ar:Ljava/util/List;

    .line 18240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 272
    const v2, 0x7f0e0255

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 19186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 274
    if-eqz v0, :cond_1

    .line 275
    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/m$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$9;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/m$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$10;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19240
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 319
    const v1, 0x7f0e04c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->d:Landroid/view/ViewGroup;

    .line 320
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->F()V

    .line 20069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 20186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 321
    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 21069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 21077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 323
    new-instance v1, Lcom/xueqiu/android/common/m$12;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/m$12;-><init>(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 335
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/m;->as:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.user.UPDATE_USER_INFO"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 337
    :cond_0
    return-void

    .line 300
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/common/m;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    .line 301
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->E()V

    .line 302
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/common/m$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/m$11;-><init>(Lcom/xueqiu/android/common/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-direct {p0}, Lcom/xueqiu/android/common/m;->C()V

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/common/m;->at:I

    if-ne v0, v1, :cond_0

    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/m;->a(Landroid/content/Intent;)V

    .line 524
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07050e

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 525
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->d(Landroid/os/Bundle;)V

    .line 342
    const-string v0, "com.xueqiu.android.intent.action.CHANGE_THEME"

    invoke-static {}, Lcom/xueqiu/android/common/MyActivity;->j()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_0

    .line 24069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 24193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 503
    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/m;->b:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->as:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->v()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/m;->as:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/m;->au:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/xueqiu/android/common/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/m;->au:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 515
    :cond_2
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 517
    return-void
.end method

.method public final y_()Z
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    return v0
.end method
