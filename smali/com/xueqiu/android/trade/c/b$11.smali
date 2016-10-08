.class final Lcom/xueqiu/android/trade/c/b$11;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$11;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 309
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$11;->a:Lcom/xueqiu/android/trade/c/b;

    .line 310
    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->d(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/widget/p;

    move-result-object v1

    .line 1160
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 310
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 311
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 312
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$11;->a:Lcom/xueqiu/android/trade/c/b;

    .line 1259
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    .line 312
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    new-instance v1, Lcom/xueqiu/android/trade/c/b$11$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/b$11$1;-><init>(Lcom/xueqiu/android/trade/c/b$11;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 331
    return-void
.end method
