.class final Lcom/xueqiu/android/cube/CubeActivity$34;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$34;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$34;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->j(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$34;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->i(Lcom/xueqiu/android/cube/CubeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 408
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
