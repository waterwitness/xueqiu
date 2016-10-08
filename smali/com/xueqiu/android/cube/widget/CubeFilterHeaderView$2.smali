.class final Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;
.super Ljava/lang/Object;
.source "CubeFilterHeaderView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/lang/String;Ljava/util/List;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/ArrayAdapter;

.field final synthetic c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    iput-object p2, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/widget/a;

    iget-object v1, v1, Lcom/xueqiu/android/cube/widget/a;->value:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v2}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Lcom/xueqiu/android/cube/widget/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Lcom/xueqiu/android/cube/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/cube/widget/b;->a(Ljava/util/Map;)V

    .line 216
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "GG"

    invoke-virtual {p1}, Landroid/widget/AdapterView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method
