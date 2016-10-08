.class final Lcom/xueqiu/android/common/account/b$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/b;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/common/account/b$1;->a:Lcom/xueqiu/android/common/account/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$1;->a:Lcom/xueqiu/android/common/account/b;

    .line 1022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 37
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$1;->a:Lcom/xueqiu/android/common/account/b;

    .line 2022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 38
    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->finish()V

    .line 39
    return-void
.end method
