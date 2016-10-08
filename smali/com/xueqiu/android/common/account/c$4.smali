.class final Lcom/xueqiu/android/common/account/c$4;
.super Landroid/content/BroadcastReceiver;
.source "ThirdAuthHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c$4;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$4;->a:Lcom/xueqiu/android/common/account/c;

    .line 1488
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->finish()V

    .line 408
    return-void
.end method
