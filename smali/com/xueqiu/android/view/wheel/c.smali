.class public final Lcom/xueqiu/android/view/wheel/c;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# instance fields
.field a:Lcom/xueqiu/android/view/wheel/d;

.field b:Landroid/content/Context;

.field c:Landroid/view/GestureDetector;

.field d:Landroid/widget/Scroller;

.field e:I

.field f:F

.field g:Z

.field h:Landroid/os/Handler;

.field private i:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/view/wheel/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/xueqiu/android/view/wheel/c$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/c$1;-><init>(Lcom/xueqiu/android/view/wheel/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->i:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 177
    iput v2, p0, Lcom/xueqiu/android/view/wheel/c;->j:I

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/view/wheel/c;->k:I

    .line 199
    new-instance v0, Lcom/xueqiu/android/view/wheel/c$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/view/wheel/c$2;-><init>(Lcom/xueqiu/android/view/wheel/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->h:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/xueqiu/android/view/wheel/c;->i:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->c:Landroid/view/GestureDetector;

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 89
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    .line 91
    iput-object p2, p0, Lcom/xueqiu/android/view/wheel/c;->a:Lcom/xueqiu/android/view/wheel/d;

    .line 92
    iput-object p1, p0, Lcom/xueqiu/android/view/wheel/c;->b:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->d:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 125
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/xueqiu/android/view/wheel/c;->b()V

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->a:Lcom/xueqiu/android/view/wheel/d;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/d;->c()V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/view/wheel/c;->a(I)V

    .line 231
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/xueqiu/android/view/wheel/c;->g:Z

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/view/wheel/c;->g:Z

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/view/wheel/c;->a:Lcom/xueqiu/android/view/wheel/d;

    invoke-interface {v0}, Lcom/xueqiu/android/view/wheel/d;->a()V

    .line 241
    :cond_0
    return-void
.end method
