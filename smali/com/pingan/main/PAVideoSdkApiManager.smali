.class public Lcom/pingan/main/PAVideoSdkApiManager;
.super Ljava/lang/Object;
.source "PAVideoSdkApiManager.java"


# static fields
.field public static final CALL_ONLY_VIDEO:I = 0x0

.field public static final CALL_STATE_CALLING:I = 0x0

.field public static final CALL_STATE_CONNECTED:I = 0x2

.field public static final CALL_STATE_GET_FAILD:I = -0x1

.field public static final CALL_STATE_IDLE:I = 0xff

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CALL_VIDEO_VOICE:I = 0x1

.field public static final LOG_LJS:I = 0x325

.field public static final LOG_NO_XMPP:I = 0x322

.field public static LOG_PATH:Ljava/lang/String; = null

.field private static LOG_ROOT_PATH:Ljava/lang/String; = null

.field public static final LOG_SDK_API:I = 0x324

.field public static final LOG_SDK_API_DEMO:I = 0x323

.field public static final LOG_XMPP:I = 0x321

.field public static final MOBILE_PHONE:I = 0x0

.field public static final PAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PAVideoSdkApiManager"

.field private static Version:Ljava/lang/String;

.field private static VersionIntroduction:Ljava/lang/String;

.field static aChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public static am:Landroid/media/AudioManager;

.field private static authFlag:Z

.field private static instance:Lcom/pingan/main/PAVideoSdkApiManager;

.field private static mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

.field private static mContext:Landroid/content/Context;

.field private static metric:Landroid/util/DisplayMetrics;

.field private static pool:Ljava/util/concurrent/ExecutorService;

.field private static uploadJob:Lcom/pingan/a/a/g;

.field public static videoflag:Z


# instance fields
.field private KEEP_DAYS:I

.field private LOG_MAX_NUM:I

.field private LOG_MAX_SIZE:I

.field private authCount:I

.field private cameras:[Landroid/hardware/Camera$CameraInfo;

.field degrees1:I

.field degrees2:I

.field private iLocalVideoViewIndex:I

.field private ip_addr:Ljava/lang/String;

.field private needUploadLogFile:Z

.field private orientationListener:Landroid/view/OrientationEventListener;

.field private packetLossPercent:I

.field private pakageLossPercentInSec:I

.field private regSipMax:I

.field private regSipMin:I

.field private requestedOrientation:I

.field private svContainer:Landroid/view/ViewGroup;

.field private svLocal:Landroid/view/SurfaceView;

.field private svRemote:Landroid/view/SurfaceView;

.field private temp_ip:Ljava/lang/String;

.field private useFrontCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v0, "20160406-1005"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->Version:Ljava/lang/String;

    .line 46
    const-string v0, "20160406-1005(1.\u4fee\u590d\u7ebf\u7a0b\u91cc\u9762\u8c03\u7528initAPI\u4f1a\u5d29\u6e83\u95ee\u9898)"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->VersionIntroduction:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/PinganSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "log"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    .line 123
    sput-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->instance:Lcom/pingan/main/PAVideoSdkApiManager;

    .line 125
    sput-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    .line 130
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->pool:Ljava/util/concurrent/ExecutorService;

    .line 769
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pingan/main/PAVideoSdkApiManager;->videoflag:Z

    .line 1725
    new-instance v0, Lcom/pingan/main/PAVideoSdkApiManager$1;

    invoke-direct {v0}, Lcom/pingan/main/PAVideoSdkApiManager$1;-><init>()V

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->aChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1745
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->needUploadLogFile:Z

    .line 56
    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    .line 72
    const/16 v1, 0x1e

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    .line 74
    const/4 v1, 0x5

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    .line 76
    const/16 v1, 0xa

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    .line 96
    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    .line 98
    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    .line 100
    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    .line 355
    const/16 v1, 0x28

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMin:I

    .line 357
    const/16 v1, 0x32

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMax:I

    .line 360
    const/16 v1, 0x258

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->pakageLossPercentInSec:I

    .line 362
    const/16 v1, 0x64

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->packetLossPercent:I

    .line 134
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->cameras:[Landroid/hardware/Camera$CameraInfo;

    .line 135
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    .line 136
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->setDefaultCamera()V

    .line 142
    return-void

    .line 137
    :cond_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 138
    aget-object v2, v1, v0

    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 139
    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->cameras:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v1, v0

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v4, v1, v0

    aput-object v4, v2, v3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    return v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pingan/main/PAVideoSdkApiManager;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/pingan/main/PAVideoSdkApiManager;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    return-void
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 54
    sput-boolean p0, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    return-void
.end method

.method static synthetic access$5(Lcom/pingan/main/PAVideoSdkApiManager;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6(Lcom/pingan/main/PAVideoSdkApiManager;I)V
    .locals 0

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/pingan/main/PAVideoSdkApiManager;->compensateRotation(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/pingan/main/PAVideoSdkApiManager;)I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->requestedOrientation:I

    return v0
.end method

.method static synthetic access$8(Lcom/pingan/main/PAVideoSdkApiManager;)Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$9()Lcom/pingan/a/a/g;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->uploadJob:Lcom/pingan/a/a/g;

    return-object v0
.end method

.method public static catchAudioFocus()V
    .locals 4

    .prologue
    .line 1706
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1707
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    .line 1709
    :cond_0
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->aChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1711
    const/4 v2, 0x3

    .line 1712
    const/4 v3, 0x2

    .line 1709
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1714
    return-void
.end method

.method private compensateRotation(I)V
    .locals 2

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->isRegisterState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1075
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1079
    if-lez p1, :cond_2

    const/16 v0, 0x23

    if-lt p1, v0, :cond_6

    :cond_2
    const/16 v0, 0x37

    if-le p1, v0, :cond_3

    const/16 v0, 0x7d

    if-lt p1, v0, :cond_6

    :cond_3
    const/16 v0, 0x91

    if-le p1, v0, :cond_4

    const/16 v0, 0xd7

    if-lt p1, v0, :cond_6

    :cond_4
    const/16 v0, 0xeb

    if-le p1, v0, :cond_5

    const/16 v0, 0x131

    if-lt p1, v0, :cond_6

    :cond_5
    const/16 v0, 0x145

    if-le p1, v0, :cond_0

    .line 1081
    :cond_6
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->cameras:[Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lcom/pingan/main/PAVideoSdkApiManager;->rotationFromRealWorldUp(Landroid/hardware/Camera$CameraInfo;I)I

    move-result v0

    .line 1083
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1, v0}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createLogDir()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5054
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5055
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    sput-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    .line 1221
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/UA/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/SIP/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1223
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/SDK/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1228
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    or-int/lit8 v2, v2, 0x0

    .line 1229
    const-string v5, "PAVideoSdkApiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "init-->file,mk="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1240
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1241
    const-string v3, "PAVideoSdkApiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init-->file2,mk="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1249
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1252
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    or-int/2addr v0, v2

    .line 1253
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init-->file3,mk="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1262
    :cond_0
    :goto_0
    return v0

    .line 1232
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1244
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1256
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private decreaseLocalView(II)V
    .locals 4

    .prologue
    .line 1621
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decreaseLocalView-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1623
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decreaseLocalView-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1625
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1626
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    :cond_0
    return-void
.end method

.method private decreaseRemoteView(II)V
    .locals 4

    .prologue
    .line 1631
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decreaseRemoteView-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1633
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decreaseRemoteView-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1635
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1637
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1639
    :cond_0
    return-void
.end method

.method public static freeRes(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 574
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 578
    :cond_0
    const-string v0, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCallState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v3}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "PAVideoSdkApiManage--freeRes(what)--getCallState()="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v0

    invoke-static {v0}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->getByValue(I)Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    move-result-object v0

    sget-object v4, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v0

    invoke-static {v0}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->getByValue(I)Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    move-result-object v0

    sget-object v2, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    if-eq v0, v2, :cond_1

    .line 583
    const-string v0, "PAVideoSdkApiManager"

    const-string v2, "PAVideoSdkApiManage--freeRes(what)--endcall()"

    invoke-static {v0, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->endcall()I

    .line 587
    :cond_1
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopLocalCamera()I

    .line 588
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getRegisterState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 589
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->unregister()I

    .line 591
    :cond_2
    sget-boolean v0, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    if-eqz v0, :cond_3

    .line 592
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->freeRes()I

    .line 594
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    goto :goto_0

    .line 581
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1574
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1580
    :goto_0
    return-object v0

    .line 1576
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1577
    if-nez v0, :cond_1

    move-object v0, v1

    .line 1578
    goto :goto_0

    .line 1579
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getCameraId(I)I
    .locals 5

    .prologue
    .line 1537
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 1545
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraId--failed--Index does not match a camera--index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Index does not match a camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1539
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1540
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v2, :cond_1

    .line 1541
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCameraId=info.facing="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    return v0

    .line 1537
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getCameraIndex()I
    .locals 1

    .prologue
    .line 1550
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoSdkApiManager;
    .locals 4

    .prologue
    .line 160
    sput-object p0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    .line 161
    sput-object p0, Lcom/letpower/engine/LDEngineDemo;->mContext:Landroid/content/Context;

    .line 162
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->uploadJob:Lcom/pingan/a/a/g;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/pingan/a/a/g;

    invoke-direct {v0}, Lcom/pingan/a/a/g;-><init>()V

    .line 164
    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->uploadJob:Lcom/pingan/a/a/g;

    .line 2090
    :try_start_0
    new-instance v1, Lcom/pingan/b/c/b;

    invoke-direct {v1}, Lcom/pingan/b/c/b;-><init>()V

    new-instance v2, Lcom/pingan/b/c/a/a;

    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pingan/b/c/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pingan/b/c/b;->a(Lcom/pingan/b/c/e;)Lcom/pingan/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pingan/b/c/b;->a()Lcom/pingan/b/c/a;

    move-result-object v1

    .line 2092
    new-instance v2, Lcom/pingan/b/c/k;

    invoke-direct {v2, v1}, Lcom/pingan/b/c/k;-><init>(Lcom/pingan/b/c/a;)V

    iput-object v2, v0, Lcom/pingan/a/a/g;->b:Lcom/pingan/b/c/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Lcom/letpower/engine/AndroidJavaAPI;

    invoke-direct {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    .line 169
    :cond_1
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->instance:Lcom/pingan/main/PAVideoSdkApiManager;

    if-nez v0, :cond_2

    .line 170
    new-instance v0, Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-direct {v0, p0}, Lcom/pingan/main/PAVideoSdkApiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->instance:Lcom/pingan/main/PAVideoSdkApiManager;

    .line 172
    :cond_2
    invoke-static {p0}, Lcom/pingan/a/a/e;->a(Landroid/content/Context;)V

    .line 173
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    if-nez v0, :cond_3

    .line 174
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    .line 177
    :cond_3
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 178
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    .line 179
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u5206\u8fa8\u7387--setScreenResolution-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_4
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->instance:Lcom/pingan/main/PAVideoSdkApiManager;

    return-object v0

    .line 2093
    :catch_0
    move-exception v0

    .line 2094
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2095
    const-string v1, "UploadUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLogRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->Version:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersionIntroduction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1687
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->VersionIntroduction:Ljava/lang/String;

    return-object v0
.end method

.method public static getSOVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1696
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isParamsEmpty()Z
    .locals 1

    .prologue
    .line 1422
    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->SBCDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->SBCIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->SBCPort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSDKAlive()Z
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private outputAVCallStatus(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 192
    const-string v0, "PASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outputAVCallStatus mAvCallStatusListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/letpower/engine/LDEngineDemo;->getIAVCallStatusListener()Lcom/pingan/main/IAVCallStatusListener;

    move-result-object v0

    .line 194
    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "PASDK"

    const-string v1, "outputAVCallStatus mAvCallStatusListener  in"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/pingan/main/IAVCallStatusListener;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 198
    :cond_0
    return-void
.end method

.method public static releaseAudioFocus()V
    .locals 2

    .prologue
    .line 1720
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1721
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->am:Landroid/media/AudioManager;

    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->aChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1723
    :cond_0
    return-void
.end method

.method private static rotationFromRealWorldUp(Landroid/hardware/Camera$CameraInfo;I)I
    .locals 4

    .prologue
    .line 1098
    int-to-double v0, p1

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x5a

    mul-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    .line 1101
    iget v1, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1103
    rsub-int v0, v0, 0x168

    .line 1104
    iget v1, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 1106
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method private setIP()V
    .locals 3

    .prologue
    .line 1426
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/letpower/engine/Utils;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    .line 1427
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIP-\u624b\u673aIP\u5730\u5740--ip_addr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-----\u8fdb\u5165\u8bbe\u7f6eip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setIPAddr(Ljava/lang/String;)I

    .line 1436
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->temp_ip:Ljava/lang/String;

    .line 1438
    :cond_0
    return-void
.end method

.method public static setLogRootPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1275
    sput-object p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    .line 1276
    return-void
.end method

.method public static uploadLog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1754
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/pingan/main/PAVideoSdkApiManager$4;

    invoke-direct {v1, p0}, Lcom/pingan/main/PAVideoSdkApiManager$4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1762
    return-void
.end method


# virtual methods
.method public CloseSpeaker()V
    .locals 4

    .prologue
    .line 1401
    :try_start_0
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1402
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 1403
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1404
    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1406
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1407
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CloseSpeaker--Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public MuteMic(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1562
    if-eqz p1, :cond_0

    move v0, v1

    .line 1563
    :goto_0
    sget-object v3, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v3, v0}, Lcom/letpower/engine/AndroidJavaAPI;->enableMic(Z)I

    move-result v0

    .line 1564
    if-ne v0, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 1562
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1564
    goto :goto_1
.end method

.method public OpenSpeaker()V
    .locals 4

    .prologue
    .line 1382
    :try_start_0
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1383
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 1384
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenSpeaker-->HeadsetPlugReceiver.getIsHeadsetConnected()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/letpower/engine/HeadsetPlugReceiver;->getIsHeadsetConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/letpower/engine/HeadsetPlugReceiver;->getIsHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1388
    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenSpeaker--Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public acceptCall()Z
    .locals 8

    .prologue
    .line 890
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->catchAudioFocus()V

    .line 892
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "acceptCall()-->in"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getIncomingCallType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 895
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "acceptCall()-->\u89c6\u9891\u6765\u7535\u63a5\u901a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->openLocalView()V

    .line 897
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->openRemoteView()V

    .line 898
    sget-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sput-object v0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 899
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH:I

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT:I

    sget v3, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_FPS:I

    const/16 v4, 0x32

    const/16 v5, 0x12c

    const/16 v6, 0x64

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/letpower/engine/AndroidJavaAPI;->acceptcall(IIIIIII)I

    move-result v0

    .line 900
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "acceptCall()-->openLocalView"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 903
    :cond_0
    sget-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sput-object v0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 904
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "acceptCall()-->\u97f3\u9891\u6765\u7535\u63a5\u901a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/letpower/engine/AndroidJavaAPI;->acceptcall(IIIIIII)I

    move-result v0

    goto :goto_0

    .line 907
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addLocalViewToSurface()V
    .locals 2

    .prologue
    .line 1327
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderLocal()I

    .line 1328
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "addLocalViewToSurface()"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method public addRemoteViewToSurface()V
    .locals 2

    .prologue
    .line 1350
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderRemote()I

    .line 1351
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "addRemoteViewToSurface()--end "

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public changeLocalViewZOrderOnTop(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 917
    if-eqz p1, :cond_0

    .line 918
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderRemote()I

    .line 919
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 920
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 921
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    .line 922
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderRemote()I

    .line 923
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 924
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 925
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderLocal()I

    .line 926
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 927
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 928
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 929
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderLocal()I

    .line 944
    :goto_0
    return-void

    .line 931
    :cond_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderLocal()I

    .line 932
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 933
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 934
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 935
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderLocal()I

    .line 936
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 937
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 938
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderRemote()I

    .line 939
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 940
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 941
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    .line 942
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderRemote()I

    goto :goto_0
.end method

.method public checkIP()Z
    .locals 3

    .prologue
    .line 1451
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkIP--ip_addr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->setIP()V

    .line 1454
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkIP--after setIP()--ip_addr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    :cond_0
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP\u53f7\u83b7\u53d6\u4e3a\u7a7a ip_addr= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const/4 v0, 0x0

    .line 1460
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cleanVideoView()V
    .locals 2

    .prologue
    .line 829
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderLocal()I

    .line 830
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderRemote()I

    .line 831
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 846
    :cond_3
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopLocalCamera()I

    .line 847
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->closeRemoteVideo()I

    .line 848
    return-void
.end method

.method public closeView()V
    .locals 2

    .prologue
    .line 818
    sget-object v0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sget-object v1, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    if-ne v0, v1, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->cleanVideoView()V

    .line 821
    :cond_0
    sget-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sput-object v0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 822
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->releaseAudioFocus()V

    .line 823
    return-void
.end method

.method public enableRTCPReport(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1467
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1, v1, p1, v1}, Lcom/letpower/engine/AndroidJavaAPI;->enableRTCPReport(ZIZI)V

    .line 1468
    return-void
.end method

.method public enableRTCPReport(ZIZI)V
    .locals 1

    .prologue
    .line 1483
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letpower/engine/AndroidJavaAPI;->enableRTCPReport(ZIZI)V

    .line 1484
    return-void
.end method

.method public freeRes()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 534
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getCallState="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v3}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;)V

    .line 540
    const-string v3, "PAVideoSdkApiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "PAVideoSdkApiManage--freeRes()--getCallState()="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v0

    invoke-static {v0}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->getByValue(I)Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    move-result-object v0

    sget-object v5, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    if-eq v0, v5, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->isRegisterState()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v0

    invoke-static {v0}, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->getByValue(I)Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    move-result-object v0

    sget-object v3, Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;->UA_CALL_STATE_IDLE:Lcom/letpower/engine/LDEngineDemo$UA_CALL_STATE;

    if-eq v0, v3, :cond_1

    .line 542
    const-string v0, "PAVideoSdkApiManager"

    const-string v3, "PAVideoSdkApiManage--freeRes()--endcall()"

    invoke-static {v0, v3}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->endcall()I

    .line 546
    :cond_1
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopLocalCamera()I

    .line 547
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 550
    iput-object v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 554
    iput-object v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    .line 556
    :cond_3
    iput-object v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    .line 558
    :cond_4
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getRegisterState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 559
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->unregister()I

    .line 561
    :cond_5
    sget-boolean v0, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    if-eqz v0, :cond_6

    .line 562
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->freeRes()I

    .line 563
    sput-boolean v2, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    .line 565
    :cond_6
    sput-object v6, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 540
    goto :goto_1
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    if-nez v0, :cond_0

    .line 525
    const/4 v0, -0x1

    .line 527
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v0

    goto :goto_0
.end method

.method public getCameraFront()Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 1515
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraFront---->getCallState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...getCameraIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1517
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraFront:Landroid/hardware/Camera;

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncomingCallType()I
    .locals 2

    .prologue
    .line 869
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->getByValue(I)Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    move-result-object v0

    sget-object v1, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    if-ne v0, v1, :cond_0

    .line 871
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "getIncomingCallType()-->\u97f3\u9891\u6765\u7535\u63a5\u901a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v0, "voice"

    .line 881
    :goto_0
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 873
    :cond_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->getByValue(I)Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    move-result-object v0

    sget-object v1, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    if-ne v0, v1, :cond_1

    .line 875
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "getIncomingCallType()-->\u89c6\u9891\u6765\u7535\u63a5\u901a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v0, "video"

    goto :goto_0

    .line 878
    :cond_1
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "getIncomingCallType()-->else"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v0, "voice"

    goto :goto_0

    .line 881
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIncomingCaller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    if-nez v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 859
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getIncomingCaller()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKEEP_DAYS()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    return v0
.end method

.method public getPacktLoss()I
    .locals 1

    .prologue
    .line 1597
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getPacketLoss()I

    move-result v0

    return v0
.end method

.method public getRemotescreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1116
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getRemotescreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSipMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getSipMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSvLocalView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getSvRemoteView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getServerUUID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->getServerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "\u83b7\u53d6\u5f55\u97f3\u6d41\u6c34\u53f7\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getServerUUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hangup()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 795
    .line 796
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCallState()I

    move-result v0

    const/16 v3, 0xff

    if-eq v0, v3, :cond_2

    .line 800
    const-string v0, "PAVideoSdkApiManager"

    const-string v3, "LDEngineDemo--hangup()--endcall()"

    invoke-static {v0, v3}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->endcall()I

    move-result v0

    .line 807
    :goto_0
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->closeView()V

    .line 808
    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v3, :cond_0

    .line 809
    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->disable()V

    .line 811
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hasFrontCamera()Z
    .locals 1

    .prologue
    .line 1533
    invoke-static {}, Lcom/pingan/main/utils/CameraUtils;->hasFrontFacingCamera()Z

    move-result v0

    return v0
.end method

.method public initAPI()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "Calling native init..."

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/16 v0, -0x63

    .line 210
    sget-boolean v1, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    if-nez v1, :cond_0

    .line 211
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/letpower/engine/AndroidJavaAPI;->NativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 213
    :cond_0
    if-gez v0, :cond_3

    .line 214
    sget-boolean v1, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    if-ge v1, v4, :cond_2

    .line 215
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    .line 216
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->initAPI()V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    if-lt v1, v4, :cond_1

    .line 218
    const/16 v1, 0x190

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 219
    iput v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    goto :goto_0

    .line 222
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z

    .line 223
    iput v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I

    .line 224
    const/16 v1, 0x1a4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public initAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "Calling native init..."

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    const/16 v0, 0x190

    const-string v1, " \u4f20\u9012\u7684\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 283
    :goto_0
    return-void

    .line 246
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    :cond_2
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/a/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/GlobalVarHolder;->UUID:Ljava/lang/String;

    .line 251
    :goto_1
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    invoke-static {v0}, Lcom/pingan/a/a/e;->a(I)V

    .line 252
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->needUploadLogFile:Z

    if-eqz v0, :cond_3

    .line 253
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->uploadJob:Lcom/pingan/a/a/g;

    invoke-static {v0, v1}, Lcom/pingan/main/utils/MCPUtils;->getIBOSTokenAndUpload(Landroid/content/Context;Lcom/pingan/a/a/g;)V

    .line 282
    :cond_3
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/pingan/main/PAVideoSdkApiManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_4
    sput-object p1, Lcom/pingan/main/GlobalVarHolder;->UUID:Ljava/lang/String;

    goto :goto_1
.end method

.method public initLog(IZZ)Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 1143
    const/16 v0, 0x321

    if-ne p1, v0, :cond_2

    .line 1144
    const-string v0, "xmppLog"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    .line 1154
    :cond_0
    :goto_0
    const-string v0, "logapi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLog1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->createLogDir()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1156
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/UA/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UA"

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    iget v5, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    iget v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initUALog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v8

    .line 1157
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SIP/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIP"

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    iget v5, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    iget v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initSIPLog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v9

    .line 1158
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    iget v5, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    iget v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    move-object v1, v10

    move-object v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initSDKLog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    .line 1162
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1, v7, p2}, Lcom/letpower/engine/AndroidJavaAPI;->setSIPMsgOutput(ZZ)V

    .line 1163
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    if-eqz p3, :cond_1

    .line 1166
    invoke-static {}, Lcom/pingan/a/c;->a()Lcom/pingan/a/c;

    move-result-object v1

    .line 1167
    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/pingan/a/c;->a(Landroid/content/Context;)V

    .line 1169
    :cond_1
    if-nez v8, :cond_6

    if-nez v9, :cond_6

    if-nez v0, :cond_6

    move v0, v7

    .line 1171
    :goto_1
    return v0

    .line 1145
    :cond_2
    const/16 v0, 0x322

    if-ne p1, v0, :cond_3

    .line 1146
    const-string v0, "noXmppLog"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 1147
    :cond_3
    const/16 v0, 0x323

    if-ne p1, v0, :cond_4

    .line 1148
    const-string v0, "sdkApiDemoLog"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 1149
    :cond_4
    const/16 v0, 0x324

    if-ne p1, v0, :cond_5

    .line 1150
    const-string v0, "sdkApiLog"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 1151
    :cond_5
    const/16 v0, 0x325

    if-ne p1, v0, :cond_0

    .line 1152
    const-string v0, "sdkLJS"

    sput-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 1169
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v7

    .line 1171
    goto :goto_1
.end method

.method public initLog(ZZ)Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v4, 0x8

    const/4 v7, 0x0

    .line 1193
    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->createLogDir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1194
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/UA/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UA"

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    iget v5, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    iget v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initUALog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v8

    .line 1195
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_ROOT_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SIP/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIP"

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    iget v5, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    iget v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initSIPLog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v9

    .line 1196
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    iget v5, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_SIZE:I

    iget v6, p0, Lcom/pingan/main/PAVideoSdkApiManager;->LOG_MAX_NUM:I

    move-object v1, v10

    move-object v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initSDKLog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    .line 1201
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1, v7, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setSIPMsgOutput(ZZ)V

    .line 1202
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ",,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    if-eqz p2, :cond_0

    .line 1205
    invoke-static {}, Lcom/pingan/a/c;->a()Lcom/pingan/a/c;

    move-result-object v1

    .line 1206
    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/pingan/a/c;->a(Landroid/content/Context;)V

    .line 1208
    :cond_0
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-nez v0, :cond_1

    move v0, v7

    .line 1210
    :goto_0
    return v0

    .line 1208
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v7

    .line 1210
    goto :goto_0
.end method

.method public initVideoView(Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 744
    iput-object p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svContainer:Landroid/view/ViewGroup;

    .line 745
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    .line 746
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    .line 747
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 748
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initVideo--params.getWidth()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--params.height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 750
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initVideo--rparams.getWidth()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--rparams.height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    .line 754
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    .line 755
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 756
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 757
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initVideo--msvLocal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--msvRemote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sget-boolean v0, Lcom/pingan/main/PAVideoSdkApiManager;->videoflag:Z

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 760
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 767
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 763
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isIpChanged()Z
    .locals 3

    .prologue
    .line 1442
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/letpower/engine/Utils;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    .line 1443
    const-string v0, "LDSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ip_addr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--temp_ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->temp_ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->ip_addr:Ljava/lang/String;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->temp_ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRegisterState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1126
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    if-eqz v2, :cond_0

    .line 1127
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v2}, Lcom/letpower/engine/AndroidJavaAPI;->getRegisterState()I

    move-result v2

    .line 1131
    :goto_0
    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1129
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1131
    goto :goto_1
.end method

.method public nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 287
    new-instance v0, Lcom/pingan/main/PAVideoSdkApiManager$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/pingan/main/PAVideoSdkApiManager$2;-><init>(Lcom/pingan/main/PAVideoSdkApiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 317
    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager$2;->start()V

    .line 318
    return-void
.end method

.method public openLocalView()V
    .locals 3

    .prologue
    .line 716
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openLocalView-->svLocal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---hasFrontCamera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->hasFrontCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    .line 722
    :goto_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 726
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->openLocalVideo()I

    .line 727
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->removeLocalViewFromSurface()V

    .line 728
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->addLocalViewToSurface()V

    .line 729
    return-void

    .line 720
    :cond_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    goto :goto_0
.end method

.method public openRemoteView()V
    .locals 2

    .prologue
    .line 699
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "openRemoteView-->setremoteview "

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    .line 705
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->openRemoteVideo()I

    .line 706
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startMediaVideoFromUI()I

    .line 707
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->removeRemoteViewFromSurface()V

    .line 708
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->addRemoteViewToSurface()V

    .line 709
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "openRemoteView-->end "

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public pressDtmf(I)I
    .locals 3

    .prologue
    .line 1772
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pressDtmf--num="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->pressDtmf(I)I

    move-result v0

    return v0
.end method

.method public printParamForReg()V
    .locals 3

    .prologue
    .line 414
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "regMax="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,,regMin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,,packLossPer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->packetLossPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,,,packLossPerInSec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->pakageLossPercentInSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public realtimeLogSwitch(Z)I
    .locals 1

    .prologue
    .line 1294
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setRTLogFlag(Z)I

    move-result v0

    return v0
.end method

.method public reduceLocalView()V
    .locals 4

    .prologue
    .line 1646
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getRemotescreen()Ljava/lang/String;

    move-result-object v0

    .line 1647
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decreaseLocalView--getRemotescreen->w_h="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1652
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1653
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1657
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 1658
    :cond_0
    sget v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_WIDTH:I

    sget v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_HEIGHT:I

    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->decreaseLocalView(II)V

    .line 1670
    :goto_0
    return-void

    .line 1660
    :cond_1
    if-le v1, v0, :cond_2

    .line 1661
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    sget v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1663
    float-to-int v0, v0

    sget v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_HEIGHT:I

    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->decreaseLocalView(II)V

    goto :goto_0

    .line 1665
    :cond_2
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1667
    sget v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_WIDTH:I

    float-to-int v0, v0

    invoke-direct {p0, v1, v0}, Lcom/pingan/main/PAVideoSdkApiManager;->decreaseLocalView(II)V

    goto :goto_0
.end method

.method public register(I)Z
    .locals 6

    .prologue
    const/16 v4, 0x5a

    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 425
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register--deviceType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->isParamsEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "register()-->\u6ce8\u518c\u53c2\u6570\u6709\u7a7a\u503c"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "\u6ce8\u518c\u53c2\u6570\u6709\u7a7a\u503c"

    invoke-direct {p0, v5, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->checkIP()Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "register()-->\u7f51\u7edc\u8fde\u63a5\u4e0d\u901a"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-direct {p0, v5, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_2
    const-string v1, "deviceModel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceModel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3043
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-nez p1, :cond_7

    .line 440
    const-string v1, "Nexus 6"

    .line 4043
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 440
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 441
    iput v4, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    .line 442
    iput v4, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    .line 453
    :cond_3
    :goto_1
    sput p1, Lcom/pingan/main/GlobalVarHolder;->deviceType:I

    .line 454
    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 455
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v2, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v3, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setScreenResolution(II)V

    .line 456
    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x4

    sput v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_HEIGHT:I

    .line 457
    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->metric:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    sput v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_WIDTH:I

    .line 460
    :cond_4
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMin:I

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMax:I

    invoke-virtual {v1, v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setSIPRegisterExpires(II)I

    move-result v1

    .line 461
    if-nez v1, :cond_5

    .line 462
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6eSIP\u6ce8\u518c\u95f4\u9694\u5931\u8d25--retA="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_5
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    sget-object v3, Lcom/pingan/main/GlobalVarHolder;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 468
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6e\u7528\u6237\u4fe1\u606f--retB="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->SBCIP:Ljava/lang/String;

    sget-object v3, Lcom/pingan/main/GlobalVarHolder;->SBCPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/pingan/main/GlobalVarHolder;->SBCDomain:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/letpower/engine/AndroidJavaAPI;->setSBCInfo(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 470
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6e\u7528\u6237\u4fe1\u606f--retB="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->pakageLossPercentInSec:I

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->packetLossPercent:I

    invoke-virtual {v1, v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setPacketLoss(II)I

    move-result v1

    .line 477
    if-gtz v1, :cond_8

    .line 478
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6e\u4e22\u5305\u6302\u673a\u53c2\u6570\u5931\u8d25--retC="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "\u8bbe\u7f6e\u4e22\u5305\u6302\u673a\u53c2\u6570\u5931\u8d25"

    invoke-direct {p0, v5, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 444
    :cond_6
    const/16 v1, 0x10e

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    .line 445
    iput v4, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    goto/16 :goto_1

    .line 448
    :cond_7
    const-string v1, "Nexus 6"

    .line 5043
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 448
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    const/16 v1, 0xb4

    iput v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    goto/16 :goto_1

    .line 484
    :cond_8
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register-->GlobalVarHolder.account="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->registeracc()I

    move-result v1

    .line 486
    if-eqz v1, :cond_9

    .line 487
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6ce8\u518c\u65f6\u53d1\u751f\u9519\u8bef--ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v2, "\u6ce8\u518c\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-direct {p0, v5, v2}, Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 491
    :cond_9
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->hasFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 492
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    .line 496
    :goto_2
    const-string v2, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "register-->useFrontCamera="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-boolean v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    if-eqz v2, :cond_b

    .line 498
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v2, v0, v0}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 499
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    invoke-virtual {v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    .line 504
    :goto_3
    sget-object v2, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sput-object v2, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 505
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 494
    :cond_a
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v2, v0}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    goto :goto_2

    .line 501
    :cond_b
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v2, v0, v0}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 502
    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    invoke-virtual {v2, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    goto :goto_3
.end method

.method public registerConnectionChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .prologue
    .line 1590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1591
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1592
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1593
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1594
    return-void
.end method

.method public removeLocalViewFromSurface()V
    .locals 2

    .prologue
    .line 1313
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderLocal()I

    .line 1317
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, " removeLocalViewFromSurface()"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public removeRemoteViewFromSurface()V
    .locals 2

    .prologue
    .line 1336
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderRemote()I

    .line 1339
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "removeRemoteViewFromSurface()"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return-void
.end method

.method public setCustom(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setCustom(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDefaultCamera()V
    .locals 1

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->hasFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    .line 1525
    return-void
.end method

.method public setKEEP_DAYS(I)V
    .locals 0

    .prologue
    .line 1283
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->KEEP_DAYS:I

    .line 1284
    return-void
.end method

.method public setNeedUploadLogFile(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->needUploadLogFile:Z

    .line 156
    return-void
.end method

.method public setOrientation(Z)V
    .locals 3

    .prologue
    .line 1019
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    sget-object v0, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->requestedOrientation:I

    .line 1023
    new-instance v0, Lcom/pingan/main/PAVideoSdkApiManager$3;

    sget-object v1, Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/pingan/main/PAVideoSdkApiManager$3;-><init>(Lcom/pingan/main/PAVideoSdkApiManager;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;

    .line 1055
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public setPacketLoss(II)Z
    .locals 3

    .prologue
    .line 400
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, " PAVideoSdkApiManager   setPakageLoss--start"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 403
    iput p2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->packetLossPercent:I

    .line 404
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->pakageLossPercentInSec:I

    .line 405
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1, p2}, Lcom/letpower/engine/AndroidJavaAPI;->setPacketLoss(II)I

    .line 406
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "PAVideoSdkApiManager  setPakageLoss--end--success"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    .line 409
    :cond_0
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPakageLoss--failed,\u4f20\u5165\u7684\u53c2\u6570\u4e3a\u65e0\u6548\u53c2\u6570\u3002pakageLossPercentInSec="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,packetLossPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPacketLossPercent(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->packetLossPercent:I

    .line 152
    return-void
.end method

.method public setPakageLossPercentInSec(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->pakageLossPercentInSec:I

    .line 148
    return-void
.end method

.method public setRealtimeLogSwitch(Z)I
    .locals 1

    .prologue
    .line 1305
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setRTLogFlag(Z)I

    move-result v0

    return v0
.end method

.method public setRegSip(II)Z
    .locals 3

    .prologue
    .line 374
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "setRegSip--start"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 376
    if-le p2, p1, :cond_0

    .line 377
    iput p2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMax:I

    .line 378
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMin:I

    .line 383
    :goto_0
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "setRegSip--end-success"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x1

    .line 387
    :goto_1
    return v0

    .line 380
    :cond_0
    iput p2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMin:I

    .line 381
    iput p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->regSipMax:I

    goto :goto_0

    .line 386
    :cond_1
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRegSip--failed,\u4f20\u5165\u7684\u53c2\u6570\u4e3a\u65e0\u6548\u53c2\u6570\u3002regSipMin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,regSipMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setRemoteView(Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    .line 202
    return-void
.end method

.method public startLocalCarema()I
    .locals 2

    .prologue
    .line 1360
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "startLocalCarema"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startLocalCamera()I

    move-result v0

    .line 1363
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderLocal()I

    .line 1364
    return v0
.end method

.method public stopLocalCarema()I
    .locals 2

    .prologue
    .line 1373
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "stopLocalCarema"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopLocalCamera()I

    move-result v0

    return v0
.end method

.method public switchView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1604
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "svLocal.getLayoutParams().width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", svLarge.getLayoutParams().width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    if-ne v0, v3, :cond_0

    .line 1606
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 1607
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    .line 1612
    :goto_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->switchRenderWindows(I)I

    .line 1613
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    if-nez v0, :cond_1

    .line 1614
    iput v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    .line 1618
    :goto_1
    return-void

    .line 1609
    :cond_0
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 1610
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    goto :goto_0

    .line 1616
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    goto :goto_1
.end method

.method public toggleCamera()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->hasFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    if-nez v0, :cond_4

    .line 956
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    if-eqz v0, :cond_8

    move v0, v1

    .line 970
    :goto_1
    sget v3, Lcom/pingan/main/GlobalVarHolder;->deviceType:I

    if-ne v3, v1, :cond_2

    move v0, v2

    .line 973
    :cond_2
    iget-boolean v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    .line 974
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->stopLocalCamera()I

    .line 975
    const-string v1, "PAVideoSdkApiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "toggleCamera::getCameraId(getCameraIndex()) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iLocalVideoViewIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    .line 977
    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    if-nez v1, :cond_5

    .line 979
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 980
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    .line 985
    :goto_2
    iget-boolean v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    if-eqz v1, :cond_6

    .line 986
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1, v2, v2}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 987
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    invoke-virtual {v1, v2}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    .line 992
    :goto_3
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->openLocalVideo()I

    .line 994
    if-eqz v0, :cond_0

    .line 995
    iget v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    if-nez v0, :cond_7

    .line 997
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 998
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 999
    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->decreaseLocalView(II)V

    goto/16 :goto_0

    .line 963
    :cond_4
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    if-eqz v0, :cond_8

    move v0, v1

    .line 964
    goto/16 :goto_1

    .line 982
    :cond_5
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 983
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svLocal:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    goto :goto_2

    .line 989
    :cond_6
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1, v2, v2}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 990
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v2, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    invoke-virtual {v1, v2}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    goto :goto_3

    .line 1001
    :cond_7
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1002
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1003
    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->decreaseRemoteView(II)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method

.method public unregister()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 512
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->unregister()I

    move-result v1

    .line 513
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public voiceAndVideoCall(I)Z
    .locals 11

    .prologue
    const/16 v7, 0x64

    const/16 v5, 0x32

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 643
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->catchAudioFocus()V

    .line 644
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->checkIP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "register()-->\u7f51\u7edc\u8fde\u63a5\u4e0d\u901a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 692
    :goto_0
    return v0

    .line 648
    :cond_0
    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 649
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "register()-->\u88ab\u53eb\u53f7\u7801\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 650
    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCallState()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_2

    .line 655
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "voiceCall()-->\u547c\u53eb\u72b6\u6001\u4e0d\u4e3aidle\uff0c\u6267\u884cendcall\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->endcall()I

    .line 657
    sput-boolean v9, Lcom/letpower/engine/LDEngineDemo;->isRegister:Z

    .line 660
    :cond_2
    iput-boolean v10, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    .line 661
    iput v9, p0, Lcom/pingan/main/PAVideoSdkApiManager;->iLocalVideoViewIndex:I

    .line 663
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 664
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-direct {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->getCameraId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    .line 665
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoSdkApiManager;->useFrontCamera:Z

    if-eqz v0, :cond_3

    .line 666
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, v9, v9}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 667
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees1:I

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    .line 678
    :goto_1
    sget-object v0, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VIDEO:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sput-object v0, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 679
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_call_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",,1,,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,2,,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,3,,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_FPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",,4,,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    sget v0, Lcom/pingan/main/GlobalVarHolder;->deviceType:I

    if-nez v0, :cond_5

    .line 682
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH:I

    sget v3, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT:I

    sget v4, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_FPS:I

    sget v6, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_MAX_BITS:I

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/letpower/engine/AndroidJavaAPI;->videocall(Ljava/lang/String;IIIIIII)I

    move-result v0

    .line 683
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voiceAndVideoCall--->deviceType=MOBILE_PHONE--ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :goto_2
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "voiceAndVideoCall-->end "

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    if-nez v0, :cond_7

    move v0, v10

    goto/16 :goto_0

    .line 669
    :cond_3
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, v9, v9}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 670
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    goto/16 :goto_1

    .line 673
    :cond_4
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, v9}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    .line 674
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, v9, v9}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 675
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    iget v1, p0, Lcom/pingan/main/PAVideoSdkApiManager;->degrees2:I

    invoke-virtual {v0, v1}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    goto/16 :goto_1

    .line 684
    :cond_5
    sget v0, Lcom/pingan/main/GlobalVarHolder;->deviceType:I

    if-ne v0, v10, :cond_6

    .line 685
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH_PAD:I

    sget v3, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT_PAD:I

    sget v4, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_FPS:I

    sget v6, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_MAX_BITS:I

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/letpower/engine/AndroidJavaAPI;->videocall(Ljava/lang/String;IIIIIII)I

    move-result v0

    .line 686
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voiceAndVideoCall--->deviceType=PAD--ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 688
    :cond_6
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    sget v2, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH:I

    sget v3, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT:I

    sget v4, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_FPS:I

    sget v6, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_MAX_BITS:I

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/letpower/engine/AndroidJavaAPI;->videocall(Ljava/lang/String;IIIIIII)I

    move-result v0

    .line 689
    const-string v1, "PAVideoSdkApiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "voiceAndVideoCall--->deviceType=else--ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v0, v9

    .line 692
    goto/16 :goto_0
.end method

.method public voiceCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->catchAudioFocus()V

    .line 613
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->checkIP()Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "voiceCall()-->\u7f51\u7edc\u8fde\u63a5\u4e0d\u901a"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->isRegisterState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "voiceCall()-->\u672a\u6ce8\u518c"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_2
    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 622
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "voiceCall()-->\u88ab\u53eb\u53f7\u7801\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual {p0}, Lcom/pingan/main/PAVideoSdkApiManager;->getCallState()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_4

    .line 626
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "voiceCall()-->\u547c\u53eb\u72b6\u6001\u4e0d\u4e3aidle\uff0c\u6267\u884cendcall\u64cd\u4f5c"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->endcall()I

    .line 628
    sput-boolean v0, Lcom/letpower/engine/LDEngineDemo;->isRegister:Z

    .line 630
    :cond_4
    sget-object v1, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/letpower/engine/AndroidJavaAPI;->voicecall(Ljava/lang/String;)I

    move-result v1

    .line 631
    sget-object v2, Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;->UA_CALL_TYPE_VOICE:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    sput-object v2, Lcom/letpower/engine/PAEngine;->local_call_type:Lcom/letpower/engine/PAEngine$UA_CALL_TYPE;

    .line 632
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
