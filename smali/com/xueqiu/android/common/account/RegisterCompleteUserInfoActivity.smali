.class public Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;
.super Lcom/xueqiu/android/common/b;
.source "RegisterCompleteUserInfoActivity.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/widget/ImageView;

.field private C:Ljava/io/File;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcom/d/a/b/d;

.field private I:Lcom/xueqiu/android/base/b/x;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->k:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->q:Ljava/lang/String;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->r:J

    .line 108
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->s:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->t:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->u:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->v:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->w:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    .line 121
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->z:Landroid/widget/EditText;

    .line 122
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->A:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->B:Landroid/widget/ImageView;

    .line 125
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->C:Ljava/io/File;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->D:Z

    .line 128
    iput-boolean v3, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->E:Z

    .line 129
    iput-boolean v3, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->F:Z

    .line 130
    iput-boolean v3, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->G:Z

    .line 612
    iput-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->I:Lcom/xueqiu/android/base/b/x;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 615
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 616
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 617
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 9180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 619
    const-string v2, "upload_profile_image.jpeg"

    new-instance v3, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$4;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$4;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/xueqiu/android/base/b/ai;->b([BLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->I:Lcom/xueqiu/android/base/b/x;

    .line 637
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v4, 0xb4

    const/4 v3, 0x1

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V
    .locals 3

    .prologue
    .line 9284
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f070211

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0703f6

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 9285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070372

    .line 9286
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$9;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$9;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    .line 9287
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/common/model/LoginResult;)V
    .locals 8

    .prologue
    .line 80
    .line 9370
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9375
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 9376
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getExpiresIn()J

    move-result-wide v2

    .line 9377
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 9378
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    .line 9380
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    .line 9381
    new-instance v5, Lcom/xueqiu/android/community/model/UserLogonData;

    invoke-direct {v5}, Lcom/xueqiu/android/community/model/UserLogonData;-><init>()V

    .line 9382
    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/UserLogonData;->setAccessToken(Ljava/lang/String;)V

    .line 9383
    invoke-virtual {v5, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setRefreshToken(Ljava/lang/String;)V

    .line 9384
    invoke-virtual {v5, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setExpiresInByInMillis(J)V

    .line 9385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setGetTokenTime(J)V

    .line 9386
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setUserId(J)V

    .line 9387
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/community/model/UserLogonData;->setAnonymousUser(Z)V

    .line 10069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 9388
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/community/model/UserLogonData;)V

    .line 9390
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    .line 9391
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 9393
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->a()V

    .line 9395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9396
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9397
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 9398
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->finish()V

    .line 9399
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "reg_success"

    .line 11088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->G:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j()V

    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V
    .locals 4

    .prologue
    .line 11265
    new-instance v0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;-><init>()V

    .line 11266
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setOpenid(Ljava/lang/String;)V

    .line 11267
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setScreenName(Ljava/lang/String;)V

    .line 11268
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setoAuthToken(Ljava/lang/String;)V

    .line 11269
    iget-wide v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setoAuthExpiredIn(J)V

    .line 11270
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setOauthScreeName(Ljava/lang/String;)V

    .line 11271
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setProfileImageUrl(Ljava/lang/String;)V

    .line 11272
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setPassword(Ljava/lang/String;)V

    .line 11273
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->setSource(Ljava/lang/String;)V

    .line 11274
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11275
    const-string v2, "extra_oauth_register_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11276
    const-string v0, "extra_verify_phone_intent"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11277
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->C:Ljava/io/File;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V
    .locals 5

    .prologue
    .line 80
    .line 11640
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11641
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11642
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 11644
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 11645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->D:Z

    .line 11647
    :cond_1
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->B:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->H:Lcom/d/a/b/d;

    new-instance v4, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$5;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$5;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 11658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->F:Z

    .line 11659
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j()V

    .line 80
    return-void
.end method

.method private j()V
    .locals 8

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->G:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->h()Landroid/app/Dialog;

    .line 220
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->u:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->v:Ljava/lang/String;

    .line 224
    new-instance v7, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$7;

    invoke-direct {v7, p0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$7;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 239
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->v:Ljava/lang/String;

    iget-object v6, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->x:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->A:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->e(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic j(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->E:Z

    return v0
.end method

.method static synthetic k(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->D:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 328
    return-void

    .line 310
    :pswitch_0
    if-eqz p3, :cond_0

    .line 311
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 315
    :pswitch_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->C:Ljava/io/File;

    const-string v2, "snowball_temp.jpeg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 320
    :pswitch_2
    if-eqz p3, :cond_0

    .line 7355
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 7356
    if-eqz v0, :cond_0

    .line 7357
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 7358
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 7359
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7360
    iget-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7361
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->I:Lcom/xueqiu/android/base/b/x;

    if-eqz v1, :cond_1

    .line 7362
    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->I:Lcom/xueqiu/android/base/b/x;

    .line 8329
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/volley/n;->h:Z

    .line 7364
    :cond_1
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070409

    .line 418
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 419
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 420
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$10;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$10;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700bb

    .line 433
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 435
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f020488

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 136
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->setTheme(I)V

    .line 138
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 141
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->setContentView(I)V

    .line 142
    const v0, 0x7f0702e7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->setTitle(I)V

    .line 144
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_register_by"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "snowball"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->C:Ljava/io/File;

    .line 147
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->B:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->y:Landroid/widget/EditText;

    .line 150
    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->z:Landroid/widget/EditText;

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iput-boolean v6, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->F:Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->B:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$1;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_oauth_userid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->k:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_oauth_expirein"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->r:J

    .line 166
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_oauth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_wechat_openid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->w:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    new-instance v1, Lcom/d/a/b/c/c;

    .line 171
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 1445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 2270
    iput v7, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v7, v0, Lcom/d/a/b/e;->a:I

    .line 3293
    iput v7, v0, Lcom/d/a/b/e;->c:I

    .line 175
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->H:Lcom/d/a/b/d;

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 3587
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3588
    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->A:Ljava/lang/String;

    .line 3589
    iput-boolean v6, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->E:Z

    .line 179
    :goto_0
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 180
    new-instance v0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$6;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->s:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_area_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->t:Ljava/lang/String;

    .line 214
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "reg_userInfoInput"

    .line 7088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    return-void

    .line 5069
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 5173
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 3590
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6173
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 3591
    iput-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->A:Ljava/lang/String;

    .line 3592
    iput-boolean v6, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->E:Z

    goto :goto_0

    .line 6180
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3595
    new-instance v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$3;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 6438
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    const-string v1, "sina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6439
    new-instance v0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6440
    new-instance v1, Lcom/sina/weibo/sdk/openapi/UsersAPI;

    invoke-direct {v1, v0}, Lcom/sina/weibo/sdk/openapi/UsersAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 6441
    const-string v0, "CompleteUserInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oAuthToken = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->r:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6442
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$11;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/sina/weibo/sdk/openapi/UsersAPI;->show(JLcom/sina/weibo/sdk/net/RequestListener;)V

    .line 211
    :cond_4
    :goto_2
    const v0, 0x7f070245

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 6470
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    const-string v1, "qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6471
    invoke-static {p0}, Lcom/xueqiu/android/base/b/m;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6472
    const-string v0, "100229413"

    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    .line 6473
    const-string v1, "user/get_simple_userinfo"

    const-string v3, "GET"

    new-instance v4, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    const/4 v5, 0x0

    .line 6531
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6473
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tauth/Tencent;->requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    goto :goto_2

    .line 6534
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    const-string v1, "100229413"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->k:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tauth/TencentOpenAPI;->userInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V

    goto :goto_2

    .line 6560
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j:Ljava/lang/String;

    const-string v1, "wc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6561
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->k:Ljava/lang/String;

    .line 6568
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$2;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->g(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_2
.end method
