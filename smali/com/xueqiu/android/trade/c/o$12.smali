.class final Lcom/xueqiu/android/trade/c/o$12;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->logout()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$12;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->logout()V

    .line 482
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 484
    const-string v1, "extra_need_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 485
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o$12;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 487
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$12;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->startActivity(Landroid/content/Intent;)V

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$12;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 489
    return-void
.end method
