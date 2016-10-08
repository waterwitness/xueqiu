.class public final Lcom/xueqiu/android/common/account/a;
.super Ljava/lang/Object;
.source "AnonymousHelper.java"


# instance fields
.field a:I

.field b:Landroid/app/Activity;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/xueqiu/android/community/model/User;

.field public h:Z

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/xueqiu/android/common/account/a;->c:Z

    .line 46
    iput-object v0, p0, Lcom/xueqiu/android/common/account/a;->d:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/xueqiu/android/common/account/a;->e:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xueqiu/android/common/account/a;->f:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xueqiu/android/common/account/a;->g:Lcom/xueqiu/android/community/model/User;

    .line 50
    iput-boolean v1, p0, Lcom/xueqiu/android/common/account/a;->h:Z

    .line 166
    new-instance v0, Lcom/xueqiu/android/common/account/a$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/a$2;-><init>(Lcom/xueqiu/android/common/account/a;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/a;->i:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    .line 54
    iput p2, p0, Lcom/xueqiu/android/common/account/a;->a:I

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    const-string v1, "com.xueqiu.android.intent.action.LOGGED_IN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/a;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 64
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/xueqiu/android/common/account/a$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/account/a$1;-><init>(Lcom/xueqiu/android/common/account/a;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 99
    iget v0, p0, Lcom/xueqiu/android/common/account/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/xueqiu/android/common/b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/a;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method
