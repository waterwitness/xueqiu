.class public Lcom/pingan/main/PAVideoManage;
.super Ljava/lang/Object;
.source "PAVideoManage.java"

# interfaces
.implements Lcom/pingan/main/IAVCallStatusListener;


# static fields
.field public static final CHECKED_NOT_PASS:I = 0x45c

.field public static final CHECKED_PASS:I = 0x45b

.field public static final CHECKED_REJECT:I = 0x45a

.field public static final CLEAN_VIEW:I = 0x458

.field public static final FAT:I = 0x0

.field public static final FORMAT_DATE_TIME_24:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final HANG_UP:I = 0x457

.field public static PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager; = null

.field public static final PRO:I = 0x3

.field public static final START_VIDEO:I = 0x456

.field private static final TAG:Ljava/lang/String;

.field public static final UAT_IN:I = 0x1

.field public static final UAT_OUT:I = 0x2

.field public static final VIDEO_RESULT_TIP:I = 0x64

.field private static appId:Ljava/lang/String;

.field public static authFlag:Z

.field private static channelId:Ljava/lang/String;

.field private static configEnvironment:I

.field private static context:Landroid/content/Context;

.field private static getExCount:I

.field private static instance:Lcom/pingan/main/PAVideoManage;

.field private static isChannelPassed:Z

.field public static isJump:Z

.field public static isLoading:Z

.field public static isReg:Z

.field private static myTask:Lcom/pingan/main/PAVideoManage$MyTask;

.field private static myTimer:Ljava/util/Timer;

.field private static queueCount:I

.field public static regVideoPluginFlag:Z

.field public static resultMsg:Ljava/lang/String;

.field private static sdf:Ljava/text/SimpleDateFormat;

.field private static userId:Ljava/lang/String;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private authCount:I

.field private callID:Ljava/lang/String;

.field private callto:Ljava/lang/String;

.field private ccr:Lcom/pingan/main/ConnectionChangeReceiver;

.field private currentVolume:I

.field private deviceId:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private headSet:Lcom/letpower/engine/HeadsetUtils;

.field private hs:Lcom/pingan/main/PAVideoManage$HandlerState;

.field private isCall:Z

.field private isCleanReg:Z

.field private isConSs:Z

.field private isConnected:Z

.field private isOpenLocalVideo:Z

.field private isOpenRemoteVideo:Z

.field private isUserHangUp:Z

.field private maxVolume:I

.field private powerManager:Landroid/os/PowerManager;

.field private regCount:I

.field private result:Ljava/lang/String;

.field private sip:Ljava/lang/String;

.field private svContainer:Landroid/view/ViewGroup;

.field private svLocal:Landroid/view/SurfaceView;

.field private svRemote:Landroid/view/SurfaceView;

.field private tempCallID:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    const-class v0, Lcom/pingan/main/PAVideoManage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    .line 92
    sput-boolean v2, Lcom/pingan/main/PAVideoManage;->authFlag:Z

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/pingan/main/PAVideoManage;->sdf:Ljava/text/SimpleDateFormat;

    .line 107
    sput-boolean v2, Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z

    .line 111
    sput v2, Lcom/pingan/main/PAVideoManage;->getExCount:I

    .line 115
    const/16 v0, 0x63

    sput v0, Lcom/pingan/main/PAVideoManage;->queueCount:I

    .line 116
    sput-object v1, Lcom/pingan/main/PAVideoManage;->instance:Lcom/pingan/main/PAVideoManage;

    .line 121
    sput-object v1, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    .line 127
    sput-object v1, Lcom/pingan/main/PAVideoManage;->userId:Ljava/lang/String;

    .line 131
    const/4 v0, 0x2

    sput v0, Lcom/pingan/main/PAVideoManage;->configEnvironment:I

    .line 135
    sput-object v1, Lcom/pingan/main/PAVideoManage;->appId:Ljava/lang/String;

    .line 139
    sput-object v1, Lcom/pingan/main/PAVideoManage;->channelId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/pingan/main/ConnectionChangeReceiver;

    invoke-direct {v0}, Lcom/pingan/main/ConnectionChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->ccr:Lcom/pingan/main/ConnectionChangeReceiver;

    .line 150
    iput v1, p0, Lcom/pingan/main/PAVideoManage;->authCount:I

    .line 154
    iput v1, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    .line 158
    iput-boolean v1, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    .line 162
    iput-boolean v1, p0, Lcom/pingan/main/PAVideoManage;->isCall:Z

    .line 166
    iput-boolean v1, p0, Lcom/pingan/main/PAVideoManage;->isCleanReg:Z

    .line 170
    iput-boolean v1, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    .line 174
    iput-boolean v1, p0, Lcom/pingan/main/PAVideoManage;->isConSs:Z

    .line 178
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->tempCallID:Ljava/lang/String;

    .line 194
    const-string v0, "326328"

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->callto:Ljava/lang/String;

    .line 210
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->sip:Ljava/lang/String;

    .line 218
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->svLocal:Landroid/view/SurfaceView;

    .line 222
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->svRemote:Landroid/view/SurfaceView;

    .line 234
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->deviceId:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    .line 244
    new-instance v0, Lcom/pingan/main/PAVideoManage$1;

    invoke-direct {v0, p0}, Lcom/pingan/main/PAVideoManage$1;-><init>(Lcom/pingan/main/PAVideoManage;)V

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    .line 375
    sput-object p1, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    .line 376
    return-void
.end method

.method private LSAuth()V
    .locals 1

    .prologue
    .line 715
    new-instance v0, Lcom/pingan/main/PAVideoManage$3;

    invoke-direct {v0, p0}, Lcom/pingan/main/PAVideoManage$3;-><init>(Lcom/pingan/main/PAVideoManage;)V

    .line 738
    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage$3;->start()V

    .line 739
    return-void
.end method

.method static synthetic access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->isChannelExists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/pingan/main/PAVideoManage;->configEnvironment:I

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/pingan/main/PAVideoManage;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pingan/main/PAVideoManage;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isCall:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->myTask()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .prologue
    .line 45
    sput p0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 45
    sget v0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pingan/main/PAVideoManage;->getExCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/pingan/main/PAVideoManage;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->startVideo()V

    return-void
.end method

.method static synthetic access$600(Lcom/pingan/main/PAVideoManage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->saveHungUpState()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/pingan/main/PAVideoManage;->queueCount:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    .prologue
    .line 45
    sput p0, Lcom/pingan/main/PAVideoManage;->queueCount:I

    return p0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z

    return p0
.end method

.method public static bytes2Hex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 620
    const-string v1, ""

    .line 622
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 623
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 629
    :cond_1
    return-object v0
.end method

.method public static checkChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pingan/main/CheckChannelCallback;)V
    .locals 6

    .prologue
    .line 455
    if-nez p0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    sput-object p0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    .line 462
    sput-object p1, Lcom/pingan/main/PAVideoManage;->appId:Ljava/lang/String;

    .line 463
    sput-object p2, Lcom/pingan/main/PAVideoManage;->userId:Ljava/lang/String;

    .line 464
    sput-object p3, Lcom/pingan/main/PAVideoManage;->channelId:Ljava/lang/String;

    .line 467
    const-string v0, "config"

    const-string v1, "lastCheckChannelTime"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/pingan/paphone/utils/CommonUtil;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 472
    new-instance v0, Lcom/pingan/main/PAVideoManage$2;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/pingan/main/PAVideoManage$2;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pingan/main/CheckChannelCallback;Landroid/content/Context;)V

    .line 553
    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage$2;->start()V

    goto :goto_0

    .line 556
    :cond_2
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->isChannelExists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z

    .line 558
    invoke-interface {p6}, Lcom/pingan/main/CheckChannelCallback;->checkPassed()V

    goto :goto_0

    .line 560
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z

    .line 561
    invoke-interface {p6}, Lcom/pingan/main/CheckChannelCallback;->checkFailed()V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 609
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 610
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 611
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->bytes2Hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 613
    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Invalid algorithm."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatRequestParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 574
    new-instance v0, Lcom/paic/openapi/demo/core/Head;

    invoke-direct {v0}, Lcom/paic/openapi/demo/core/Head;-><init>()V

    .line 575
    sget-object v1, Lcom/pingan/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/core/Head;->setAppId(Ljava/lang/String;)V

    .line 576
    const-string v1, "json"

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/core/Head;->setFormat(Ljava/lang/String;)V

    .line 577
    const-string v1, "openacc"

    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/core/Head;->setOpenId(Ljava/lang/String;)V

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/pingan/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingan/main/PAVideoManage;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/core/Head;->setSign(Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {v0, v1}, Lcom/paic/openapi/demo/core/Head;->setTimestamp(Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 587
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"head\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"body\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    sget-object v0, Lcom/pingan/main/PAVideoManage;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/pingan/main/PAVideoManage;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;
    .locals 4

    .prologue
    .line 434
    sget-object v0, Lcom/pingan/main/PAVideoManage;->instance:Lcom/pingan/main/PAVideoManage;

    if-nez v0, :cond_1

    .line 435
    const-class v1, Lcom/pingan/main/PAVideoManage;

    monitor-enter v1

    .line 436
    :try_start_0
    sget-object v0, Lcom/pingan/main/PAVideoManage;->instance:Lcom/pingan/main/PAVideoManage;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/pingan/main/PAVideoManage;

    invoke-direct {v0, p0}, Lcom/pingan/main/PAVideoManage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pingan/main/PAVideoManage;->instance:Lcom/pingan/main/PAVideoManage;

    .line 438
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MainLooper:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_1
    sget-object v0, Lcom/pingan/main/PAVideoManage;->instance:Lcom/pingan/main/PAVideoManage;

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initOther()V
    .locals 2

    .prologue
    .line 1084
    new-instance v0, Lcom/letpower/engine/HeadsetUtils;

    sget-object v1, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/letpower/engine/HeadsetUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->headSet:Lcom/letpower/engine/HeadsetUtils;

    .line 1087
    return-void
.end method

.method private initPaPhoneSDK()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 659
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->setContext(Landroid/content/Context;)V

    .line 662
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 663
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/a;->a:Ljava/lang/String;

    .line 664
    const-string v0, "cx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEVICE_ID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {p0}, Lcom/letpower/engine/PAEngine;->setIAVCallStatusListener(Lcom/pingan/main/IAVCallStatusListener;)V

    .line 668
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoSdkApiManager;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    .line 672
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "authFlag:false"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-boolean v0, Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z

    if-nez v0, :cond_0

    .line 680
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "\u9274\u6743\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 709
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->LSAuth()V

    .line 705
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->isReg:Z

    .line 706
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->isLoading:Z

    .line 707
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->isJump:Z

    .line 708
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->regVideoPluginFlag:Z

    goto :goto_0
.end method

.method private static isChannelExists()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 633
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v2, "config"

    const-string v3, "checkChannelResults"

    const-string v4, ""

    invoke-static {v0, v2, v3, v4}, Lcom/pingan/paphone/utils/CommonUtil;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 653
    :goto_0
    return v0

    .line 639
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 640
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 641
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 642
    const-string v4, "results"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    const-string v5, "pass"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    sget-object v5, Lcom/pingan/main/PAVideoManage;->channelId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    const/4 v0, 0x1

    goto :goto_0

    .line 640
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 650
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 653
    goto :goto_0
.end method

.method private myTask()V
    .locals 6

    .prologue
    .line 792
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "myTask"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "extensionTime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 802
    sget-object v1, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v2, "myTask-30S-end"

    invoke-static {v1, v2}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    sget-object v1, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v1}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 805
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->unregVideo()V

    .line 806
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->stopMyTask()V

    .line 808
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    if-eqz v0, :cond_1

    .line 809
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "myTask-10S-end"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    .line 813
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->stopMyTask()V

    .line 815
    :cond_1
    return-void
.end method

.method private onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1261
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/pingan/main/PAVideoManage;->currentVolume:I

    .line 1263
    sparse-switch p1, :sswitch_data_0

    .line 1288
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 1267
    :sswitch_1
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1270
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->currentVolume:I

    if-gtz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1272
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1273
    iput v2, p0, Lcom/pingan/main/PAVideoManage;->currentVolume:I

    goto :goto_0

    .line 1277
    :sswitch_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1280
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1281
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->currentVolume:I

    iget v1, p0, Lcom/pingan/main/PAVideoManage;->maxVolume:I

    if-lt v0, v1, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/pingan/main/PAVideoManage;->maxVolume:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1284
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->maxVolume:I

    iput v0, p0, Lcom/pingan/main/PAVideoManage;->currentVolume:I

    goto :goto_0

    .line 1263
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1298
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1299
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1301
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pingan/main/PAVideoManage;->resultMsg:Ljava/lang/String;

    .line 1302
    const-string v1, "step"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pingan/main/PAVideoManage;->resultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    const/16 v1, 0x45a

    invoke-direct {p0, v1, v0}, Lcom/pingan/main/PAVideoManage;->sendMessage(ILjava/lang/Object;)V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1311
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "0"

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1314
    const/16 v0, 0x45b

    const-string v1, "\u8ba4\u8bc1\u901a\u8fc7\uff0c\u5f00\u6237\u6210\u529f!"

    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoManage;->sendMessage(ILjava/lang/Object;)V

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    const/16 v0, 0x45c

    const-string v1, "\u8ba4\u8bc1\u672a\u901a\u8fc7\uff0c\u5f00\u6237\u5931\u8d25!"

    invoke-direct {p0, v0, v1}, Lcom/pingan/main/PAVideoManage;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1322
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private regReceiver()V
    .locals 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->headSet:Lcom/letpower/engine/HeadsetUtils;

    invoke-virtual {v0}, Lcom/letpower/engine/HeadsetUtils;->registerHeadsetPlugReceiver()V

    .line 1093
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->headSet:Lcom/letpower/engine/HeadsetUtils;

    invoke-virtual {v0}, Lcom/letpower/engine/HeadsetUtils;->registerBluetoothScoReceiver()V

    .line 1095
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    sget-object v1, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->ccr:Lcom/pingan/main/ConnectionChangeReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/pingan/main/PAVideoSdkApiManager;->registerConnectionChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1096
    return-void
.end method

.method private regVideo()V
    .locals 2

    .prologue
    .line 742
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/MCPExtension2;->getExtension(Landroid/content/Context;Landroid/os/Handler;)V

    .line 745
    :cond_0
    return-void
.end method

.method private saveHungUpState()V
    .locals 1

    .prologue
    .line 1328
    new-instance v0, Lcom/pingan/main/PAVideoManage$4;

    invoke-direct {v0, p0}, Lcom/pingan/main/PAVideoManage$4;-><init>(Lcom/pingan/main/PAVideoManage;)V

    .line 1372
    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage$4;->start()V

    .line 1374
    return-void
.end method

.method private sendMessage(I)V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pingan/main/PAVideoManage;->sendMessage(ILjava/lang/Object;)V

    .line 1040
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 1050
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1051
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1052
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1053
    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1055
    return-void
.end method

.method public static setEnvironment(I)V
    .locals 1

    .prologue
    .line 384
    sput p0, Lcom/pingan/main/PAVideoManage;->configEnvironment:I

    .line 385
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pingan/main/utils/MCPUtils;->mcpSwitch(I)V

    .line 387
    packed-switch p0, :pswitch_data_0

    .line 427
    :goto_0
    return-void

    .line 389
    :pswitch_0
    sget-object v0, Lcom/pingan/a;->e:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->i:Ljava/lang/String;

    .line 390
    const-string v0, "http://222.68.184.171:8090/eim-mcp-portal/"

    sput-object v0, Lcom/pingan/a;->b:Ljava/lang/String;

    .line 391
    sget-object v0, Lcom/pingan/a;->j:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->m:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/pingan/a;->n:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->q:Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/pingan/a;->r:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->u:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/pingan/a;->v:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->y:Ljava/lang/String;

    goto :goto_0

    .line 398
    :pswitch_1
    sget-object v0, Lcom/pingan/a;->f:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->i:Ljava/lang/String;

    .line 399
    const-string v0, "http://222.68.184.171:8090/eim-mcp-portal/"

    sput-object v0, Lcom/pingan/a;->b:Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/pingan/a;->j:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->m:Ljava/lang/String;

    .line 401
    sget-object v0, Lcom/pingan/a;->n:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->q:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/pingan/a;->r:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->u:Ljava/lang/String;

    .line 403
    sget-object v0, Lcom/pingan/a;->v:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->y:Ljava/lang/String;

    goto :goto_0

    .line 407
    :pswitch_2
    sget-object v0, Lcom/pingan/a;->g:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->i:Ljava/lang/String;

    .line 408
    const-string v0, "http://222.68.184.171:8090/eim-mcp-portal/"

    sput-object v0, Lcom/pingan/a;->b:Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/pingan/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->m:Ljava/lang/String;

    .line 410
    sget-object v0, Lcom/pingan/a;->o:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->q:Ljava/lang/String;

    .line 411
    sget-object v0, Lcom/pingan/a;->s:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->u:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/pingan/a;->w:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->y:Ljava/lang/String;

    goto :goto_0

    .line 416
    :pswitch_3
    sget-object v0, Lcom/pingan/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->i:Ljava/lang/String;

    .line 417
    const-string v0, "https://eim-mcp.pingan.com.cn/eim-mcp-portal/"

    sput-object v0, Lcom/pingan/a;->b:Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/pingan/a;->l:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->m:Ljava/lang/String;

    .line 419
    sget-object v0, Lcom/pingan/a;->p:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->q:Ljava/lang/String;

    .line 420
    sget-object v0, Lcom/pingan/a;->t:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->u:Ljava/lang/String;

    .line 421
    sget-object v0, Lcom/pingan/a;->x:Ljava/lang/String;

    sput-object v0, Lcom/pingan/a;->y:Ljava/lang/String;

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private startMyTask()V
    .locals 4

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->stopMyTask()V

    .line 760
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    .line 763
    :cond_0
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    if-nez v0, :cond_1

    .line 764
    new-instance v0, Lcom/pingan/main/PAVideoManage$MyTask;

    invoke-direct {v0, p0}, Lcom/pingan/main/PAVideoManage$MyTask;-><init>(Lcom/pingan/main/PAVideoManage;)V

    sput-object v0, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    .line 766
    :cond_1
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isCall:Z

    if-nez v0, :cond_2

    .line 767
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    sget-object v1, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 768
    :cond_2
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    if-nez v0, :cond_3

    .line 769
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    sget-object v1, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 770
    :cond_3
    return-void
.end method

.method private startVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1060
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1061
    sget-object v1, Lcom/pingan/main/PAVideoManage;->userId:Ljava/lang/String;

    sput-object v1, Lcom/pingan/a;->d:Ljava/lang/String;

    .line 1062
    const-string v1, "user_id"

    sget-object v2, Lcom/pingan/main/PAVideoManage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    const-string v1, "owner_id"

    sget-object v2, Lcom/pingan/main/PAVideoManage;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    sget-object v1, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pingan/main/PAVideoSdkApiManager;->setCustom(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->callto:Ljava/lang/String;

    sput-object v0, Lcom/pingan/main/GlobalVarHolder;->callTo:Ljava/lang/String;

    .line 1070
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->svContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->svLocal:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/pingan/main/PAVideoManage;->svRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pingan/main/PAVideoSdkApiManager;->initVideoView(Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 1072
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0, v4}, Lcom/pingan/main/PAVideoSdkApiManager;->voiceAndVideoCall(I)Z

    .line 1074
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->svLocal:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1076
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->openLocalView()V

    .line 1078
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/MCPExtension2;->startQueueRefresh(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1079
    iput-boolean v4, p0, Lcom/pingan/main/PAVideoManage;->isOpenLocalVideo:Z

    .line 1080
    return-void

    .line 1066
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopMyTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "myTimer-stopMyTask"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 776
    sput-object v2, Lcom/pingan/main/PAVideoManage;->myTimer:Ljava/util/Timer;

    .line 778
    :cond_0
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    if-eqz v0, :cond_1

    .line 779
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "myTask-stopMyTask"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget-object v0, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoManage$MyTask;->cancel()Z

    .line 781
    sput-object v2, Lcom/pingan/main/PAVideoManage;->myTask:Lcom/pingan/main/PAVideoManage$MyTask;

    .line 783
    :cond_1
    return-void
.end method

.method private unregReceiver()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->headSet:Lcom/letpower/engine/HeadsetUtils;

    invoke-virtual {v0}, Lcom/letpower/engine/HeadsetUtils;->unregisterBluetoothScoReceiver()V

    .line 1102
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->headSet:Lcom/letpower/engine/HeadsetUtils;

    invoke-virtual {v0}, Lcom/letpower/engine/HeadsetUtils;->unregisterHeadsetPlugReceiver()V

    .line 1104
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->ccr:Lcom/pingan/main/ConnectionChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1105
    return-void
.end method

.method private unregVideo()V
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopTimerRefresh()V

    .line 751
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopQueueRefresh()V

    .line 752
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->unregister()Z

    .line 755
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 756
    return-void
.end method


# virtual methods
.method public hangup()V
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    .line 1257
    return-void
.end method

.method public onPACreate(Lcom/pingan/main/PAVideoManage$HandlerState;Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1116
    iput-object p2, p0, Lcom/pingan/main/PAVideoManage;->svContainer:Landroid/view/ViewGroup;

    .line 1117
    iput-object p3, p0, Lcom/pingan/main/PAVideoManage;->svLocal:Landroid/view/SurfaceView;

    .line 1118
    iput-object p4, p0, Lcom/pingan/main/PAVideoManage;->svRemote:Landroid/view/SurfaceView;

    .line 1119
    iput-object p1, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    .line 1123
    iput-boolean v3, p0, Lcom/pingan/main/PAVideoManage;->isUserHangUp:Z

    .line 1124
    iput v3, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    .line 1125
    sput v3, Lcom/pingan/main/PAVideoManage;->getExCount:I

    .line 1128
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    .line 1130
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/pingan/main/PAVideoManage;->maxVolume:I

    .line 1132
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->powerManager:Landroid/os/PowerManager;

    .line 1133
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->powerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    sget-object v2, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1135
    iput-boolean v3, p0, Lcom/pingan/main/PAVideoManage;->isConSs:Z

    .line 1137
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->initPaPhoneSDK()V

    .line 1138
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->initOther()V

    .line 1140
    return-void
.end method

.method public onPADestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1227
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "isFirstOpen"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1228
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1229
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "authFlag"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1233
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 1235
    const/16 v0, 0x63

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->setExtensionCount(I)V

    .line 1236
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopQueueRefresh()V

    .line 1238
    sput-boolean v6, Lcom/pingan/main/PAVideoManage;->isJump:Z

    .line 1240
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "authFlag"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1241
    sget-object v1, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authFlag1\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->unregister()Z

    .line 1244
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopTimerRefresh()V

    .line 1246
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isCall:Z

    if-eqz v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 1249
    :cond_0
    return-void
.end method

.method public onPAPause()V
    .locals 2

    .prologue
    .line 1198
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1202
    :cond_0
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->unregReceiver()V

    .line 1203
    return-void
.end method

.method public onPARestart()V
    .locals 2

    .prologue
    .line 1155
    invoke-static {p0}, Lcom/letpower/engine/PAEngine;->setIAVCallStatusListener(Lcom/pingan/main/IAVCallStatusListener;)V

    .line 1158
    sget-boolean v0, Lcom/pingan/main/PAVideoManage;->isJump:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->isRegisterState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    const-string v0, "cx"

    const-string v1, "onRestart--stopHomeTimer  in"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->stopMyTask()V

    .line 1163
    :cond_0
    sget-boolean v0, Lcom/pingan/main/PAVideoManage;->isJump:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->isRegisterState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/pingan/main/PAVideoManage;->regVideoPluginFlag:Z

    if-eqz v0, :cond_1

    .line 1165
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->regVideo()V

    .line 1166
    const-string v0, "cx"

    const-string v1, "onRestart--regVideo  in"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_1
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isOpenLocalVideo:Z

    if-eqz v0, :cond_2

    .line 1173
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->addLocalViewToSurface()V

    .line 1175
    :cond_2
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isOpenRemoteVideo:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    if-eqz v0, :cond_3

    .line 1178
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->addRemoteViewToSurface()V

    .line 1180
    :cond_3
    return-void
.end method

.method public onPAResume()V
    .locals 1

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->stopMyTask()V

    .line 1188
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1191
    :cond_0
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->regReceiver()V

    .line 1192
    return-void
.end method

.method public onPAStart()V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method public onPAStop()V
    .locals 2

    .prologue
    .line 1209
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->isRegisterState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->startMyTask()V

    .line 1213
    :cond_0
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isOpenLocalVideo:Z

    if-eqz v0, :cond_1

    .line 1215
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->removeLocalViewFromSurface()V

    .line 1217
    :cond_1
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoManage;->isOpenRemoteVideo:Z

    if-eqz v0, :cond_2

    .line 1218
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->removeRemoteViewFromSurface()V

    .line 1220
    :cond_2
    return-void
.end method

.method public outputAVCallStatus(ILjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 823
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outputAVCallStatus-->status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    sparse-switch p1, :sswitch_data_0

    .line 1028
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_default"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 826
    :sswitch_1
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u89c6\u9891\u8ba4\u8bc1\u5931\u8d25\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 827
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_AUTH_FAILED--\u8ba4\u8bc1\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    sput-boolean v6, Lcom/pingan/main/PAVideoManage;->authFlag:Z

    .line 829
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->authCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pingan/main/PAVideoManage;->authCount:I

    .line 831
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->authCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 832
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8ba4\u8bc1\u5931\u8d25\uff0c\u91cd\u8bd5\u4e2d\u3002\u3002authCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pingan/main/PAVideoManage;->authCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-direct {p0}, Lcom/pingan/main/PAVideoManage;->LSAuth()V

    goto :goto_0

    .line 839
    :sswitch_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u89c6\u9891\u8ba4\u8bc1\u6210\u529f\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 840
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_AUTH_SUCCESS--\u8ba4\u8bc1\u6210\u529f"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->authFlag:Z

    .line 842
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "authFlag"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 843
    iput v6, p0, Lcom/pingan/main/PAVideoManage;->authCount:I

    .line 844
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    const-string v1, "config"

    const-string v2, "closeTime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 846
    invoke-static {v7}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 847
    sget-object v0, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/MCPExtension2;->getExtension(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 849
    :cond_1
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0, v6}, Lcom/pingan/main/PAVideoSdkApiManager;->register(I)Z

    .line 850
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/pingan/main/PAVideoSdkApiManager;->setPacketLoss(II)Z

    goto/16 :goto_0

    .line 854
    :sswitch_3
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u89c6\u9891\u6ce8\u518c\u6210\u529f\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 855
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "\u6ce8\u518c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iput v6, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    .line 858
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->startTimerRefresh()V

    .line 859
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->isReg:Z

    .line 861
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 863
    sget-boolean v0, Lcom/pingan/main/PAVideoManage;->isLoading:Z

    if-eqz v0, :cond_0

    .line 864
    sput-boolean v6, Lcom/pingan/main/PAVideoManage;->isLoading:Z

    .line 865
    sput-boolean v3, Lcom/pingan/main/PAVideoManage;->isJump:Z

    goto/16 :goto_0

    .line 871
    :sswitch_4
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u89c6\u9891\u6ce8\u518c\u5931\u8d25\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 872
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_SIP_REG_FAILED--\u6ce8\u518c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    if-gt v0, v4, :cond_2

    .line 875
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0, v6}, Lcom/pingan/main/PAVideoSdkApiManager;->register(I)Z

    .line 877
    :cond_2
    iget v0, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    if-le v0, v4, :cond_3

    sget v0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    if-gt v0, v4, :cond_3

    .line 878
    sget v0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    .line 879
    iput v6, p0, Lcom/pingan/main/PAVideoManage;->regCount:I

    .line 880
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "regCount---\u4e09\u6b21\u91cd\u8bd5\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {v7}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 884
    :cond_3
    sget v0, Lcom/pingan/main/PAVideoManage;->getExCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 885
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "getExCount-\u4e09\u6b21\u91cd\u8bd5\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-static {v7}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 887
    sput v6, Lcom/pingan/main/PAVideoManage;->getExCount:I

    goto/16 :goto_0

    .line 891
    :sswitch_5
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u89c6\u9891\u6ce8\u518c\u6ce8\u9500\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 892
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_SIP_UN_REG_OK--\u89c6\u9891\u6ce8\u9500"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    sput-boolean v6, Lcom/pingan/main/PAVideoManage;->isReg:Z

    goto/16 :goto_0

    .line 898
    :sswitch_6
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u632f\u94c3\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 899
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iput-boolean v3, p0, Lcom/pingan/main/PAVideoManage;->isConSs:Z

    .line 902
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->tempCallID:Ljava/lang/String;

    .line 905
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tempCallID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->tempCallID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->tempCallID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->tempCallID:Ljava/lang/String;

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->tempCallID:Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    .line 909
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "\u632f\u94c3-----\u4e0a\u4f20\u5f55\u97f3\u6d41\u6c34\u53f7"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    sget-object v1, Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/pingan/paphone/extension/MCPExtension2;->fetchCallUuId(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 911
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->callDo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 917
    :sswitch_7
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u901a\u8bdd\u63a5\u901a\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 918
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    sget-object v1, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "STATUS_CALL_CONNECTED--(String)obj="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iput-boolean v3, p0, Lcom/pingan/main/PAVideoManage;->isCall:Z

    .line 921
    iput-boolean v3, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    .line 922
    const-string v0, "video"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 923
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_CONNECTED--\u89c6\u9891\u63a5\u901a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->openRemoteView()V

    .line 926
    iput-boolean v3, p0, Lcom/pingan/main/PAVideoManage;->isOpenRemoteVideo:Z

    .line 930
    :goto_1
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopQueueRefresh()V

    goto/16 :goto_0

    .line 928
    :cond_4
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_CONNECTED--\u97f3\u9891\u63a5\u901a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 933
    :sswitch_8
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u547c\u53eb\u5931\u8d25\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 934
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 939
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isOpenLocalVideo:Z

    .line 940
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isOpenRemoteVideo:Z

    .line 941
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    goto/16 :goto_0

    .line 945
    :sswitch_9
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u6302\u673a\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 946
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_IDLE-\u5bf9\u65b9\u6302\u673a"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const/16 v0, 0x458

    invoke-direct {p0, v0}, Lcom/pingan/main/PAVideoManage;->sendMessage(I)V

    .line 953
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    .line 955
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->unregister()Z

    .line 956
    sput-boolean v6, Lcom/pingan/main/PAVideoManage;->isReg:Z

    .line 961
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->unregister()Z

    .line 963
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->stopTimerRefresh()V

    .line 964
    invoke-static {v7}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 969
    :sswitch_a
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u62d2\u7edd\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 970
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_REFUSED-\u5bf9\u65b9\u62d2\u7edd"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 976
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    .line 978
    invoke-static {v7}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 983
    :sswitch_b
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u7e41\u5fd9\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 985
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_BUSY-\u5bf9\u65b9\u7e41\u5fd9"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 988
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    goto/16 :goto_0

    .line 992
    :sswitch_c
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u53f7\u7801\u4e0d\u5b58\u5728\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 993
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_NON_EXIST-\u53f7\u7801\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 997
    iput-boolean v6, p0, Lcom/pingan/main/PAVideoManage;->isConnected:Z

    goto/16 :goto_0

    .line 1000
    :sswitch_d
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;

    const-string v1, "\u5750\u5e2d\u5168\u5fd9\uff01"

    invoke-interface {v0, p1, v1}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 1001
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    const-string v1, "STATUS_CALL_AGENT_ALL_BUSY"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1009
    :sswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/pingan/main/PAVideoManage;->sip:Ljava/lang/String;

    .line 1010
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip\u6d88\u606f\u5185\u5bb9:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->sip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1023
    :sswitch_f
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/pingan/main/PAVideoManage;->parseResult(Ljava/lang/String;)V

    .line 1024
    sget-object v0, Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6536\u5230\u6d88\u606f---resultmsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/PAVideoManage;->resultMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pingan/main/PAVideoManage;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x8 -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_f
        0x190 -> :sswitch_1
        0x1a4 -> :sswitch_2
        0x385 -> :sswitch_0
        0x386 -> :sswitch_0
    .end sparse-switch
.end method
