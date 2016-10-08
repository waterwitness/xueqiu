.class public Lcom/xueqiu/android/trade/c/n;
.super Lcom/xueqiu/android/common/e;
.source "TradeContainerFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# instance fields
.field b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/xueqiu/android/trade/c/o;

.field private f:Lcom/xueqiu/android/trade/c/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xueqiu/android/common/e;-><init>()V

    .line 33
    const-string v0, "trade"

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B_()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    const-string v1, "trade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->B_()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    const-string v1, "performance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->B_()V

    .line 203
    :cond_1
    return-void
.end method

.method public final F_()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->F_()V

    .line 135
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 70
    const v0, 0x7f030157

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->c:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->c:Landroid/view/View;

    const v1, 0x7f0e0533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->d:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->u()V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->c:Landroid/view/View;

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/e;->a(IILandroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 184
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/i;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "trade"

    .line 1073
    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 54
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 55
    const-string v1, "page_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/n;->c(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/n;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 191
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 192
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 61
    if-eqz v0, :cond_0

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 62
    const-string v1, "page_type"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->d(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public final u()V
    .locals 8

    .prologue
    const v7, 0x7f0e0533

    const/4 v6, 0x1

    const v5, 0x7f0e0535

    const v4, 0x7f0e0534

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->d:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    const-string v2, "trade"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "tradeFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/o;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    .line 98
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "performanceFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/g;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    if-nez v0, :cond_3

    .line 5093
    new-instance v0, Lcom/xueqiu/android/trade/c/o;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/o;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    const-string v2, "tradeFragment"

    invoke-virtual {v1, v7, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 128
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 6138
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->c:Landroid/view/View;

    const v1, 0x7f0e04f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6141
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 6142
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 6144
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    const-string v2, "trade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6145
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 6148
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/n;->b:Ljava/lang/String;

    const-string v2, "performance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6149
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 6152
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/n$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/n$1;-><init>(Lcom/xueqiu/android/trade/c/n;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6160
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/n$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/n$2;-><init>(Lcom/xueqiu/android/trade/c/n;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6168
    const v1, 0x7f0e04a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/n$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/n$3;-><init>(Lcom/xueqiu/android/trade/c/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "performanceFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/g;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    .line 115
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v2, "tradeFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/o;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->e:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->c(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    if-nez v0, :cond_6

    .line 6063
    new-instance v0, Lcom/xueqiu/android/trade/c/g;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/g;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    const-string v2, "performanceFragment"

    invoke-virtual {v1, v7, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    goto/16 :goto_0

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->d(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/n;->f:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->f(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto/16 :goto_0
.end method
