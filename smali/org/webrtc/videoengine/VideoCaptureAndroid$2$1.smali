.class Lorg/webrtc/videoengine/VideoCaptureAndroid$2$1;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/videoengine/VideoCaptureAndroid$2;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/videoengine/VideoCaptureAndroid$2;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2$1;->this$1:Lorg/webrtc/videoengine/VideoCaptureAndroid$2;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53ea\u6709\u52a0\u4e0a\u4e86\u8fd9\u4e00\u53e5\uff0c\u624d\u4f1a\u81ea\u52a8\u5bf9\u7126\u3002start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53ea\u6709\u52a0\u4e0a\u4e86\u8fd9\u4e00\u53e5\uff0c\u624d\u4f1a\u81ea\u52a8\u5bf9\u7126\u3002end"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method
