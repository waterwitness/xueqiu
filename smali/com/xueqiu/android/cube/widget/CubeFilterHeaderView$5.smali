.class public final Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;
.super Ljava/lang/Object;
.source "CubeFilterHeaderView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;

.field final synthetic b:Lcom/xueqiu/android/cube/widget/c;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/support/v7/internal/widget/ListPopupWindow;Lcom/xueqiu/android/cube/widget/c;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->d:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    iput-object p2, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->b:Lcom/xueqiu/android/cube/widget/c;

    iput-object p4, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->c()V

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->b:Lcom/xueqiu/android/cube/widget/c;

    .line 1391
    iput p3, v0, Lcom/xueqiu/android/cube/widget/c;->a:I

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->d:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->c(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->d:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->c(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/widget/d;

    iget-object v0, v0, Lcom/xueqiu/android/cube/widget/d;->paramKey:Ljava/lang/String;

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;->d:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Lcom/xueqiu/android/cube/widget/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/cube/widget/b;->a()V

    .line 279
    return-void
.end method
