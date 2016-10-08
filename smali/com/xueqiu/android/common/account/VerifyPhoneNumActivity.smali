.class public Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.super Lcom/xueqiu/android/common/b;
.source "VerifyPhoneNumActivity.java"


# instance fields
.field private A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

.field private B:Lcom/xueqiu/android/common/widget/f;

.field private C:Landroid/os/Handler;

.field private D:I

.field private j:I

.field private k:Landroid/widget/TextView;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/EditText;

.field private u:Lcom/xueqiu/android/base/b/x;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    .line 100
    iput-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->u:Lcom/xueqiu/android/base/b/x;

    .line 102
    iput-boolean v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->v:Z

    .line 104
    iput-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->w:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->x:Z

    .line 110
    iput-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 416
    iput-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->C:Landroid/os/Handler;

    .line 417
    iput v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->D:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;JLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 62
    .line 11331
    new-instance v0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$18;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;JLjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 11349
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07040b

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 11350
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 11351
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 11352
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 12160
    iget-object v2, v0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11353
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->B:Lcom/xueqiu/android/common/widget/f;

    .line 11354
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->B:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/common/model/LoginResult;)V
    .locals 8

    .prologue
    .line 62
    .line 14553
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14558
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 14559
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getExpiresIn()J

    move-result-wide v2

    .line 14560
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 14561
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    .line 14563
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    .line 14564
    new-instance v5, Lcom/xueqiu/android/community/model/UserLogonData;

    invoke-direct {v5}, Lcom/xueqiu/android/community/model/UserLogonData;-><init>()V

    .line 14565
    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/UserLogonData;->setAccessToken(Ljava/lang/String;)V

    .line 14566
    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setRefreshToken(Ljava/lang/String;)V

    .line 14567
    invoke-virtual {v5, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setExpiresInByInMillis(J)V

    .line 14568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setGetTokenTime(J)V

    .line 14569
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setUserId(J)V

    .line 14570
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/UserLogonData;->setAnonymousUser(Z)V

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 14571
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/community/model/UserLogonData;)V

    .line 14573
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    .line 14574
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 16069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 14576
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->a()V

    .line 14578
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14579
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14580
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 14581
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->finish()V

    .line 14583
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "reg_success"

    .line 16088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)V
    .locals 5

    .prologue
    .line 4389
    new-instance v0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;Z)V

    .line 4407
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4409
    if-eqz p1, :cond_0

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 4410
    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :goto_0
    return-void

    .line 6180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 4412
    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 16651
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16652
    const/high16 v1, 0x4400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16653
    const-string v1, "extra_phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16654
    const-string v1, "extra_area_code"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16655
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16656
    const-string v2, "extra_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 16657
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 16659
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14500
    if-eqz p1, :cond_0

    .line 14501
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    const v1, 0x7f020492

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 14503
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Lcom/xueqiu/android/base/b/x;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->u:Lcom/xueqiu/android/base/b/x;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 6

    .prologue
    .line 62
    .line 6466
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6467
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6468
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6470
    iget-object v4, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    new-instance v5, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;

    invoke-direct {v5, p0, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 62
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 14

    .prologue
    const v2, 0x7f070361

    .line 62
    .line 7508
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7509
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 7520
    new-instance v13, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;

    invoke-direct {v13, p0, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$6;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 7535
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 7536
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7538
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7540
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getSource()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7541
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getOpenid()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7542
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getScreenName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7543
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7544
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getoAuthToken()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7545
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getoAuthExpiredIn()J

    move-result-wide v10

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 7546
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->getOauthScreeName()Ljava/lang/String;

    move-result-object v12

    .line 7536
    invoke-virtual/range {v1 .. v13}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 7548
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 9613
    :cond_0
    :goto_0
    return-void

    .line 7511
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7512
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 8663
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 8664
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$9;

    invoke-direct {v3, p0, p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$9;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 9332
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v2, v0, v3}, Lcom/xueqiu/android/base/b/an;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 8691
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0

    .line 7514
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 9602
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 9603
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 9604
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 9605
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 9606
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9607
    const-string v0, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10018
    :cond_3
    const-string v0, "(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 9608
    if-nez v0, :cond_4

    .line 9609
    const v0, 0x7f0703d2

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 9610
    :cond_4
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9611
    const-string v0, "\u786e\u8ba4\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9612
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9613
    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10620
    :cond_6
    new-instance v7, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v7}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 10621
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 10622
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    .line 11282
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 10623
    const v0, 0x7f0702fb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 10624
    invoke-virtual {v7, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()V
    .locals 1

    .prologue
    .line 13698
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeIsSpamUser(Z)V

    .line 62
    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 4

    .prologue
    .line 62
    .line 12358
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 12359
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;

    invoke-direct {v3, p0, p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 13336
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v2, v0, v3}, Lcom/xueqiu/android/base/b/an;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 62
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$7;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$7;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 599
    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 62
    .line 14420
    const/16 v0, 0x1e

    iput v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->D:I

    .line 14421
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->C:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 14422
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->C:Landroid/os/Handler;

    .line 14425
    :cond_0
    const v0, 0x7f0e00fa

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14426
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14428
    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Landroid/widget/TextView;)V

    .line 14460
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->C:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14461
    const v1, 0x7f070357

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->D:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method static synthetic l(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)I
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->D:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->D:I

    return v0
.end method

.method static synthetic m(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->D:I

    return v0
.end method

.method static synthetic n(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->C:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->x:Z

    return v0
.end method

.method static synthetic p(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 4

    .prologue
    .line 62
    .line 17309
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 17310
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->y:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$17;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$17;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 62
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 703
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 705
    if-ne p1, v6, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 706
    const-string v0, "extra_country_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    const-string v1, "extra_country_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 710
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    const-string v3, "%s  +%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 717
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070409

    .line 719
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 720
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 721
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700bb

    .line 734
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 740
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v9, 0x7f07017f

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->setTheme(I)V

    .line 122
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_verify_phone_intent"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    .line 127
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v0, v8, :cond_5

    .line 128
    :cond_0
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->setTitle(I)V

    .line 144
    :cond_1
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v0, v6, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_oauth_register_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->A:Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    .line 146
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k()V

    .line 3155
    :cond_2
    :goto_1
    const v0, 0x7f0e00fa

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->s:Landroid/widget/Button;

    .line 3156
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3157
    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    .line 3158
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    .line 3159
    const v0, 0x7f0e00ed

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->q:Landroid/widget/EditText;

    .line 3160
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->r:Landroid/widget/EditText;

    .line 3162
    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3163
    const v1, 0x7f07007d

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3164
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3165
    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k:Landroid/widget/TextView;

    const-string v3, "%s  +%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3167
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3190
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->s:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3222
    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$13;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3230
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$14;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3237
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3238
    iget v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v1, v6, :cond_7

    .line 3239
    const v1, 0x7f070245

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3244
    :cond_3
    :goto_2
    const v1, 0x7f0e00f1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    .line 3245
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->t:Landroid/widget/EditText;

    new-instance v2, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3279
    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3298
    const v0, 0x7f0e00f5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3299
    iget v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v1, v6, :cond_8

    .line 3300
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3301
    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_3
    return-void

    .line 129
    :cond_5
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v0, v7, :cond_1

    .line 130
    invoke-virtual {p0, v9}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->setTitle(I)V

    .line 131
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 134
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 147
    :cond_6
    iget v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v0, v7, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k()V

    goto/16 :goto_1

    .line 3240
    :cond_7
    iget v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v1, v7, :cond_3

    .line 3241
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 3302
    :cond_8
    iget v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j:I

    if-ne v1, v8, :cond_4

    .line 3303
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3304
    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method
