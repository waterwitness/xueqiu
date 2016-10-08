.class Lorg/webrtc/videoengine/VideoCaptureAndroid$3;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCapture()Z
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    # getter for: Lorg/webrtc/videoengine/VideoCaptureAndroid;->result:Ljava/util/concurrent/Exchanger;
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$3()Ljava/util/concurrent/Exchanger;

    move-result-object v1

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$4(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    .line 273
    return-void
.end method
