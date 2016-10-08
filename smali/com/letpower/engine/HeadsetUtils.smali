.class public Lcom/letpower/engine/HeadsetUtils;
.super Ljava/lang/Object;
.source "HeadsetUtils.java"


# static fields
.field public static bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

.field public static headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;


# instance fields
.field private TAG:Ljava/lang/String;

.field private _audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    .line 19
    sput-object v0, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "HeadsetUtils"

    iput-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getBluetoothScoReceiver()Lcom/letpower/engine/BluetoothScoReceiver;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    return-object v0
.end method

.method public getHeadsetPlugReceiver()Lcom/letpower/engine/HeadsetPlugReceiver;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    return-object v0
.end method

.method public registerBluetoothScoReceiver()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-->registerBluetoothScoReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    const-string v1, "LDEngineDemo::registerBluetoothScoReceiver bluetoothAdapter == null"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    const-string v1, "LDEngineDemo::registerBluetoothScoReceiver bluetoothAdapter.isEnabled() == false"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lcom/letpower/engine/BluetoothScoReceiver;

    invoke-direct {v0}, Lcom/letpower/engine/BluetoothScoReceiver;-><init>()V

    sput-object v0, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    .line 91
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    .line 94
    :cond_2
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    iget-object v1, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/BluetoothScoReceiver;->setAudioManager(Landroid/media/AudioManager;)V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    sget-object v2, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0
.end method

.method public registerHeadsetPlugReceiver()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-->registerHeadsetPlugReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/letpower/engine/HeadsetPlugReceiver;

    invoke-direct {v0}, Lcom/letpower/engine/HeadsetPlugReceiver;-><init>()V

    sput-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    .line 47
    :cond_1
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    iget-object v1, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lcom/letpower/engine/HeadsetPlugReceiver;->setAudioManager(Landroid/media/AudioManager;)V

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    sget-object v2, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public unregisterBluetoothScoReceiver()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-->unregisterBluetoothScoReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 117
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    sget-object v1, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/letpower/engine/HeadsetUtils;->bluetoothScoReceiver_:Lcom/letpower/engine/BluetoothScoReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterHeadsetPlugReceiver()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/letpower/engine/HeadsetUtils;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-->unregisterHeadsetPlugReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 64
    iget-object v0, p0, Lcom/letpower/engine/HeadsetUtils;->context:Landroid/content/Context;

    sget-object v1, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/letpower/engine/HeadsetUtils;->headsetPlugReceiver_:Lcom/letpower/engine/HeadsetPlugReceiver;

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
