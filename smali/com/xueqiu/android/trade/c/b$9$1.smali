.class final Lcom/xueqiu/android/trade/c/b$9$1;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Lcom/xueqiu/android/trade/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b$9;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b$9;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b$9;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$9$1;->a:Lcom/xueqiu/android/trade/c/b$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$9$1;->a:Lcom/xueqiu/android/trade/c/b$9;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/b$9;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->h(Lcom/xueqiu/android/trade/c/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->lableResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    return-void
.end method
