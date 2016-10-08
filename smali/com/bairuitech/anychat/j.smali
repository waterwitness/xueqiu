.class public final Lcom/bairuitech/anychat/j;
.super Ljava/lang/Object;
.source "AnyChatSensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public a:Lcom/bairuitech/anychat/g;

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bairuitech/anychat/j;->a:Lcom/bairuitech/anychat/g;

    .line 58
    iput v1, p0, Lcom/bairuitech/anychat/j;->b:F

    .line 59
    iput v1, p0, Lcom/bairuitech/anychat/j;->c:F

    .line 60
    iput v1, p0, Lcom/bairuitech/anychat/j;->d:F

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bairuitech/anychat/j;->e:Z

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/bairuitech/anychat/j;->f:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v8, 0x1

    .line 72
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    .line 76
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    .line 77
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 79
    iget v3, p0, Lcom/bairuitech/anychat/j;->b:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/bairuitech/anychat/j;->c:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/bairuitech/anychat/j;->d:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_4

    .line 81
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 82
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/bairuitech/anychat/j;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 83
    iget-boolean v3, p0, Lcom/bairuitech/anychat/j;->e:Z

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 84
    iput-boolean v9, p0, Lcom/bairuitech/anychat/j;->e:Z

    .line 86
    const/16 v3, 0x5f

    invoke-static {v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 87
    sget-object v3, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    .line 1172
    iget-object v4, v3, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/bairuitech/anychat/e;->b:Z

    if-nez v4, :cond_2

    .line 95
    :cond_1
    :goto_1
    iput v0, p0, Lcom/bairuitech/anychat/j;->b:F

    .line 96
    iput v1, p0, Lcom/bairuitech/anychat/j;->c:F

    .line 97
    iput v2, p0, Lcom/bairuitech/anychat/j;->d:F

    goto :goto_0

    .line 1175
    :cond_2
    :try_start_0
    iget-object v3, v3, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v3

    goto :goto_1

    .line 89
    :cond_3
    const/16 v3, 0x5a

    invoke-static {v3, v8}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    goto :goto_1

    .line 92
    :cond_4
    iput-boolean v8, p0, Lcom/bairuitech/anychat/j;->e:Z

    .line 93
    iget-object v3, p0, Lcom/bairuitech/anychat/j;->f:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    goto :goto_1
.end method
