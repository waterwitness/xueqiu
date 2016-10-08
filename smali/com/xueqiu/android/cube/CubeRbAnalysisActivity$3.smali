.class final Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$3;
.super Ljava/lang/Object;
.source "CubeRbAnalysisActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->h(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%.0f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method
