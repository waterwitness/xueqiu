.class final Lcom/kwlopen/sdk/camera/e;
.super Ljava/lang/Object;
.source "MaskSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

.field private b:I

.field private c:F


# direct methods
.method private constructor <init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/e;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/kwlopen/sdk/camera/e;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;B)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/kwlopen/sdk/camera/e;-><init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 109
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/kwlopen/sdk/camera/e;->b:I

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/kwlopen/sdk/camera/e;->b:I

    .line 115
    invoke-static {p2}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/camera/e;->c:F

    goto :goto_0

    .line 118
    :pswitch_3
    iget v0, p0, Lcom/kwlopen/sdk/camera/e;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 124
    :pswitch_4
    iget v0, p0, Lcom/kwlopen/sdk/camera/e;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 126
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 127
    invoke-static {}, Lcom/kwlopen/sdk/camera/a;->a()Lcom/kwlopen/sdk/camera/a;

    move-result-object v5

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/e;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-static {v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v6

    .line 1225
    :try_start_0
    iget-object v0, v5, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 1227
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1228
    iget-object v0, v5, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/e;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-static {v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Lcom/kwlopen/sdk/camera/FocusImageView;

    move-result-object v1

    .line 2074
    iget v0, v1, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, v1, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, v1, Lcom/kwlopen/sdk/camera/FocusImageView;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 2075
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "focus image is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1231
    :cond_2
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    iget v0, v4, Landroid/graphics/Point;->x:I

    add-int/lit16 v3, v0, -0x12c

    .line 1233
    iget v0, v4, Landroid/graphics/Point;->y:I

    add-int/lit16 v2, v0, -0x12c

    .line 1234
    iget v0, v4, Landroid/graphics/Point;->x:I

    add-int/lit16 v1, v0, 0x12c

    .line 1235
    iget v0, v4, Landroid/graphics/Point;->y:I

    add-int/lit16 v0, v0, 0x12c

    .line 1236
    const/16 v9, -0x3e8

    if-ge v3, v9, :cond_3

    const/16 v3, -0x3e8

    .line 1237
    :cond_3
    const/16 v9, -0x3e8

    if-ge v2, v9, :cond_4

    const/16 v2, -0x3e8

    .line 1238
    :cond_4
    const/16 v9, 0x3e8

    if-le v1, v9, :cond_5

    const/16 v1, 0x3e8

    .line 1239
    :cond_5
    const/16 v9, 0x3e8

    if-le v0, v9, :cond_6

    const/16 v0, 0x3e8

    .line 1240
    :cond_6
    new-instance v9, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v0, 0x64

    invoke-direct {v9, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1245
    :try_start_2
    iget-object v0, v5, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1250
    :goto_2
    :try_start_3
    iget-object v0, v5, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1248
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2077
    :cond_7
    invoke-virtual {v1}, Lcom/kwlopen/sdk/camera/FocusImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2078
    iget v2, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/kwlopen/sdk/camera/FocusImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2079
    iget v2, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Lcom/kwlopen/sdk/camera/FocusImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2080
    invoke-virtual {v1, v0}, Lcom/kwlopen/sdk/camera/FocusImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2082
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/kwlopen/sdk/camera/FocusImageView;->setVisibility(I)V

    .line 2083
    iget v0, v1, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    invoke-virtual {v1, v0}, Lcom/kwlopen/sdk/camera/FocusImageView;->setImageResource(I)V

    .line 2084
    iget-object v0, v1, Lcom/kwlopen/sdk/camera/FocusImageView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Lcom/kwlopen/sdk/camera/FocusImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2086
    iget-object v0, v1, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    new-instance v2, Lcom/kwlopen/sdk/camera/FocusImageView$1;

    invoke-direct {v2, v1}, Lcom/kwlopen/sdk/camera/FocusImageView$1;-><init>(Lcom/kwlopen/sdk/camera/FocusImageView;)V

    const-wide/16 v4, 0xdac

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
