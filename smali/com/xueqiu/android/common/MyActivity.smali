.class public Lcom/xueqiu/android/common/MyActivity;
.super Lcom/xueqiu/android/common/b;
.source "MyActivity.java"


# static fields
.field private static j:Z


# instance fields
.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 118
    new-instance v0, Lcom/xueqiu/android/common/MyActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/MyActivity$1;-><init>(Lcom/xueqiu/android/common/MyActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/MyActivity;->k:Landroid/content/BroadcastReceiver;

    .line 155
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 86
    sput-boolean p0, Lcom/xueqiu/android/common/MyActivity;->j:Z

    return p0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/xueqiu/android/common/MyActivity;->j:Z

    return v0
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MyActivity;->setTheme(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "elvis"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyActivity (Not Fragment) onBackPressed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/xueqiu/android/common/MyActivity;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-boolean v0, Lcom/xueqiu/android/common/MyActivity;->j:Z

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MyActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    const v0, 0x7f040014

    const v1, 0x7f040017

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/MyActivity;->overridePendingTransition(II)V

    .line 141
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MyActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 100
    if-nez p1, :cond_0

    .line 101
    invoke-static {}, Lcom/xueqiu/android/common/m;->u()Lcom/xueqiu/android/common/m;

    move-result-object v1

    .line 102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v3, "followers"

    invoke-virtual {p0}, Lcom/xueqiu/android/common/MyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "followers"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/m;->e(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MyActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 106
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/MyActivity;->setContentView(Landroid/view/View;)V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    const-string v1, "com.xueqiu.android.intent.action.LOGGED_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/MyActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/common/MyActivity;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/xueqiu/android/common/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/MyActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 131
    return-void
.end method
