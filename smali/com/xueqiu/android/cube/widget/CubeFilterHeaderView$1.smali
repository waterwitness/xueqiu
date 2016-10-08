.class final Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;
.super Ljava/lang/Object;
.source "CubeFilterHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    iput-object p2, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v2}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Lcom/xueqiu/android/cube/widget/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Lcom/xueqiu/android/cube/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-static {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/cube/widget/b;->a(Ljava/util/Map;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;->c:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/widget/TextView;)V

    .line 156
    return-void
.end method
