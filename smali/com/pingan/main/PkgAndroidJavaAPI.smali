.class public Lcom/pingan/main/PkgAndroidJavaAPI;
.super Ljava/lang/Object;
.source "PkgAndroidJavaAPI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PkgAndroidJavaAPI"

.field private static deviceId:Ljava/lang/String;

.field private static mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/pingan/main/PkgAndroidJavaAPI;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    .line 17
    const-string v0, "static"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mContext="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/letpower/engine/LDEngineDemo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 19
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-NativeInit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/letpower/engine/AndroidJavaAPI;->NativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static acceptcall(IIIIIII)I
    .locals 8

    .prologue
    .line 69
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-acceptcall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letpower/engine/AndroidJavaAPI;->acceptcall(IIIIIII)I

    move-result v0

    return v0
.end method

.method public static closeRemoteVideo()I
    .locals 3

    .prologue
    .line 200
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-closeRemoteVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->closeRemoteVideo()I

    move-result v0

    return v0
.end method

.method public static connectCaptureDevice(I)I
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->connectCaptureDevice(I)I

    move-result v0

    return v0
.end method

.method public static enableMic(Z)I
    .locals 3

    .prologue
    .line 245
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-enableMic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->enableMic(Z)I

    move-result v0

    return v0
.end method

.method public static enableRTCPReport(ZIZI)V
    .locals 3

    .prologue
    .line 268
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-enableRTCPReport"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/letpower/engine/AndroidJavaAPI;->enableRTCPReport(ZIZI)V

    .line 270
    return-void
.end method

.method public static endcall()I
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-endcall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->endcall()I

    move-result v0

    return v0
.end method

.method public static freeRes()I
    .locals 3

    .prologue
    .line 120
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-freeRes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->freeRes()I

    move-result v0

    return v0
.end method

.method public static getAndAllocateCaptureDevice(I)I
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->getAndAllocateCaptureDevice(I)I

    move-result v0

    return v0
.end method

.method public static getCallState()I
    .locals 3

    .prologue
    .line 105
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getCallState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallState()I

    move-result v0

    return v0
.end method

.method public static getCallType()I
    .locals 3

    .prologue
    .line 110
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getCallType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getCallType()I

    move-result v0

    return v0
.end method

.method public static getIncomingCaller()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getIncomingCaller"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getIncomingCaller()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisterState()I
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getRegisterState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getRegisterState()I

    move-result v0

    return v0
.end method

.method public static getRemotescreen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getRemotescreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getRemotescreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getServerUUID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 333
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getServerUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSipMsg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-getSipMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getSipMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoRTCPReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getVideoRTCPReport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceRTCPReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->getVoiceRTCPReport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initSDKLog(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 7

    .prologue
    .line 232
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initSDKLog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    return v0
.end method

.method public static initUALog(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 7

    .prologue
    .line 224
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/letpower/engine/AndroidJavaAPI;->initUALog(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    return v0
.end method

.method public static openLocalVideo()I
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-openLocalVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->openLocalVideo()I

    move-result v0

    return v0
.end method

.method public static openRemoteVideo()I
    .locals 3

    .prologue
    .line 195
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-openRemoteVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->openRemoteVideo()I

    move-result v0

    return v0
.end method

.method private static outputAVCallStatus(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 30
    const-string v0, "PkgAndroidJavaAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outputAVCallStatus mAvCallStatusListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/letpower/engine/LDEngineDemo;->getIAVCallStatusListener()Lcom/pingan/main/IAVCallStatusListener;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/pingan/main/PkgAndroidJavaAPI;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "PkgAndroidJavaAPI"

    const-string v1, "outputAVCallStatus mAvCallStatusListener  in"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/pingan/main/PkgAndroidJavaAPI;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-interface {v0, p0, p1}, Lcom/pingan/main/IAVCallStatusListener;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static registeracc()I
    .locals 3

    .prologue
    .line 47
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-registeracc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->registeracc()I

    move-result v0

    return v0
.end method

.method public static reject()I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->reject()I

    move-result v0

    return v0
.end method

.method public static releaseCaptureDevice(I)I
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->releaseCaptureDevice(I)I

    move-result v0

    return v0
.end method

.method public static setIPAddr(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 100
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setIPAddr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->setIPAddr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setLSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1, p2}, Lcom/letpower/engine/AndroidJavaAPI;->setLSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setMirrorXY(ZZ)V
    .locals 3

    .prologue
    .line 256
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setMirrorXY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setMirrorXY(ZZ)V

    .line 258
    return-void
.end method

.method public static setPacketLoss(II)I
    .locals 3

    .prologue
    .line 312
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setPacketLoss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 313
    const-string v0, "PkgAndroidJavaAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPacketLoss  - checkLossPercentInSec "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - packetLossPercent -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setPacketLoss(II)I

    move-result v0

    return v0
.end method

.method public static setRTLogFlag(Z)I
    .locals 3

    .prologue
    .line 306
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setRTLogFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->setRTLogFlag(Z)I

    move-result v0

    return v0
.end method

.method public static setRotateCapturedFrames(I)I
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->setRotateCapturedFrames(I)I

    move-result v0

    return v0
.end method

.method public static setSBCInfo(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 95
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setSBCInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1, p2}, Lcom/letpower/engine/AndroidJavaAPI;->setSBCInfo(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setSIPMsgOutput(ZZ)V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setSIPMsgOutput(ZZ)V

    .line 87
    return-void
.end method

.method public static setSIPRegisterExpires(II)I
    .locals 3

    .prologue
    .line 240
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setSIPRegisterExpires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setSIPRegisterExpires(II)I

    move-result v0

    return v0
.end method

.method public static setScreenResolution(II)V
    .locals 3

    .prologue
    .line 250
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setScreenResolution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setScreenResolution(II)V

    .line 252
    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setUserInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setcameraindex(I)V
    .locals 3

    .prologue
    .line 167
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setcameraindex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->setcameraindex(I)V

    .line 169
    return-void
.end method

.method public static setlocalview(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 178
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setlocalview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->setlocalview(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public static setremoteview(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 183
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setremoteview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->setremoteview(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public static startLocalCamera()I
    .locals 3

    .prologue
    .line 139
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-startLocalCamera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startLocalCamera()I

    move-result v0

    return v0
.end method

.method public static startMediaVideoFromUI()I
    .locals 3

    .prologue
    .line 190
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-startMediaVideoFromUI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startMediaVideoFromUI()I

    move-result v0

    return v0
.end method

.method public static startRenderLocal()I
    .locals 3

    .prologue
    .line 149
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-startRenderLocal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderLocal()I

    move-result v0

    return v0
.end method

.method public static startRenderRemote()I
    .locals 3

    .prologue
    .line 206
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-startRenderRemote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 207
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->startRenderRemote()I

    move-result v0

    return v0
.end method

.method public static startnetworkdetection(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0, p1}, Lcom/letpower/engine/AndroidJavaAPI;->startnetworkdetection(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static stopLocalCamera()I
    .locals 3

    .prologue
    .line 144
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-stopLocalCamera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopLocalCamera()I

    move-result v0

    return v0
.end method

.method public static stopRenderLocal()I
    .locals 3

    .prologue
    .line 154
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-stopRenderLocal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderLocal()I

    move-result v0

    return v0
.end method

.method public static stopRenderRemote()I
    .locals 3

    .prologue
    .line 211
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-stopRenderRemote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopRenderRemote()I

    move-result v0

    return v0
.end method

.method public static stopnetworkdetection()I
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->stopnetworkdetection()I

    move-result v0

    return v0
.end method

.method public static switchRenderWindows(I)I
    .locals 3

    .prologue
    .line 323
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-switchRenderWindows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->switchRenderWindows(I)I

    move-result v0

    return v0
.end method

.method public static unregister()I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-unregister"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0}, Lcom/letpower/engine/AndroidJavaAPI;->unregister()I

    move-result v0

    return v0
.end method

.method public static videocall(Ljava/lang/String;IIIIIII)I
    .locals 9

    .prologue
    .line 173
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-videocall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/letpower/engine/AndroidJavaAPI;->videocall(Ljava/lang/String;IIIIIII)I

    move-result v0

    return v0
.end method

.method public static voicecall(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x3e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pingan/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/PkgAndroidJavaAPI;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-voicecall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/main/PkgAndroidJavaAPI;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v0, p0}, Lcom/letpower/engine/AndroidJavaAPI;->voicecall(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
