.class final Lcom/xueqiu/android/trade/c/a$3;
.super Ljava/lang/Object;
.source "BindBrokerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->b(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    const v1, 0x7f0704cd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v4}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/trade/c/a;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker;->getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->getAccountLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/trade/c/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->c(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    const v0, 0x7f0704cf

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->d(Lcom/xueqiu/android/trade/c/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    .line 139
    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->e(Lcom/xueqiu/android/trade/c/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    const v0, 0x7f0704d1

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$3;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->f(Lcom/xueqiu/android/trade/c/a;)V

    goto :goto_0
.end method
