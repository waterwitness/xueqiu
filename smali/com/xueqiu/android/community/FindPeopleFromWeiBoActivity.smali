.class public Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;
.super Lcom/xueqiu/android/common/b;
.source "FindPeopleFromWeiBoActivity.java"


# instance fields
.field private j:[Ljava/lang/String;

.field private k:[Landroid/support/v4/a/i;

.field private p:Lcom/xueqiu/android/base/b/ap;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->j:[Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->k:[Landroid/support/v4/a/i;

    .line 99
    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    .line 582
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 1436
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1437
    const-string v1, "\u8f93\u5165\u96ea\u7403\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1439
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1440
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1444
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1445
    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f08004c

    .line 1446
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f08004b

    .line 1447
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 1445
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1449
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1451
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1452
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1453
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1454
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1456
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1458
    new-instance v1, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$3;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 1468
    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$4;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$4;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1475
    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$5;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1482
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1486
    const-string v2, "sina"

    .line 1487
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    .line 2126
    iget-object v6, v0, Lcom/xueqiu/android/base/b/ap;->b:Ljava/lang/String;

    .line 1488
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    .line 3122
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ap;->c:Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    .line 4118
    iget-wide v4, v0, Lcom/xueqiu/android/base/b/ap;->d:J

    .line 1490
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    .line 4130
    iget-object v7, v0, Lcom/xueqiu/android/base/b/ap;->e:Ljava/lang/String;

    .line 1491
    new-instance v8, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v8}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1492
    invoke-static {p1}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1493
    invoke-virtual {v8, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$6;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 89
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)Lcom/xueqiu/android/base/b/ap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->k:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->j:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 424
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 425
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->k:[Landroid/support/v4/a/i;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->k:[Landroid/support/v4/a/i;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/i;->a(IILandroid/content/Intent;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ap;->a(IILandroid/content/Intent;)V

    .line 432
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->setContentView(I)V

    .line 105
    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->setTitle(I)V

    .line 107
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u5f85\u5173\u6ce8"

    aput-object v1, v0, v4

    const-string v1, "\u5f85\u9080\u8bf7"

    aput-object v1, v0, v6

    const-string v1, "\u5df2\u5173\u6ce8"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->j:[Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/xueqiu/android/community/f;

    invoke-direct {v0}, Lcom/xueqiu/android/community/f;-><init>()V

    .line 111
    const-string v1, "unfollowing"

    iput-object v1, v0, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/f;->e(Landroid/os/Bundle;)V

    .line 114
    new-instance v1, Lcom/xueqiu/android/community/f;

    invoke-direct {v1}, Lcom/xueqiu/android/community/f;-><init>()V

    .line 115
    const-string v2, "invite"

    iput-object v2, v1, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/f;->e(Landroid/os/Bundle;)V

    .line 118
    new-instance v2, Lcom/xueqiu/android/community/f;

    invoke-direct {v2}, Lcom/xueqiu/android/community/f;-><init>()V

    .line 119
    const-string v3, "following"

    iput-object v3, v2, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/f;->e(Landroid/os/Bundle;)V

    .line 122
    new-array v3, v7, [Landroid/support/v4/a/i;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    iput-object v3, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->k:[Landroid/support/v4/a/i;

    .line 126
    new-instance v1, Lcom/xueqiu/android/community/g;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/g;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;Landroid/support/v4/a/q;)V

    .line 127
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 128
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 130
    const v1, 0x7f0e0186

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    .line 131
    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 133
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_bound_weibo_status"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 135
    if-eqz v2, :cond_0

    if-ne v2, v5, :cond_1

    .line 137
    :cond_0
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const v0, 0x7f0e01d8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    const v1, 0x7f0e01d9

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 142
    if-nez v2, :cond_2

    .line 143
    const-string v2, "\u4f60\u672a\u7ed1\u5b9a\u65b0\u6d6a\u5fae\u535a\uff0c\u7cfb\u7edf\u65e0\u6cd5\u4e3a\u4f60\u627e\u5230\u52a0\u5165\u96ea\u7403\u7684\u65b0\u6d6a\u5fae\u535a\u597d\u53cb\uff0c\u73b0\u5728\u53bb\u7ed1\u5b9a\uff1f"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v0, "\u597d\u5440\uff0c\u7ed1\u5b9a\u770b\u770b"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    new-instance v0, Lcom/xueqiu/android/base/b/ap;

    new-instance v2, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$1;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/xueqiu/android/base/b/ap;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->p:Lcom/xueqiu/android/base/b/ap;

    .line 163
    new-instance v0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity$2;-><init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_1
    return-void

    .line 146
    :cond_2
    const-string v2, "\u6388\u6743\u8fc7\u671f\uff0c\u9700\u8981\u91cd\u65b0\u6388\u6743"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const-string v0, "\u91cd\u65b0\u6388\u6743"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0100ae

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 587
    iget v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->q:I

    const-string v2, "\u8bbe\u7f6e"

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 587
    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 590
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 595
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->q:I

    if-ne v0, v1, :cond_0

    .line 596
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 597
    const-class v1, Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->startActivity(Landroid/content/Intent;)V

    .line 599
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 195
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 196
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
