.class final Lcom/xueqiu/android/trade/d/a$13;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1104
    if-nez v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 3069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 1107
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 1107
    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-boolean v0, v0, Lcom/xueqiu/android/trade/d/a;->g:Z

    .line 1108
    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iput-object p1, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1110
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    .line 1110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/model/TradeAccount;I)V

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 1112
    if-eqz v0, :cond_0

    const-string v0, "799999"

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 1112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 11069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 1113
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$13;->a:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 13069
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
