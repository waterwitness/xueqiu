.class Lorg/webrtc/videoengine/VideoCaptureAndroid$4;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotation(I)V
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field private final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;->val$rotation:I

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;->val$rotation:I

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotationOnCameraThread(I)V
    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$5(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V

    .line 336
    return-void
.end method
