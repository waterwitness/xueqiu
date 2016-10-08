.class Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
.super Ljava/lang/Thread;
.source "VideoCaptureAndroid.java"


# instance fields
.field private handlerExchanger:Ljava/util/concurrent/Exchanger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method public constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 110
    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$0(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 118
    return-void
.end method
