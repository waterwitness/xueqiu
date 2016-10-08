.class public Lcom/pingan/main/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCameraFacing(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-static {}, Lcom/pingan/main/utils/CameraUtils;->getSdkVersion()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v0

    .line 13
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 14
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v1, v0

    .line 15
    :goto_1
    if-ge v1, v2, :cond_0

    .line 16
    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 17
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, v4, :cond_2

    .line 18
    const/4 v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getSdkVersion()I
    .locals 1

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static hasBackFacingCamera()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pingan/main/utils/CameraUtils;->checkCameraFacing(I)Z

    move-result v0

    return v0
.end method

.method public static hasFrontFacingCamera()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pingan/main/utils/CameraUtils;->checkCameraFacing(I)Z

    move-result v0

    return v0
.end method
