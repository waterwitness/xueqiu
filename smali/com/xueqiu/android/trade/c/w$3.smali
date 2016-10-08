.class final Lcom/xueqiu/android/trade/c/w$3;
.super Ljava/lang/Object;
.source "TradeNotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/w;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/w;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/w$3;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e053f

    if-ne v0, v1, :cond_1

    .line 107
    const-string v0, "/broker/open/pingan?from=imfootbar"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w$3;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0540

    if-ne v0, v1, :cond_2

    .line 109
    const-string v0, "/broker/open/dyzq?from=imfootbar"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w$3;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0541

    if-ne v0, v1, :cond_0

    .line 111
    const-string v0, "/broker/trade/qa"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w$3;->a:Lcom/xueqiu/android/trade/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
