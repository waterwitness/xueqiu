.class public final Lcom/xueqiu/android/base/b/m;
.super Ljava/lang/Object;
.source "QQAuthorize.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/g;


# instance fields
.field a:Landroid/app/Activity;

.field public b:Lcom/tencent/tauth/Tencent;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field g:Lcom/xueqiu/android/base/b/h;

.field h:Lcom/xueqiu/android/base/b/o;

.field private i:Lcom/xueqiu/android/base/b/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 33
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->b:Lcom/tencent/tauth/Tencent;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->f:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->g:Lcom/xueqiu/android/base/b/h;

    .line 40
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->i:Lcom/xueqiu/android/base/b/h;

    .line 41
    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;

    .line 44
    iput-object p2, p0, Lcom/xueqiu/android/base/b/m;->g:Lcom/xueqiu/android/base/b/h;

    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 46
    const-string v0, "100229413"

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->b:Lcom/tencent/tauth/Tencent;

    .line 1051
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Lcom/xueqiu/android/base/b/o;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/o;-><init>(Lcom/xueqiu/android/base/b/m;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;

    .line 1055
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1056
    const-string v1, "com.tencent.auth.BROWSER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1057
    iget-object v1, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 222
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 188
    :try_start_0
    const-string v2, "com.tencent.mobileqq"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return v0

    :catch_0
    move-exception v2

    .line 192
    :try_start_1
    const-string v2, "com.qzone"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 195
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/base/b/m;->b:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    const-string v2, "all"

    new-instance v3, Lcom/xueqiu/android/base/b/n;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/n;-><init>(Lcom/xueqiu/android/base/b/m;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    const-class v2, Lcom/xueqiu/android/common/SNBTAuthView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v1, "client_id"

    const-string v2, "100229413"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "scope"

    const-string v2, "get_user_info,add_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "target"

    const-string v2, "_self"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "callback"

    const-string v2, "tencentauth://auth.qq.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
