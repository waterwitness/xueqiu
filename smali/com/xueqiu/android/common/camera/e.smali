.class public final Lcom/xueqiu/android/common/camera/e;
.super Ljava/lang/Object;
.source "CameraManager.java"


# direct methods
.method private static a(FI)I
    .locals 4

    .prologue
    const/16 v0, 0x3e8

    const/16 v1, -0x3e8

    .line 141
    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float/2addr v2, p0

    int-to-float v3, p1

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1145
    if-le v2, v0, :cond_0

    .line 1146
    :goto_0
    return v0

    :cond_0
    if-ge v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 141
    goto :goto_0
.end method

.method public static a(FFFII)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 126
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 127
    const-string v1, "calculateTapArea"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,,y--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    sub-float v2, p0, v2

    int-to-float v3, v0

    sub-float v3, p1, v3

    int-to-float v4, v0

    add-float/2addr v4, p0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2, p3}, Lcom/xueqiu/android/common/camera/e;->a(FI)I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 131
    invoke-static {v3, p4}, Lcom/xueqiu/android/common/camera/e;->a(FI)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 132
    invoke-static {v4, p3}, Lcom/xueqiu/android/common/camera/e;->a(FI)I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 133
    invoke-static {v5, p4}, Lcom/xueqiu/android/common/camera/e;->a(FI)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    const-string v2, "calculateTapArea"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rectSource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "calculateTapArea"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rectF: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 137
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
