.class final Lcom/xueqiu/android/trade/c/o$7;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 124
    check-cast p1, Landroid/content/Intent;

    .line 2127
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2128
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    .line 2129
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2131
    const-string v1, "com.xueqiu.android.intent.action.USER_OFFLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/trade/c/o;->a(Lcom/xueqiu/android/trade/c/o;J)J

    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    const-string v1, "com.xueqiu.android.intent.action.USER_ONLINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3357
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->g:Z

    .line 2134
    if-nez v0, :cond_0

    .line 2135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/o;->c(Lcom/xueqiu/android/trade/c/o;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$7;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->d(Lcom/xueqiu/android/trade/c/o;)V

    goto :goto_0
.end method
