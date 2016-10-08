.class public Lcom/letpower/engine/AndroidJavaAPI;
.super Ljava/lang/Object;
.source "AndroidJavaAPI.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "*WEBRTCJ*"

    const-string v1, "Loading AndroidJavaAPI..."

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "pasdk-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public native NativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native acceptcall(IIIIIII)I
.end method

.method public native closeRemoteVideo()I
.end method

.method public native connectCaptureDevice(I)I
.end method

.method public native enableMic(Z)I
.end method

.method public native enableRTCPReport(ZIZI)V
.end method

.method public native endcall()I
.end method

.method public native freeRes()I
.end method

.method public native getAndAllocateCaptureDevice(I)I
.end method

.method public native getCallState()I
.end method

.method public native getCallType()I
.end method

.method public native getIncomingCaller()Ljava/lang/String;
.end method

.method public native getPacketLoss()I
.end method

.method public native getRegisterState()I
.end method

.method public native getRemotescreen()Ljava/lang/String;
.end method

.method public native getSDKVersion()Ljava/lang/String;
.end method

.method public native getServerUUID()Ljava/lang/String;
.end method

.method public native getSipMsg()Ljava/lang/String;
.end method

.method public native getVideoRTCPReport()Ljava/lang/String;
.end method

.method public native getVoiceRTCPReport()Ljava/lang/String;
.end method

.method public native initSDKLog(Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method

.method public native initSIPLog(Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method

.method public native initUALog(Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method

.method public native openLocalVideo()I
.end method

.method public native openRemoteVideo()I
.end method

.method public native pressDtmf(I)I
.end method

.method public native registeracc()I
.end method

.method public native reject()I
.end method

.method public native releaseCaptureDevice(I)I
.end method

.method public native setCustom(Ljava/lang/String;)I
.end method

.method public native setIPAddr(Ljava/lang/String;)I
.end method

.method public native setLSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setMirrorXY(ZZ)V
.end method

.method public native setPacketLoss(II)I
.end method

.method public native setRTLogFlag(Z)I
.end method

.method public native setRotateCapturedFrames(I)I
.end method

.method public native setSBCInfo(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public native setSIPMsgOutput(ZZ)V
.end method

.method public native setSIPRegisterExpires(II)I
.end method

.method public native setScreenResolution(II)V
.end method

.method public native setUserInfo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setcameraindex(I)V
.end method

.method public native setlocalview(Ljava/lang/Object;)V
.end method

.method public native setremoteview(Ljava/lang/Object;)V
.end method

.method public native startLocalCamera()I
.end method

.method public native startMediaVideoFromUI()I
.end method

.method public native startRenderLocal()I
.end method

.method public native startRenderRemote()I
.end method

.method public native startnetworkdetection(Ljava/lang/String;I)I
.end method

.method public native stopLocalCamera()I
.end method

.method public native stopRenderLocal()I
.end method

.method public native stopRenderRemote()I
.end method

.method public native stopnetworkdetection()I
.end method

.method public native switchRenderWindows(I)I
.end method

.method public native unregister()I
.end method

.method public native videocall(Ljava/lang/String;IIIIIII)I
.end method

.method public native voicecall(Ljava/lang/String;)I
.end method
