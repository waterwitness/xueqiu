.class public final Lcom/xueqiu/android/base/b/ao;
.super Ljava/lang/Object;
.source "WeChatAuthorize.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/g;


# instance fields
.field a:Landroid/app/Activity;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field f:Lcom/xueqiu/android/base/b/h;

.field g:Landroid/content/BroadcastReceiver;

.field h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->a:Landroid/app/Activity;

    .line 29
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->b:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->c:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->e:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->f:Lcom/xueqiu/android/base/b/h;

    .line 35
    new-instance v0, Lcom/xueqiu/android/base/b/ao$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/ao$1;-><init>(Lcom/xueqiu/android/base/b/ao;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->g:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p2, p0, Lcom/xueqiu/android/base/b/ao;->f:Lcom/xueqiu/android/base/b/h;

    .line 69
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ao;->a:Landroid/app/Activity;

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao;->a:Landroid/app/Activity;

    const-string v1, "wx8be10642d9baf61f"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ao;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wx8be10642d9baf61f"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 1076
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1077
    const-string v1, "wechat_intent_bind"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ao;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/b/ao;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 1118
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 1119
    const-string v1, "wx_bind_state"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 1120
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ao;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/base/b/i;)V
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/b/ao;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/base/b/ao;->c:Ljava/lang/String;

    new-instance v3, Lcom/xueqiu/android/base/b/ao$2;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/base/b/ao$2;-><init>(Lcom/xueqiu/android/base/b/ao;Lcom/xueqiu/android/base/b/i;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->g(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 109
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method
