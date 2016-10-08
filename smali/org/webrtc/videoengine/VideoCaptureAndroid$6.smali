.class Lorg/webrtc/videoengine/VideoCaptureAndroid$6;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field private final synthetic val$result:Ljava/util/concurrent/Exchanger;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;->val$result:Ljava/util/concurrent/Exchanger;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;->val$result:Ljava/util/concurrent/Exchanger;

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    invoke-static {v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$6(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    .line 394
    return-void
.end method
