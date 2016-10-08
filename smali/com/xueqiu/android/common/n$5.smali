.class final Lcom/xueqiu/android/common/n$5;
.super Ljava/lang/Object;
.source "PopAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/n;->c()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/common/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/n;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/xueqiu/android/common/n$5;->b:Lcom/xueqiu/android/common/n;

    iput-object p2, p0, Lcom/xueqiu/android/common/n$5;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/common/n$5;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 332
    return-void
.end method
