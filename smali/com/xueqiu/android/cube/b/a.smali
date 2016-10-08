.class public final Lcom/xueqiu/android/cube/b/a;
.super Lcom/xueqiu/android/common/c;
.source "IndustryListFragment.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/xueqiu/android/cube/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/a;)Lcom/xueqiu/android/cube/b/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/a;->b:Lcom/xueqiu/android/cube/b/b;

    return-object v0
.end method

.method public static u()Lcom/xueqiu/android/cube/b/a;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/xueqiu/android/cube/b/a;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/b/a;-><init>()V

    .line 49
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f030138

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/b/a;->e_(Z)V

    .line 56
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f0701cc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/b/a;->d(I)V

    .line 69
    const v0, 0x7f0e04d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/a;->a:Landroid/widget/ListView;

    .line 70
    new-instance v0, Lcom/xueqiu/android/cube/b/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/b/b;-><init>(Lcom/xueqiu/android/cube/b/a;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/a;->b:Lcom/xueqiu/android/cube/b/b;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/a;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/a;->b:Lcom/xueqiu/android/cube/b/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3077
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/a;->y()Landroid/app/Dialog;

    .line 3081
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/b/a$1;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/cube/b/a$1;-><init>(Lcom/xueqiu/android/cube/b/a;Lcom/xueqiu/android/base/b/q;)V

    .line 3499
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/c;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 74
    return-void
.end method
