.class public Lcom/letpower/engine/HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPlugReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPlugReceiver"

.field private static isHeadsetConnected:Z

.field private static mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private prevLoudSpeakerOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letpower/engine/HeadsetPlugReceiver;->isHeadsetConnected:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/letpower/engine/HeadsetPlugReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->prevLoudSpeakerOn:Z

    .line 11
    return-void
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 59
    const-string v0, "HeadsetPlugReceiver"

    const-string v1, "Could not change audio routing - no audio manager"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, -0x1

    .line 96
    :goto_0
    return v0

    .line 63
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    const/4 v2, 0x3

    if-eq v2, v1, :cond_1

    const/4 v2, 0x4

    if-ne v2, v1, :cond_3

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 76
    :cond_3
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "Samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 77
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    :cond_4
    const/4 v2, 0x5

    if-eq v2, v1, :cond_5

    const/4 v2, 0x6

    if-eq v2, v1, :cond_5

    .line 79
    const/4 v2, 0x7

    if-ne v2, v1, :cond_6

    .line 81
    :cond_5
    if-eqz p1, :cond_7

    .line 83
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 87
    :cond_7
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 88
    iget-object v1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method public static getIsHeadsetConnected()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/letpower/engine/HeadsetPlugReceiver;->isHeadsetConnected:Z

    return v0
.end method

.method private outputAVCallStatus(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 105
    const-string v0, "PASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeadsetPlugReceiver-outputAVCallStatus mAvCallStatusListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/letpower/engine/HeadsetPlugReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

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

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/letpower/engine/LDEngineDemo;->getIAVCallStatusListener()Lcom/pingan/main/IAVCallStatusListener;

    move-result-object v0

    .line 107
    sput-object v0, Lcom/letpower/engine/HeadsetPlugReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "PASDK"

    const-string v1, "HeadsetPlugReceiver-outputAVCallStatus mAvCallStatusListener  in"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/letpower/engine/HeadsetPlugReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/pingan/main/IAVCallStatusListener;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public SetPrevLoudSpeakerStatus(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->prevLoudSpeakerOn:Z

    .line 102
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Lcom/letpower/engine/HeadsetPlugReceiver;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 31
    const-string v0, "HeadsetPlugReceiver"

    const-string v1, "\u62d4\u51fa\u8033\u673a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sput-boolean v2, Lcom/letpower/engine/HeadsetPlugReceiver;->isHeadsetConnected:Z

    .line 33
    iget-object v0, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, v3}, Lcom/letpower/engine/HeadsetPlugReceiver;->SetPlayoutSpeaker(Z)I

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 40
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/letpower/engine/HeadsetPlugReceiver;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 41
    const-string v0, "HeadsetPlugReceiver"

    const-string v1, "\u63d2\u5165\u8033\u673a"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sput-boolean v3, Lcom/letpower/engine/HeadsetPlugReceiver;->isHeadsetConnected:Z

    .line 43
    iget-object v0, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, v2}, Lcom/letpower/engine/HeadsetPlugReceiver;->SetPlayoutSpeaker(Z)I

    goto :goto_0
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/letpower/engine/HeadsetPlugReceiver;->_audioManager:Landroid/media/AudioManager;

    .line 55
    return-void
.end method
