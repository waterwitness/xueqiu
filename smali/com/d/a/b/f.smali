.class public Lcom/d/a/b/f;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile e:Lcom/d/a/b/f;


# instance fields
.field public b:Lcom/d/a/b/h;

.field private c:Lcom/d/a/b/l;

.field private final d:Lcom/d/a/b/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/d/a/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/d/a/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/d/a/b/f/d;

    invoke-direct {v0}, Lcom/d/a/b/f/d;-><init>()V

    iput-object v0, p0, Lcom/d/a/b/f;->d:Lcom/d/a/b/f/a;

    .line 81
    return-void
.end method

.method private static a(Lcom/d/a/b/d;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 735
    .line 6190
    iget-object v0, p0, Lcom/d/a/b/d;->r:Landroid/os/Handler;

    .line 6194
    iget-boolean v1, p0, Lcom/d/a/b/d;->s:Z

    .line 736
    if-eqz v1, :cond_1

    .line 737
    const/4 v0, 0x0

    .line 741
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 739
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/d/a/b/f;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/d/a/b/f;->e:Lcom/d/a/b/f;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/d/a/b/f;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/d/a/b/f;->e:Lcom/d/a/b/f;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/d/a/b/f;

    invoke-direct {v0}, Lcom/d/a/b/f;-><init>()V

    sput-object v0, Lcom/d/a/b/f;->e:Lcom/d/a/b/f;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/d/a/b/f;->e:Lcom/d/a/b/f;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/d/a/b/f;->c()V

    .line 212
    if-nez p4, :cond_f

    .line 213
    iget-object v6, p0, Lcom/d/a/b/f;->d:Lcom/d/a/b/f/a;

    .line 215
    :goto_0
    if-nez p3, :cond_e

    .line 216
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v5, v0, Lcom/d/a/b/h;->r:Lcom/d/a/b/d;

    .line 219
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    invoke-virtual {v0, p2}, Lcom/d/a/b/l;->b(Lcom/d/a/b/e/a;)V

    .line 221
    invoke-interface {p2}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/d/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 1114
    iget-object v0, v5, Lcom/d/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, v5, Lcom/d/a/b/d;->b:I

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 222
    :cond_1
    if-eqz v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->a:Landroid/content/res/Resources;

    .line 1138
    iget v1, v5, Lcom/d/a/b/d;->b:I

    if-eqz v1, :cond_2

    iget v1, v5, Lcom/d/a/b/d;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    :goto_2
    invoke-interface {p2, v0}, Lcom/d/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 227
    :goto_3
    invoke-interface {p2}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v9}, Lcom/d/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 272
    :goto_4
    return-void

    .line 1138
    :cond_2
    iget-object v0, v5, Lcom/d/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 225
    :cond_3
    invoke-interface {p2, v9}, Lcom/d/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    invoke-virtual {v0}, Lcom/d/a/b/h;->a()Lcom/d/a/b/a/f;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/d/a/c/a;->a(Lcom/d/a/b/e/a;Lcom/d/a/b/a/f;)Lcom/d/a/b/a/f;

    move-result-object v3

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2048
    iget v4, v3, Lcom/d/a/b/a/f;->a:I

    .line 2047
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2052
    iget v4, v3, Lcom/d/a/b/a/f;->b:I

    .line 2047
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    .line 2118
    iget-object v0, v0, Lcom/d/a/b/l;->e:Ljava/util/Map;

    invoke-interface {p2}, Lcom/d/a/b/e/a;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-interface {p2}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/d/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    invoke-interface {v0, v4}, Lcom/d/a/a/b/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Bitmap;

    .line 238
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 239
    const-string v0, "Load image from memory cache [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v5}, Lcom/d/a/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    new-instance v0, Lcom/d/a/b/m;

    iget-object v1, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    invoke-virtual {v1, p1}, Lcom/d/a/b/l;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/d/a/b/m;-><init>(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/a/f;Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 244
    new-instance v1, Lcom/d/a/b/p;

    iget-object v2, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    invoke-static {v5}, Lcom/d/a/b/f;->a(Lcom/d/a/b/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v8, v0, v3}, Lcom/d/a/b/p;-><init>(Lcom/d/a/b/l;Landroid/graphics/Bitmap;Lcom/d/a/b/m;Landroid/os/Handler;)V

    .line 2194
    iget-boolean v0, v5, Lcom/d/a/b/d;->s:Z

    .line 246
    if-eqz v0, :cond_5

    .line 247
    invoke-virtual {v1}, Lcom/d/a/b/p;->run()V

    goto/16 :goto_4

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    .line 3086
    invoke-virtual {v0}, Lcom/d/a/b/l;->a()V

    .line 3087
    iget-object v0, v0, Lcom/d/a/b/l;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 3186
    :cond_6
    iget-object v0, v5, Lcom/d/a/b/d;->q:Lcom/d/a/b/c/a;

    .line 252
    sget-object v1, Lcom/d/a/b/a/g;->c:Lcom/d/a/b/a/g;

    invoke-interface {v0, v8, p2, v1}, Lcom/d/a/b/c/a;->display(Landroid/graphics/Bitmap;Lcom/d/a/b/e/a;Lcom/d/a/b/a/g;)V

    .line 253
    invoke-interface {p2}, Lcom/d/a/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v8}, Lcom/d/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 4110
    :cond_7
    iget-object v0, v5, Lcom/d/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    iget v0, v5, Lcom/d/a/b/d;->a:I

    if-eqz v0, :cond_a

    :cond_8
    move v0, v2

    .line 256
    :goto_5
    if-eqz v0, :cond_c

    .line 257
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->a:Landroid/content/res/Resources;

    .line 4134
    iget v1, v5, Lcom/d/a/b/d;->a:I

    if-eqz v1, :cond_b

    iget v1, v5, Lcom/d/a/b/d;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    :goto_6
    invoke-interface {p2, v0}, Lcom/d/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 262
    :cond_9
    :goto_7
    new-instance v0, Lcom/d/a/b/m;

    iget-object v1, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    invoke-virtual {v1, p1}, Lcom/d/a/b/l;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/d/a/b/m;-><init>(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/a/f;Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 264
    new-instance v1, Lcom/d/a/b/n;

    iget-object v2, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    invoke-static {v5}, Lcom/d/a/b/f;->a(Lcom/d/a/b/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/d/a/b/n;-><init>(Lcom/d/a/b/l;Lcom/d/a/b/m;Landroid/os/Handler;)V

    .line 4194
    iget-boolean v0, v5, Lcom/d/a/b/d;->s:Z

    .line 266
    if-eqz v0, :cond_d

    .line 267
    invoke-virtual {v1}, Lcom/d/a/b/n;->run()V

    goto/16 :goto_4

    :cond_a
    move v0, v1

    .line 4110
    goto :goto_5

    .line 4134
    :cond_b
    iget-object v0, v5, Lcom/d/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 4146
    :cond_c
    iget-boolean v0, v5, Lcom/d/a/b/d;->g:Z

    .line 258
    if-eqz v0, :cond_9

    .line 259
    invoke-interface {p2, v9}, Lcom/d/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_7

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    .line 5069
    iget-object v2, v0, Lcom/d/a/b/l;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/d/a/b/l$1;

    invoke-direct {v3, v0, v1}, Lcom/d/a/b/l$1;-><init>(Lcom/d/a/b/l;Lcom/d/a/b/n;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_e
    move-object v5, p3

    goto/16 :goto_1

    :cond_f
    move-object v6, p4

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/d/a/b/f;->c()V

    .line 475
    if-nez p2, :cond_0

    .line 476
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    invoke-virtual {v0}, Lcom/d/a/b/h;->a()Lcom/d/a/b/a/f;

    move-result-object p2

    .line 478
    :cond_0
    if-nez p3, :cond_1

    .line 479
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object p3, v0, Lcom/d/a/b/h;->r:Lcom/d/a/b/d;

    .line 482
    :cond_1
    new-instance v0, Lcom/d/a/b/e/c;

    sget v1, Lcom/d/a/b/a/i;->b:I

    invoke-direct {v0, p1, p2, v1}, Lcom/d/a/b/e/c;-><init>(Ljava/lang/String;Lcom/d/a/b/a/f;I)V

    .line 483
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 484
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 551
    if-nez p3, :cond_0

    .line 552
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object p3, v0, Lcom/d/a/b/h;->r:Lcom/d/a/b/d;

    .line 554
    :cond_0
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    invoke-virtual {v0, p3}, Lcom/d/a/b/e;->a(Lcom/d/a/b/d;)Lcom/d/a/b/e;

    move-result-object v0

    .line 5450
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/d/a/b/e;->s:Z

    .line 554
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 556
    new-instance v1, Lcom/d/a/b/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/d/a/b/g;-><init>(B)V

    .line 557
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 5760
    iget-object v0, v1, Lcom/d/a/b/g;->a:Landroid/graphics/Bitmap;

    .line 558
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/d/a/b/h;)V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/d/a/b/l;

    invoke-direct {v0, p1}, Lcom/d/a/b/l;-><init>(Lcom/d/a/b/h;)V

    iput-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    .line 98
    iput-object p1, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    new-instance v0, Lcom/d/a/b/e/b;

    invoke-direct {v0, p2}, Lcom/d/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 287
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/d/a/b/e/b;

    invoke-direct {v0, p2}, Lcom/d/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 304
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V
    .locals 1

    .prologue
    .line 340
    .line 5365
    new-instance v0, Lcom/d/a/b/e/b;

    invoke-direct {v0, p2}, Lcom/d/a/b/e/b;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 341
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/d/a/b/f;->b(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 445
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/d/a/b/f;->b(Ljava/lang/String;Lcom/d/a/b/a/f;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 420
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    return-void
.end method

.method public final d()Lcom/d/a/a/a/b;
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/d/a/b/f;->c()V

    .line 610
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/d/a/b/f;->c()V

    .line 631
    iget-object v0, p0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    invoke-interface {v0}, Lcom/d/a/a/a/b;->a()V

    .line 632
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    .line 6159
    iget-object v0, v0, Lcom/d/a/b/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 703
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/d/a/b/f;->c:Lcom/d/a/b/l;

    .line 6164
    iget-object v1, v0, Lcom/d/a/b/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6165
    iget-object v1, v0, Lcom/d/a/b/l;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 6166
    :try_start_0
    iget-object v0, v0, Lcom/d/a/b/l;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6167
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
