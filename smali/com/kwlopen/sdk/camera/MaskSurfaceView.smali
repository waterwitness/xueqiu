.class public Lcom/kwlopen/sdk/camera/MaskSurfaceView;
.super Landroid/widget/FrameLayout;
.source "MaskSurfaceView.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private e:Lcom/kwlopen/sdk/camera/c;

.field private f:Lcom/kwlopen/sdk/camera/d;

.field private g:I

.field private h:I

.field private i:Lcom/kwlopen/sdk/camera/FocusImageView;

.field private final j:Landroid/hardware/Camera$AutoFocusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x44806666    # 1027.2f

    iput v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    .line 38
    const/high16 v0, 0x44220000    # 648.0f

    iput v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    .line 75
    new-instance v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView$1;-><init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->j:Landroid/hardware/Camera$AutoFocusCallback;

    .line 53
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->g:I

    .line 57
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->h:I

    .line 59
    iget v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->g:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    .line 60
    iget v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->h:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b:F

    .line 61
    new-instance v0, Lcom/kwlopen/sdk/camera/c;

    invoke-direct {v0, p0, p1}, Lcom/kwlopen/sdk/camera/c;-><init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->e:Lcom/kwlopen/sdk/camera/c;

    .line 62
    new-instance v0, Lcom/kwlopen/sdk/camera/d;

    invoke-direct {v0, p0, p1}, Lcom/kwlopen/sdk/camera/d;-><init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->f:Lcom/kwlopen/sdk/camera/d;

    .line 63
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->e:Lcom/kwlopen/sdk/camera/c;

    invoke-virtual {p0, v0, v2, v2}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->addView(Landroid/view/View;II)V

    .line 64
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->f:Lcom/kwlopen/sdk/camera/d;

    invoke-virtual {p0, v0, v3, v3}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->addView(Landroid/view/View;II)V

    .line 66
    invoke-static {}, Lcom/kwlopen/sdk/camera/a;->a()Lcom/kwlopen/sdk/camera/a;

    move-result-object v0

    .line 1098
    iget v1, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    float-to-int v1, v1

    iput v1, v0, Lcom/kwlopen/sdk/camera/a;->h:I

    .line 1099
    iput-object p0, v0, Lcom/kwlopen/sdk/camera/a;->e:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    .line 68
    const-string v0, "kwlopen_cameracontainer"

    invoke-static {p1, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    const-string v0, "focusImageView"

    invoke-static {p1, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwlopen/sdk/camera/FocusImageView;

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->i:Lcom/kwlopen/sdk/camera/FocusImageView;

    .line 71
    new-instance v0, Lcom/kwlopen/sdk/camera/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwlopen/sdk/camera/e;-><init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;B)V

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    return-void
.end method

.method static synthetic a(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    .line 1139
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1140
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1142
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 24
    return v0
.end method

.method static synthetic a(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Lcom/kwlopen/sdk/camera/FocusImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->i:Lcom/kwlopen/sdk/camera/FocusImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->j:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->g:I

    return v0
.end method

.method static synthetic d(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->h:I

    return v0
.end method
