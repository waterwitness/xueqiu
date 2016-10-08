.class final Lcom/xueqiu/android/cube/CubeActivity$7;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 588
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$7;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$7;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->w(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 591
    return-void
.end method
