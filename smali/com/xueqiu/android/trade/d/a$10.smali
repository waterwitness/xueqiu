.class final Lcom/xueqiu/android/trade/d/a$10;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 14

    .prologue
    .line 1048
    packed-switch p2, :pswitch_data_0

    .line 1058
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1058
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 1061
    :goto_0
    return-void

    .line 1050
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1050
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->H_()V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1051
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v12

    .line 1052
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1052
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1052
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 1052
    const-string v5, "799999"

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v6, v0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-object v7, v0, Lcom/xueqiu/android/trade/d/a;->s:Ljava/lang/String;

    .line 1052
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-string v13, "SHEX"

    invoke-virtual/range {v1 .. v13}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$10;->a:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1055
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
