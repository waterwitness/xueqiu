.class public Lcom/letpower/engine/BluetoothScoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScoReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC_BLUETOOTH"


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private mChangedState:I

.field private mUpdatedPrevState:I

.field private mUpdatedState:I

.field private prevLoudSpeakerOn:Z

.field private restart_:Z

.field timer1:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object v2, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->prevLoudSpeakerOn:Z

    .line 16
    iput v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mChangedState:I

    .line 17
    iput v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    .line 18
    iput v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedPrevState:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    .line 20
    iput-object v2, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    .line 11
    return-void
.end method

.method private SetPlayoutBluetooth(Z)I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "WEBRTC_BLUETOOTH"

    const-string v1, "Could not change audio routing - no audio manager"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, -0x1

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/letpower/engine/BluetoothScoReceiver;Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    return-void
.end method

.method static synthetic access$1(Lcom/letpower/engine/BluetoothScoReceiver;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    return v0
.end method

.method static synthetic access$2(Lcom/letpower/engine/BluetoothScoReceiver;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public SetPrevLoudSpeakerStatus(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->prevLoudSpeakerOn:Z

    .line 138
    return-void
.end method

.method public getTimer()Landroid/os/CountDownTimer;
    .locals 6

    .prologue
    .line 96
    new-instance v0, Lcom/letpower/engine/BluetoothScoReceiver$1;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/letpower/engine/BluetoothScoReceiver$1;-><init>(Lcom/letpower/engine/BluetoothScoReceiver;JJ)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/letpower/engine/BluetoothScoReceiver;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    .line 28
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 29
    iput-boolean v2, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    .line 43
    iget v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    if-ne v0, v3, :cond_3

    .line 47
    invoke-direct {p0, v3}, Lcom/letpower/engine/BluetoothScoReceiver;->SetPlayoutBluetooth(Z)I

    .line 48
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 49
    iput-object v6, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    .line 91
    :cond_1
    :goto_1
    return-void

    .line 33
    :cond_2
    iget-boolean v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 36
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 37
    iput-boolean v2, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    goto :goto_0

    .line 51
    :cond_3
    iget v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    if-nez v0, :cond_1

    .line 55
    invoke-direct {p0, v2}, Lcom/letpower/engine/BluetoothScoReceiver;->SetPlayoutBluetooth(Z)I

    .line 56
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->prevLoudSpeakerOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 57
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 58
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/letpower/engine/BluetoothScoReceiver;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    .line 61
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 62
    iput-boolean v2, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    goto :goto_1

    .line 65
    :cond_4
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    .line 67
    const-string v0, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedPrevState:I

    .line 68
    iget v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    if-ne v0, v3, :cond_5

    .line 72
    invoke-direct {p0, v3}, Lcom/letpower/engine/BluetoothScoReceiver;->SetPlayoutBluetooth(Z)I

    .line 73
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 74
    iput-object v6, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    goto :goto_1

    .line 76
    :cond_5
    iget v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I

    if-nez v0, :cond_1

    .line 80
    invoke-direct {p0, v2}, Lcom/letpower/engine/BluetoothScoReceiver;->SetPlayoutBluetooth(Z)I

    .line 81
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->prevLoudSpeakerOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 82
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 83
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/letpower/engine/BluetoothScoReceiver;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    .line 86
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver;->timer1:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 87
    iput-boolean v2, p0, Lcom/letpower/engine/BluetoothScoReceiver;->restart_:Z

    goto/16 :goto_1
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;

    .line 124
    return-void
.end method
