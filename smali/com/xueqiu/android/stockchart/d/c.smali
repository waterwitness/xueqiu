.class public final Lcom/xueqiu/android/stockchart/d/c;
.super Lcom/xueqiu/android/stockchart/d/a;
.source "SmallChartFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/d/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/c;->f:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    new-instance v1, Lcom/xueqiu/android/stockchart/d/c$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stockchart/d/c$1;-><init>(Lcom/xueqiu/android/stockchart/d/c;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c;->f:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
