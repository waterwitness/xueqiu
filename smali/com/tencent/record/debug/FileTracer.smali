.class public Lcom/tencent/record/debug/FileTracer;
.super Lcom/tencent/record/debug/Tracer;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/tencent/record/debug/FileTracerConfig;

.field private b:Ljava/io/FileWriter;

.field private c:Ljava/io/File;

.field private d:[C

.field private volatile e:Lcom/tencent/record/debug/SafeStringQueue;

.field private volatile f:Lcom/tencent/record/debug/SafeStringQueue;

.field private volatile g:Lcom/tencent/record/debug/SafeStringQueue;

.field private volatile h:Lcom/tencent/record/debug/SafeStringQueue;

.field private volatile i:Z

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IZLcom/tencent/record/debug/TraceFormat;Lcom/tencent/record/debug/FileTracerConfig;)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/record/debug/Tracer;-><init>(IZLcom/tencent/record/debug/TraceFormat;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/record/debug/FileTracer;->i:Z

    .line 93
    invoke-virtual {p0, p4}, Lcom/tencent/record/debug/FileTracer;->a(Lcom/tencent/record/debug/FileTracerConfig;)V

    .line 95
    new-instance v0, Lcom/tencent/record/debug/SafeStringQueue;

    invoke-direct {v0}, Lcom/tencent/record/debug/SafeStringQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->e:Lcom/tencent/record/debug/SafeStringQueue;

    .line 96
    new-instance v0, Lcom/tencent/record/debug/SafeStringQueue;

    invoke-direct {v0}, Lcom/tencent/record/debug/SafeStringQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->f:Lcom/tencent/record/debug/SafeStringQueue;

    .line 98
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->e:Lcom/tencent/record/debug/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->g:Lcom/tencent/record/debug/SafeStringQueue;

    .line 99
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->f:Lcom/tencent/record/debug/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    .line 101
    invoke-virtual {p4}, Lcom/tencent/record/debug/FileTracerConfig;->f()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->d:[C

    .line 103
    invoke-virtual {p4}, Lcom/tencent/record/debug/FileTracerConfig;->b()V

    .line 105
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->h()Ljava/io/Writer;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/tencent/record/debug/FileTracerConfig;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/record/debug/FileTracerConfig;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->k:Landroid/os/Handler;

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->f()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/tencent/record/debug/FileTracerConfig;)V
    .locals 3

    .prologue
    .line 73
    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/record/debug/TraceFormat;->a:Lcom/tencent/record/debug/TraceFormat;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/record/debug/FileTracer;-><init>(IZLcom/tencent/record/debug/TraceFormat;Lcom/tencent/record/debug/FileTracerConfig;)V

    .line 74
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->k:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/tencent/record/debug/FileTracer;->c()Lcom/tencent/record/debug/FileTracerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/record/debug/FileTracerConfig;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/record/debug/FileTracer;->i:Z

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/record/debug/FileTracer;->i:Z

    .line 212
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->j()V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->h()Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/record/debug/FileTracer;->d:[C

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/SafeStringQueue;->a(Ljava/io/Writer;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    invoke-virtual {v0}, Lcom/tencent/record/debug/SafeStringQueue;->b()V

    .line 229
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/record/debug/FileTracer;->i:Z

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    invoke-virtual {v0}, Lcom/tencent/record/debug/SafeStringQueue;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    invoke-virtual {v1}, Lcom/tencent/record/debug/SafeStringQueue;->b()V

    throw v0
.end method

.method private h()Ljava/io/Writer;
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/tencent/record/debug/FileTracer;->c()Lcom/tencent/record/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/FileTracerConfig;->a()Ljava/io/File;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/record/debug/FileTracer;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->c:Ljava/io/File;

    .line 247
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->i()V

    .line 251
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/tencent/record/debug/FileTracer;->c:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->b:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->b:Ljava/io/FileWriter;

    :goto_0
    return-object v0

    .line 255
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 276
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 290
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->g:Lcom/tencent/record/debug/SafeStringQueue;

    iget-object v1, p0, Lcom/tencent/record/debug/FileTracer;->e:Lcom/tencent/record/debug/SafeStringQueue;

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->f:Lcom/tencent/record/debug/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->g:Lcom/tencent/record/debug/SafeStringQueue;

    .line 295
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->e:Lcom/tencent/record/debug/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->e:Lcom/tencent/record/debug/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->g:Lcom/tencent/record/debug/SafeStringQueue;

    .line 300
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->f:Lcom/tencent/record/debug/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/record/debug/FileTracer;->h:Lcom/tencent/record/debug/SafeStringQueue;

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 128
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/tencent/record/debug/FileTracer;->e()Lcom/tencent/record/debug/TraceFormat;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/record/debug/TraceFormat;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/tencent/record/debug/FileTracer;->a(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public a(Lcom/tencent/record/debug/FileTracerConfig;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/tencent/record/debug/FileTracer;->a:Lcom/tencent/record/debug/FileTracerConfig;

    .line 324
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->g:Lcom/tencent/record/debug/SafeStringQueue;

    invoke-virtual {v0, p1}, Lcom/tencent/record/debug/SafeStringQueue;->a(Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->g:Lcom/tencent/record/debug/SafeStringQueue;

    invoke-virtual {v0}, Lcom/tencent/record/debug/SafeStringQueue;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/record/debug/FileTracer;->c()Lcom/tencent/record/debug/FileTracerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/record/debug/FileTracerConfig;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/tencent/record/debug/FileTracer;->a()V

    .line 166
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->i()V

    .line 145
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 146
    return-void
.end method

.method public c()Lcom/tencent/record/debug/FileTracerConfig;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/tencent/record/debug/FileTracer;->a:Lcom/tencent/record/debug/FileTracerConfig;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->g()V

    .line 176
    invoke-direct {p0}, Lcom/tencent/record/debug/FileTracer;->f()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
