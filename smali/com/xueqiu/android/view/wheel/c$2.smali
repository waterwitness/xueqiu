.class final Lcom/xueqiu/android/view/wheel/c$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/view/wheel/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/view/wheel/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/view/wheel/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 1075
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 201
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 2075
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 202
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 2076
    iget v1, v1, Lcom/xueqiu/android/view/wheel/c;->e:I

    .line 203
    sub-int/2addr v1, v0

    .line 204
    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 3076
    iput v0, v2, Lcom/xueqiu/android/view/wheel/c;->e:I

    .line 205
    if-eqz v1, :cond_0

    .line 206
    iget-object v2, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 4068
    iget-object v2, v2, Lcom/xueqiu/android/view/wheel/c;->a:Lcom/xueqiu/android/view/wheel/d;

    .line 206
    invoke-interface {v2, v1}, Lcom/xueqiu/android/view/wheel/d;->a(I)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 4075
    iget-object v1, v1, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 211
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 5075
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 212
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 6075
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 7075
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 215
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 7199
    iget-object v0, v0, Lcom/xueqiu/android/view/wheel/c;->h:Landroid/os/Handler;

    .line 216
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :cond_2
    :goto_0
    return-void

    .line 217
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 7228
    invoke-virtual {v0}, Lcom/xueqiu/android/view/wheel/c;->c()V

    goto :goto_0

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c$2;->a:Lcom/xueqiu/android/view/wheel/c;

    .line 7247
    iget-boolean v1, v0, Lcom/xueqiu/android/view/wheel/c;->g:Z

    if-eqz v1, :cond_2

    .line 7248
    iget-object v1, v0, Lcom/xueqiu/android/view/wheel/c;->a:Lcom/xueqiu/android/view/wheel/d;

    invoke-interface {v1}, Lcom/xueqiu/android/view/wheel/d;->b()V

    .line 7249
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/view/wheel/c;->g:Z

    goto :goto_0
.end method
