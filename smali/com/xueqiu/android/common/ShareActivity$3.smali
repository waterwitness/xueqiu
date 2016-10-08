.class final Lcom/xueqiu/android/common/ShareActivity$3;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ShareActivity;->onAttachedToWindow()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ShareActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ShareActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/xueqiu/android/common/ShareActivity$3;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/common/ShareActivity$3;->a:Lcom/xueqiu/android/common/ShareActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/ShareActivity;->b:Lcom/xueqiu/android/common/n;

    .line 1182
    const-string v1, "solory"

    const-string v2, "  showInAnimation "

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v1, v0, Lcom/xueqiu/android/common/n;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1202
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1203
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1204
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1205
    new-instance v2, Lcom/xueqiu/android/common/n$2;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/n$2;-><init>(Lcom/xueqiu/android/common/n;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1221
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1222
    iget-object v2, v0, Lcom/xueqiu/android/common/n;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1184
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/common/n;->c()V

    .line 1364
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1365
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1366
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1367
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1368
    new-instance v2, Lcom/xueqiu/android/common/n$6;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/n$6;-><init>(Lcom/xueqiu/android/common/n;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1385
    iget-object v2, v0, Lcom/xueqiu/android/common/n;->b:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    invoke-virtual {v0}, Lcom/xueqiu/android/common/n;->b()V

    .line 242
    return-void
.end method
