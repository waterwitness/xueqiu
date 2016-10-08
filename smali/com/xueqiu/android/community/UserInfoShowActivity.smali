.class public Lcom/xueqiu/android/community/UserInfoShowActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserInfoShowActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/community/model/User;

.field private k:Ljava/lang/String;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 81
    new-instance v0, Lcom/xueqiu/android/community/UserInfoShowActivity$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UserInfoShowActivity$2;-><init>(Lcom/xueqiu/android/community/UserInfoShowActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserInfoShowActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserInfoShowActivity;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UserInfoShowActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->j()V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/community/UserInfoShowActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->k()V

    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const v4, 0x7f0e00d7

    const v1, 0x7f020208

    .line 98
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    .line 99
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 5270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 5293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 6248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 102
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42100000    # 36.0f

    .line 103
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 6445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 103
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 106
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 109
    const v0, 0x7f0e01d0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f0e0289

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    const v1, 0x7f07017c

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserInfoShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    sget-object v2, Lcom/xueqiu/android/community/UserInfoShowActivity$4;->a:[I

    iget-object v3, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User$Gender;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 125
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v0, 0x7f0e028a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    .line 130
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    .line 131
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07007e

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/UserInfoShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void

    .line 119
    :pswitch_0
    const v1, 0x7f07017b

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserInfoShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 122
    :pswitch_1
    const v1, 0x7f07017a

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserInfoShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03009b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f070568

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->setTitle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    .line 51
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.user.UPDATE_USER_INFO"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 54
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/support/v7/a/c;

    const/16 v1, 0x15

    invoke-direct {v0, v1, v6}, Landroid/support/v7/a/c;-><init>(IB)V

    .line 56
    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2066
    iget-object v2, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v2}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v1, v0}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 59
    const v0, 0x7f0e030f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserInfoShowActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserInfoShowActivity$1;-><init>(Lcom/xueqiu/android/community/UserInfoShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v7}, Landroid/support/v7/a/a;->d(Z)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ba;->b(Lcom/xueqiu/android/community/model/User;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->k:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->j()V

    .line 75
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->k()V

    .line 3139
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3140
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3141
    :cond_1
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3142
    const v1, 0x7f0e028c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%s\u7684\u8ba4\u8bc1"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->k:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3144
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3145
    const v1, 0x7f0e028d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3147
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ba;->a(Lcom/xueqiu/android/community/model/User;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3148
    const v1, 0x7f0e028e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3149
    const v1, 0x7f0e028f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3152
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3153
    const v1, 0x7f0e0290

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3159
    :cond_3
    const v0, 0x7f0e0292

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%s\u7684\u5fae\u535a"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->k:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3160
    const-string v1, "sina"

    iget-object v2, p0, Lcom/xueqiu/android/community/UserInfoShowActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    new-instance v4, Lcom/xueqiu/android/community/UserInfoShowActivity$3;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/community/UserInfoShowActivity$3;-><init>(Lcom/xueqiu/android/community/UserInfoShowActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4958
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 79
    :cond_4
    return-void
.end method
