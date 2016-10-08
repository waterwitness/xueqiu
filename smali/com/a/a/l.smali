.class final Lcom/a/a/l;
.super Landroid/os/AsyncTask;
.source "RenderingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/a/a/c/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/vudroid/a/a;

.field private c:Lcom/a/a/i;


# direct methods
.method public constructor <init>(Lcom/a/a/i;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/a/a/l;->c:Lcom/a/a/i;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/l;->a:Ljava/util/List;

    .line 44
    return-void
.end method

.method private a(Lcom/a/a/m;)Lcom/a/a/c/a;
    .locals 7

    .prologue
    .line 101
    iget-object v0, p0, Lcom/a/a/l;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->getDecodeService()Lorg/vudroid/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/l;->b:Lorg/vudroid/a/a;

    .line 102
    iget-object v0, p0, Lcom/a/a/l;->b:Lorg/vudroid/a/a;

    iget v1, p1, Lcom/a/a/m;->d:I

    invoke-interface {v0, v1}, Lorg/vudroid/a/a;->a(I)Lorg/vudroid/a/a/c;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/a/a/l;->b:Lorg/vudroid/a/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    iget v2, p1, Lcom/a/a/m;->a:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Lcom/a/a/m;->b:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p1, Lcom/a/a/m;->c:Landroid/graphics/RectF;

    invoke-interface {v0, v2, v3, v4}, Lorg/vudroid/a/a/c;->a(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    new-instance v0, Lcom/a/a/c/a;

    iget v1, p1, Lcom/a/a/m;->e:I

    iget v2, p1, Lcom/a/a/m;->d:I

    iget-object v4, p1, Lcom/a/a/m;->c:Landroid/graphics/RectF;

    iget-boolean v5, p1, Lcom/a/a/m;->f:Z

    iget v6, p1, Lcom/a/a/m;->g:I

    invoke-direct/range {v0 .. v6}, Lcom/a/a/c/a;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/a/a/l;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 93
    monitor-exit v1

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IIFFLandroid/graphics/RectF;ZI)V
    .locals 9

    .prologue
    .line 47
    new-instance v0, Lcom/a/a/m;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p1

    move v6, p2

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/a/a/m;-><init>(Lcom/a/a/l;FFLandroid/graphics/RectF;IIZI)V

    .line 48
    iget-object v1, p0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    iget-object v1, p0, Lcom/a/a/l;->a:Ljava/util/List;

    monitor-enter v1

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1126
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    .line 9058
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/l;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9061
    :goto_0
    iget-object v0, p0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9062
    iget-object v0, p0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/m;

    .line 9063
    invoke-direct {p0, v0}, Lcom/a/a/l;->a(Lcom/a/a/m;)Lcom/a/a/c/a;

    move-result-object v1

    .line 9064
    if-eqz v1, :cond_3

    .line 9067
    iget-object v2, p0, Lcom/a/a/l;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9068
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/a/a/c/a;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/a/a/l;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 10063
    :cond_1
    iget-object v0, v1, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 9070
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 9075
    :cond_2
    invoke-direct {p0}, Lcom/a/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/a/a/l;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9076
    :cond_3
    return-object v4
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    check-cast p1, [Lcom/a/a/c/a;

    .line 2086
    iget-object v1, p0, Lcom/a/a/l;->c:Lcom/a/a/i;

    aget-object v2, p1, v5

    .line 3079
    iget-boolean v0, v2, Lcom/a/a/c/a;->d:Z

    .line 2737
    if-eqz v0, :cond_1

    .line 2738
    iget-object v3, v1, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 4075
    iget-object v0, v3, Lcom/a/a/e;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_0

    .line 4076
    iget-object v0, v3, Lcom/a/a/e;->c:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 5063
    iget-object v0, v0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 4076
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4080
    :cond_0
    iget-object v0, v3, Lcom/a/a/e;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2742
    :goto_0
    invoke-virtual {v1}, Lcom/a/a/i;->invalidate()V

    .line 33
    return-void

    .line 2740
    :cond_1
    iget-object v3, v1, Lcom/a/a/i;->a:Lcom/a/a/e;

    .line 6061
    :goto_1
    iget-object v0, v3, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget-object v4, v3, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Lcom/a/a/d/c;->a:I

    if-lt v0, v4, :cond_2

    iget-object v0, v3, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    .line 6062
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6063
    iget-object v0, v3, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 7063
    iget-object v0, v0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 6063
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 6066
    :cond_2
    :goto_2
    iget-object v0, v3, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget-object v4, v3, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Lcom/a/a/d/c;->a:I

    if-lt v0, v4, :cond_3

    iget-object v0, v3, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    .line 6067
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6068
    iget-object v0, v3, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 8063
    iget-object v0, v0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 6068
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 6050
    :cond_3
    iget-object v0, v3, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
