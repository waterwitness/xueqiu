.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;
.super Ljava/lang/Object;
.source "CubeFlyOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;I)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    iput p2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->o(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->o(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->a:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)I

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->d(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 515
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->o(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->a:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)I

    goto :goto_0
.end method
