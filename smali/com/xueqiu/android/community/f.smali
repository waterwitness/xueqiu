.class public final Lcom/xueqiu/android/community/f;
.super Lcom/xueqiu/android/common/c;
.source "FindPeopleFromWeiBoActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xueqiu/android/community/a/ba;

.field private d:I

.field private e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

.field private f:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private g:Lcom/sina/weibo/sdk/auth/WeiboAuth;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 204
    const-string v0, "following"

    iput-object v0, p0, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    .line 206
    iput-object v1, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/f;->d:I

    .line 209
    iput-object v1, p0, Lcom/xueqiu/android/community/f;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 210
    iput-object v1, p0, Lcom/xueqiu/android/community/f;->f:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 211
    iput-object v1, p0, Lcom/xueqiu/android/community/f;->g:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    return-void
.end method

.method private a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/xueqiu/android/base/b/ai;->a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/f;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/f;Lcom/xueqiu/android/community/model/User;)V
    .locals 6

    .prologue
    .line 3352
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMessage;-><init>()V

    .line 3353
    new-instance v1, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 3354
    const v2, 0x7f070579

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getRecExtraMsg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/community/f;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 3355
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 3357
    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->v()Landroid/app/Application;

    .line 3358
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v1

    .line 4174
    iget-object v1, v1, Lcom/xueqiu/android/base/b;->a:Landroid/os/Bundle;

    .line 3358
    if-eqz v1, :cond_0

    .line 3359
    new-instance v1, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;-><init>()V

    .line 3360
    new-instance v2, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v3

    .line 5174
    iget-object v3, v3, Lcom/xueqiu/android/base/b;->a:Landroid/os/Bundle;

    .line 3360
    invoke-direct {v2, v3}, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v2, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest;->transaction:Ljava/lang/String;

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->transaction:Ljava/lang/String;

    .line 3361
    iput-object v0, v1, Lcom/sina/weibo/sdk/api/share/ProvideMessageForWeiboResponse;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    .line 3362
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)Z

    .line 3363
    :goto_0
    return-void

    .line 3364
    :cond_0
    new-instance v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;-><init>()V

    .line 3365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 3366
    iput-object v0, v1, Lcom/sina/weibo/sdk/api/share/SendMessageToWeiboRequest;->message:Lcom/sina/weibo/sdk/api/WeiboMessage;

    .line 3367
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/f;)Lcom/xueqiu/android/community/a/ba;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/f;Lcom/xueqiu/android/community/model/User;)V
    .locals 4

    .prologue
    .line 203
    .line 5308
    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/f$5;

    invoke-direct {v1, p0, p0, p1}, Lcom/xueqiu/android/community/f$5;-><init>(Lcom/xueqiu/android/community/f;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/User;)V

    .line 6286
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/an;->h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 203
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 242
    const v0, 0x7f030195

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 243
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 409
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 410
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/f;->d:I

    .line 411
    iget v0, p0, Lcom/xueqiu/android/community/f;->d:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/f;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->f:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->f:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 403
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "669111051"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/f;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/f$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/f$1;-><init>(Lcom/xueqiu/android/community/f;)V

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 235
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e016d

    const/4 v3, 0x1

    .line 248
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    const-string v1, "unfollowing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance v0, Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const v2, 0x7f030078

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    .line 2304
    iput-boolean v3, v0, Lcom/xueqiu/android/community/a/ba;->f:Z

    .line 266
    :cond_0
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/f;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 267
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/f$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/f$3;-><init>(Lcom/xueqiu/android/community/f;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    const-string v1, "unfollowing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/f$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/f$4;-><init>(Lcom/xueqiu/android/community/f;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 303
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    .line 3225
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 305
    :cond_2
    return-void

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->a:Ljava/lang/String;

    const-string v1, "invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    new-instance v0, Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const v2, 0x7f03007a

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    new-instance v1, Lcom/xueqiu/android/community/f$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/f$2;-><init>(Lcom/xueqiu/android/community/f;)V

    .line 1359
    iput-object v1, v0, Lcom/xueqiu/android/community/a/ba;->h:Lcom/xueqiu/android/community/a/bb;

    goto :goto_0

    .line 262
    :cond_4
    new-instance v0, Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/f;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/f;->c:Lcom/xueqiu/android/community/a/ba;

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 330
    if-eqz p2, :cond_0

    .line 331
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 332
    iget v0, p0, Lcom/xueqiu/android/community/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/f;->d:I

    .line 334
    :cond_0
    if-nez p3, :cond_1

    .line 335
    iget-object v0, p0, Lcom/xueqiu/android/community/f;->b:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 337
    :cond_1
    return-void
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
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 417
    iget v0, p0, Lcom/xueqiu/android/community/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/f;->d:I

    .line 418
    iget v0, p0, Lcom/xueqiu/android/community/f;->d:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/f;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method
