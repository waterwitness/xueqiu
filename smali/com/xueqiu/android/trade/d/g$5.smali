.class final Lcom/xueqiu/android/trade/d/g$5;
.super Ljava/lang/Object;
.source "TradeHistoryPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;ILjava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/xueqiu/android/trade/d/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/g;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/g$5;->c:Lcom/xueqiu/android/trade/d/g;

    iput p2, p0, Lcom/xueqiu/android/trade/d/g$5;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/trade/d/g$5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/xueqiu/android/trade/d/g$5;->a:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g$5;->c:Lcom/xueqiu/android/trade/d/g;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$5;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xueqiu/android/trade/model/TrustDeed;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/trade/model/TrustDeed;)V

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g$5;->c:Lcom/xueqiu/android/trade/d/g;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$5;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/d/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$5;->c:Lcom/xueqiu/android/trade/d/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/d/g;->c()V

    goto :goto_0

    .line 287
    :pswitch_3
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g$5;->c:Lcom/xueqiu/android/trade/d/g;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$5;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/d/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method
