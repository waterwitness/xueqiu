.class public final Lcom/xueqiu/android/common/account/b;
.super Ljava/lang/Object;
.source "RegisterHelper.java"


# instance fields
.field a:Lcom/xueqiu/android/common/account/LoginActivity;

.field b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/xueqiu/android/common/account/b;->b:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/b;->c:Z

    .line 28
    iput-object v2, p0, Lcom/xueqiu/android/common/account/b;->d:Ljava/lang/String;

    .line 30
    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/b;->e:Z

    .line 33
    new-instance v0, Lcom/xueqiu/android/common/account/b$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/b$1;-><init>(Lcom/xueqiu/android/common/account/b;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/b;->f:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1083
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/b$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/b$3;-><init>(Lcom/xueqiu/android/common/account/b;)V

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/b;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_regist_successed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/b;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    .line 1129
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1970
    if-eqz p1, :cond_0

    .line 1971
    iget-object v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->k:Landroid/widget/EditText;

    const v1, 0x7f020492

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 1973
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/xueqiu/android/common/account/b$2;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/xueqiu/android/common/account/b$2;-><init>(Lcom/xueqiu/android/common/account/b;ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p4, :cond_0

    .line 76
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method
