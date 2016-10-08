.class final Lcom/xueqiu/android/trade/c/n$3;
.super Ljava/lang/Object;
.source "TradeContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/n;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/n$3;->a:Lcom/xueqiu/android/trade/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/n$3;->a:Lcom/xueqiu/android/trade/c/n;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/RecentTalkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/n$3;->a:Lcom/xueqiu/android/trade/c/n;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/n;->a(Landroid/content/Intent;)V

    .line 173
    return-void
.end method
