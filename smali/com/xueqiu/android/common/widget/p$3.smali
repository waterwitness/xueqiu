.class final Lcom/xueqiu/android/common/widget/p$3;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/p;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/p$3;->a:Lcom/xueqiu/android/common/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$3;->a:Lcom/xueqiu/android/common/widget/p;

    .line 1023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method
