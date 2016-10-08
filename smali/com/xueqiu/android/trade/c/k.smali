.class final Lcom/xueqiu/android/trade/c/k;
.super Landroid/support/v4/a/v;
.source "PositionCardFragment.java"


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/xueqiu/android/trade/c/j;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/c/j;Landroid/support/v4/a/q;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/q;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    .line 214
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    .line 215
    iput-object p3, p0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    .line 216
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 225
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1, p1}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/l;->a(Lcom/xueqiu/android/trade/model/TradeAccount;Z)Lcom/xueqiu/android/trade/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/v;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/l;

    .line 231
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/j;->d(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/j;->d(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1, p2}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;I)Z

    move-result v1

    .line 1406
    iput-boolean v1, v0, Lcom/xueqiu/android/trade/c/l;->a:Z

    .line 237
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2335
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/l;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2763
    iget-boolean v1, v0, Landroid/support/v4/a/i;->x:Z

    .line 2336
    if-eqz v1, :cond_0

    .line 2337
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->u()V

    .line 2338
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->C()V

    .line 2339
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->D()V

    .line 2340
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->F()V

    .line 3267
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1, p2}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3268
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;Lcom/xueqiu/android/trade/c/l;)Lcom/xueqiu/android/trade/c/l;

    .line 240
    :cond_1
    return-object v0

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/k;->c:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/j;->d(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, -0x2

    return v0
.end method
