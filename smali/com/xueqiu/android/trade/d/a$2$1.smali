.class final Lcom/xueqiu/android/trade/d/a$2$1;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a$2;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a$2;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 14

    .prologue
    .line 814
    packed-switch p2, :pswitch_data_0

    .line 831
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 16069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 831
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 834
    :goto_0
    return-void

    .line 816
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-boolean v0, v0, Lcom/xueqiu/android/trade/d/a;->g:Z

    .line 816
    if-nez v0, :cond_0

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 817
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5ed

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 2069
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 819
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 820
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v12

    .line 821
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v1, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 821
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 821
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-object v4, v0, Lcom/xueqiu/android/trade/d/a;->f:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v5, v0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v6, v0, Lcom/xueqiu/android/trade/d/a;->k:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 11069
    iget-object v7, v0, Lcom/xueqiu/android/trade/d/a;->s:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-wide v8, v0, Lcom/xueqiu/android/trade/d/a$2;->b:D

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-wide v10, v0, Lcom/xueqiu/android/trade/d/a$2;->c:D

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-object v13, v0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 821
    invoke-virtual/range {v1 .. v13}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 13069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 822
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->H_()V

    goto/16 :goto_0

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v6, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    const-string v7, "70005"

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 14069
    iget-object v8, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 824
    new-instance v0, Lcom/xueqiu/android/trade/d/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-wide v2, v2, Lcom/xueqiu/android/trade/d/a$2;->b:D

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-wide v4, v4, Lcom/xueqiu/android/trade/d/a$2;->c:D

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/trade/d/c;-><init>(Lcom/xueqiu/android/trade/d/a;DD)V

    invoke-static {v6, v7, v8, v0}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/trade/d/c;)V

    goto/16 :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$2$1;->a:Lcom/xueqiu/android/trade/d/a$2;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a$2;->e:Lcom/xueqiu/android/trade/d/a;

    .line 15069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 828
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
