.class final Lcom/xueqiu/android/cube/b/h$11;
.super Ljava/lang/Object;
.source "RebalanceFragment.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$11;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$11;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->b(Lcom/xueqiu/android/cube/b/h;)V

    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$11;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->c(Lcom/xueqiu/android/cube/b/h;)V

    .line 327
    return-void
.end method

.method public final a(Lcom/xueqiu/android/cube/model/Holding;)V
    .locals 6

    .prologue
    .line 332
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$11;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->b()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 333
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 334
    const v0, 0x7f07041d

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 352
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/b/f;->a(Lcom/xueqiu/android/cube/model/Holding;I)Lcom/xueqiu/android/cube/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$11;->a:Lcom/xueqiu/android/cube/b/h;

    .line 1691
    iget-object v1, v1, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 336
    const-string v2, "RebalanceFragment"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/cube/b/f;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V

    goto :goto_0
.end method
