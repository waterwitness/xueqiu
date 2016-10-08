.class final Lpl/droidsonroids/gif/e;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final a:Lpl/droidsonroids/gif/a;

.field b:[J

.field private c:Lpl/droidsonroids/gif/GifInfoHandle;

.field private d:Ljava/io/IOException;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1

    .prologue
    .line 172
    const-string v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lpl/droidsonroids/gif/a;

    invoke-direct {v0}, Lpl/droidsonroids/gif/a;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/e;->a:Lpl/droidsonroids/gif/a;

    .line 166
    sget-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->e:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/e;->e:Ljava/lang/ref/WeakReference;

    .line 174
    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic b(Lpl/droidsonroids/gif/e;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->d:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method final a(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 2
    .param p1    # Lpl/droidsonroids/gif/GifTextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->a:Lpl/droidsonroids/gif/a;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/a;->b()V

    .line 255
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/e;)V

    .line 256
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()V

    .line 257
    invoke-virtual {p0}, Lpl/droidsonroids/gif/e;->interrupt()V

    .line 258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lpl/droidsonroids/gif/e;->interrupted()Z

    .line 263
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/e;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 270
    :cond_1
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 232
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->a:Lpl/droidsonroids/gif/a;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/a;->a()V

    .line 235
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->a:Lpl/droidsonroids/gif/a;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/a;->b()V

    .line 245
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()V

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 180
    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/i;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/i;->a()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 190
    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iput-object v0, p0, Lpl/droidsonroids/gif/e;->d:Ljava/io/IOException;

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {v0, p0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/e;)V

    .line 196
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isAvailable()Z

    move-result v1

    .line 197
    iget-object v2, p0, Lpl/droidsonroids/gif/e;->a:Lpl/droidsonroids/gif/a;

    invoke-virtual {v2, v1}, Lpl/droidsonroids/gif/a;->a(Z)V

    .line 198
    if-eqz v1, :cond_2

    .line 199
    new-instance v1, Lpl/droidsonroids/gif/e$1;

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/e$1;-><init>(Lpl/droidsonroids/gif/e;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_2
    iget-object v1, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->b(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->a(F)V

    .line 208
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/e;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 210
    :try_start_1
    iget-object v1, p0, Lpl/droidsonroids/gif/e;->a:Lpl/droidsonroids/gif/a;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/a;->c()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_3

    .line 218
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 220
    :try_start_2
    iget-object v1, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Lpl/droidsonroids/gif/e;->b:[J

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v4

    .line 1133
    iget-wide v6, v1, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v6, v7, v2, v3, v4}, Lpl/droidsonroids/gif/GifInfoHandle;->bindSurface(JLandroid/view/Surface;[JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    throw v0

    .line 212
    :catch_1
    move-exception v0

    .line 225
    :cond_4
    iget-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    .line 226
    sget-object v0, Lpl/droidsonroids/gif/GifInfoHandle;->e:Lpl/droidsonroids/gif/GifInfoHandle;

    iput-object v0, p0, Lpl/droidsonroids/gif/e;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    goto :goto_0
.end method
