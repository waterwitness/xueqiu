.class public final Lcom/xueqiu/android/stock/c/a;
.super Lcom/xueqiu/android/common/c;
.source "BondBuyBackFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field private a:Lcom/xueqiu/android/stock/a/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/a;->a:Lcom/xueqiu/android/stock/a/u;

    return-void
.end method

.method public static C()Lcom/xueqiu/android/stock/m;
    .locals 3

    .prologue
    .line 120
    const v0, 0x7f070090

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/xueqiu/android/stock/m;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/m;-><init>()V

    .line 122
    const/16 v2, 0x2c

    iput v2, v1, Lcom/xueqiu/android/stock/m;->g:I

    .line 123
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/m;->c:Ljava/lang/String;

    .line 124
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/m;->d:Ljava/lang/String;

    .line 125
    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/xueqiu/android/stock/m;->e:Ljava/lang/String;

    .line 126
    return-object v1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/a;)Lcom/xueqiu/android/stock/a/u;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/a;->a:Lcom/xueqiu/android/stock/a/u;

    return-object v0
.end method

.method public static u()Lcom/xueqiu/android/stock/c/a;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/xueqiu/android/stock/c/a;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/a;-><init>()V

    .line 42
    return-object v0
.end method


# virtual methods
.method public final C_()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 47
    const v0, 0x7f0301b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 55
    const v1, 0x7f0e064b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 57
    new-instance v1, Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/a;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/stock/a/u;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/a;->a:Lcom/xueqiu/android/stock/a/u;

    .line 58
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/a;->a:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/a;->a:Lcom/xueqiu/android/stock/a/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/a;->a:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/u;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3066
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/b/ak;->h:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v4, v0, v1

    .line 3067
    const-string v6, "percent"

    .line 3068
    new-instance v9, Lcom/xueqiu/android/stock/c/a$1;

    invoke-direct {v9, p0}, Lcom/xueqiu/android/stock/c/a$1;-><init>(Lcom/xueqiu/android/stock/c/a;)V

    .line 3079
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/a$2;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/stock/c/a$2;-><init>(Lcom/xueqiu/android/stock/c/a;Lcom/xueqiu/android/base/b/q;)V

    const-string v2, "CN"

    const-string v3, ""

    const-string v5, "desc"

    const/16 v7, 0x64

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3107
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/a;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 63
    :cond_1
    return-void
.end method
