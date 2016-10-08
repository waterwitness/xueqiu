.class Lorg/webrtc/videoengine/VideoCaptureAndroid$1;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCapture(IIII)Z
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field private final synthetic val$height:I

.field private final synthetic val$max_mfps:I

.field private final synthetic val$min_mfps:I

.field private final synthetic val$result:Ljava/util/concurrent/Exchanger;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$width:I

    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$height:I

    iput p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$min_mfps:I

    iput p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$max_mfps:I

    iput-object p6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$result:Ljava/util/concurrent/Exchanger;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 156
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startCaptureOnCameraThread\u7ebf\u7a0b\u7684\u540d\u5b57==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$width:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$height:I

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$min_mfps:I

    iget v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$max_mfps:I

    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->val$result:Ljava/util/concurrent/Exchanger;

    # invokes: Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V
    invoke-static/range {v0 .. v5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$1(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V

    .line 158
    return-void
.end method
