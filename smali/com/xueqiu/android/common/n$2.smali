.class final Lcom/xueqiu/android/common/n$2;
.super Ljava/lang/Object;
.source "PopAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/n;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/xueqiu/android/common/n$2;->a:Lcom/xueqiu/android/common/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/common/n$2;->a:Lcom/xueqiu/android/common/n;

    invoke-static {v0}, Lcom/xueqiu/android/common/n;->a(Lcom/xueqiu/android/common/n;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 209
    return-void
.end method
