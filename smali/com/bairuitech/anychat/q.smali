.class final Lcom/bairuitech/anychat/q;
.super Ljava/lang/Object;
.source "AnyChatVideoHelper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/view/SurfaceHolder;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bairuitech/anychat/q;->b:Landroid/graphics/Bitmap;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bairuitech/anychat/q;->d:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bairuitech/anychat/q;->e:Landroid/graphics/Rect;

    .line 107
    iput v1, p0, Lcom/bairuitech/anychat/q;->f:F

    .line 109
    iput v1, p0, Lcom/bairuitech/anychat/q;->g:F

    .line 111
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/bairuitech/anychat/q;->h:F

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/bairuitech/anychat/q;->a:I

    .line 117
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bairuitech/anychat/q;->a:I

    .line 120
    iput-object p1, p0, Lcom/bairuitech/anychat/q;->c:Landroid/view/SurfaceHolder;

    .line 121
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bairuitech/anychat/q;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bairuitech/anychat/q;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bairuitech/anychat/q;->g:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 138
    iget-object v0, p0, Lcom/bairuitech/anychat/q;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bairuitech/anychat/q;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bairuitech/anychat/q;->f:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 139
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p3, p4}, Lcom/bairuitech/anychat/q;->a(II)V

    .line 145
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    invoke-direct {p0, v2, v1}, Lcom/bairuitech/anychat/q;->a(II)V

    .line 155
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 157
    :cond_1
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/bairuitech/anychat/q;->b:Landroid/graphics/Bitmap;

    .line 162
    iput-object v0, p0, Lcom/bairuitech/anychat/q;->c:Landroid/view/SurfaceHolder;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/bairuitech/anychat/q;->a:I

    .line 164
    return-void
.end method
