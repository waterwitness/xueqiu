.class Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x3098

    sput v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 89
    # getter for: Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creating OpenGL ES 2.0 context"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "Before eglCreateContext"

    # invokes: Lorg/webrtc/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$1(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 93
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 92
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 94
    const-string v1, "After eglCreateContext"

    # invokes: Lorg/webrtc/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    invoke-static {v1, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$1(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 95
    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 99
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 100
    return-void
.end method
