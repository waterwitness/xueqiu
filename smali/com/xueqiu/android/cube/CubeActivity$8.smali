.class final Lcom/xueqiu/android/cube/CubeActivity$8;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$8;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$8;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->l(Lcom/xueqiu/android/cube/CubeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$8;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->m(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$8;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->n(Lcom/xueqiu/android/cube/CubeActivity;)V

    goto :goto_0
.end method
