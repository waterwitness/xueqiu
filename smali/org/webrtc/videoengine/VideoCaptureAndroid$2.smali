.class Lorg/webrtc/videoengine/VideoCaptureAndroid$2;
.super Ljava/util/TimerTask;
.source "VideoCaptureAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 179
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    # getter for: Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$2(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    # getter for: Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$2(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$2$1;

    invoke-direct {v1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$2$1;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid$2;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method
