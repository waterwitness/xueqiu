.class Lcom/letpower/engine/BluetoothScoReceiver$1;
.super Landroid/os/CountDownTimer;
.source "BluetoothScoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letpower/engine/BluetoothScoReceiver;->getTimer()Landroid/os/CountDownTimer;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letpower/engine/BluetoothScoReceiver;


# direct methods
.method constructor <init>(Lcom/letpower/engine/BluetoothScoReceiver;JJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/letpower/engine/BluetoothScoReceiver$1;->this$0:Lcom/letpower/engine/BluetoothScoReceiver;

    .line 96
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver$1;->this$0:Lcom/letpower/engine/BluetoothScoReceiver;

    invoke-static {v0, v1}, Lcom/letpower/engine/BluetoothScoReceiver;->access$0(Lcom/letpower/engine/BluetoothScoReceiver;Z)V

    .line 108
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver$1;->this$0:Lcom/letpower/engine/BluetoothScoReceiver;

    # getter for: Lcom/letpower/engine/BluetoothScoReceiver;->mUpdatedState:I
    invoke-static {v0}, Lcom/letpower/engine/BluetoothScoReceiver;->access$1(Lcom/letpower/engine/BluetoothScoReceiver;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver$1;->this$0:Lcom/letpower/engine/BluetoothScoReceiver;

    # getter for: Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/letpower/engine/BluetoothScoReceiver;->access$2(Lcom/letpower/engine/BluetoothScoReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver$1;->this$0:Lcom/letpower/engine/BluetoothScoReceiver;

    # getter for: Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/letpower/engine/BluetoothScoReceiver;->access$2(Lcom/letpower/engine/BluetoothScoReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 114
    iget-object v0, p0, Lcom/letpower/engine/BluetoothScoReceiver$1;->this$0:Lcom/letpower/engine/BluetoothScoReceiver;

    # getter for: Lcom/letpower/engine/BluetoothScoReceiver;->_audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/letpower/engine/BluetoothScoReceiver;->access$2(Lcom/letpower/engine/BluetoothScoReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 117
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
