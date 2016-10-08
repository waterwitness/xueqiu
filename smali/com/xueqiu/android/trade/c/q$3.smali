.class final Lcom/xueqiu/android/trade/c/q$3;
.super Ljava/lang/Object;
.source "TradeHistoryFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/q;->a(Lcom/xueqiu/android/trade/model/TrustDeed;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/TrustDeed;

.field final synthetic b:Lcom/xueqiu/android/trade/c/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/q;Lcom/xueqiu/android/trade/model/TrustDeed;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/q$3;->b:Lcom/xueqiu/android/trade/c/q;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/q$3;->a:Lcom/xueqiu/android/trade/model/TrustDeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 2

    .prologue
    .line 317
    packed-switch p2, :pswitch_data_0

    .line 329
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-virtual {p1}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q$3;->b:Lcom/xueqiu/android/trade/c/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/q;->y()Landroid/app/Dialog;

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q$3;->b:Lcom/xueqiu/android/trade/c/q;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/q;->c(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q$3;->a:Lcom/xueqiu/android/trade/model/TrustDeed;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->a(Lcom/xueqiu/android/trade/model/TrustDeed;)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
