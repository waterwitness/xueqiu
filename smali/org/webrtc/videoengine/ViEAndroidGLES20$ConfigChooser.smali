.class Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 124
    sput v3, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 126
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 127
    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 128
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 129
    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    .line 130
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 131
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 125
    sput-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    .line 132
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    .line 113
    iput p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    .line 114
    iput p2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    .line 115
    iput p3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    .line 116
    iput p4, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    .line 117
    iput p5, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    .line 118
    iput p6, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    .line 119
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 191
    :cond_0
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 206
    new-array v2, v10, [I

    fill-array-data v2, :array_0

    .line 241
    new-array v3, v10, [Ljava/lang/String;

    .line 242
    const-string v0, "EGL_BUFFER_SIZE"

    aput-object v0, v3, v1

    .line 243
    const-string v0, "EGL_ALPHA_SIZE"

    aput-object v0, v3, v9

    .line 244
    const-string v0, "EGL_BLUE_SIZE"

    aput-object v0, v3, v11

    const/4 v0, 0x3

    .line 245
    const-string v4, "EGL_GREEN_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    .line 246
    const-string v4, "EGL_RED_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    .line 247
    const-string v4, "EGL_DEPTH_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    .line 248
    const-string v4, "EGL_STENCIL_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    .line 249
    const-string v4, "EGL_CONFIG_CAVEAT"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    .line 250
    const-string v4, "EGL_CONFIG_ID"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    .line 251
    const-string v4, "EGL_LEVEL"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    .line 252
    const-string v4, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    .line 253
    const-string v4, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    .line 254
    const-string v4, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    .line 255
    const-string v4, "EGL_NATIVE_RENDERABLE"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    .line 256
    const-string v4, "EGL_NATIVE_VISUAL_ID"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    .line 257
    const-string v4, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    .line 258
    const-string v4, "EGL_PRESERVED_RESOURCES"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    .line 259
    const-string v4, "EGL_SAMPLES"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    .line 260
    const-string v4, "EGL_SAMPLE_BUFFERS"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    .line 261
    const-string v4, "EGL_SURFACE_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    .line 262
    const-string v4, "EGL_TRANSPARENT_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    .line 263
    const-string v4, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    .line 264
    const-string v4, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    .line 265
    const-string v4, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    .line 266
    const-string v4, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    .line 267
    const-string v4, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    .line 268
    const-string v4, "EGL_MIN_SWAP_INTERVAL"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    .line 269
    const-string v4, "EGL_MAX_SWAP_INTERVAL"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    .line 270
    const-string v4, "EGL_LUMINANCE_SIZE"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    .line 271
    const-string v4, "EGL_ALPHA_MASK_SIZE"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    .line 272
    const-string v4, "EGL_COLOR_BUFFER_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    .line 273
    const-string v4, "EGL_RENDERABLE_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x20

    .line 274
    const-string v4, "EGL_CONFORMANT"

    aput-object v4, v3, v0

    .line 276
    new-array v4, v9, [I

    move v0, v1

    .line 277
    :goto_0
    if-lt v0, v10, :cond_0

    .line 287
    return-void

    .line 278
    :cond_0
    aget v5, v2, v0

    .line 279
    aget-object v6, v3, v0

    .line 280
    invoke-interface {p1, p2, p3, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    # getter for: Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$0()Ljava/lang/String;

    move-result-object v5

    const-string v7, "  %s: %d\n"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aget v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pingan/a/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    const/16 v6, 0x3000

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 206
    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 196
    array-length v2, p3

    .line 197
    # getter for: Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v3, "%d configurations"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pingan/a/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 198
    :goto_0
    if-lt v0, v2, :cond_0

    .line 202
    return-void

    .line 199
    :cond_0
    # getter for: Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Configuration %d:\n"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pingan/a/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    aget-object v3, p3, v0

    invoke-direct {p0, p1, p2, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 137
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 138
    sget-object v2, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 140
    aget v4, v5, v4

    .line 142
    if-gtz v4, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 148
    sget-object v2, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 154
    invoke-virtual {p0, p1, p2, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 159
    array-length v7, p3

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_1

    .line 182
    const/4 v3, 0x0

    :cond_0
    return-object v3

    .line 159
    :cond_1
    aget-object v3, p3, v6

    .line 161
    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 160
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 163
    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 162
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 166
    iget v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    if-lt v8, v1, :cond_2

    iget v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    if-lt v0, v1, :cond_2

    .line 171
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 170
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 173
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 172
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 175
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 174
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 177
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 176
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 179
    iget v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    if-ne v8, v1, :cond_2

    iget v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    if-ne v9, v1, :cond_2

    iget v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    if-ne v10, v1, :cond_2

    iget v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    if-eq v0, v1, :cond_0

    .line 159
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method
