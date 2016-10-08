.class public final Lrx/d/c/f;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/j;


# static fields
.field static d:I

.field public static final e:I

.field private static final f:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lrx/d/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static i:Lrx/d/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public volatile c:Ljava/lang/Object;

.field private final g:Lrx/d/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 144
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    sput-object v0, Lrx/d/c/f;->f:Lrx/d/a/a;

    .line 260
    const/16 v0, 0x80

    sput v0, Lrx/d/c/f;->d:I

    .line 263
    invoke-static {}, Lrx/d/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/16 v0, 0x10

    sput v0, Lrx/d/c/f;->d:I

    .line 268
    :cond_0
    const-string v0, "rx.ring-buffer.size"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    .line 271
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lrx/d/c/f;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_1
    :goto_0
    sget v0, Lrx/d/c/f;->d:I

    sput v0, Lrx/d/c/f;->e:I

    .line 279
    new-instance v0, Lrx/d/c/f$1;

    invoke-direct {v0}, Lrx/d/c/f$1;-><init>()V

    sput-object v0, Lrx/d/c/f;->h:Lrx/d/c/d;

    .line 288
    new-instance v0, Lrx/d/c/f$2;

    invoke-direct {v0}, Lrx/d/c/f$2;-><init>()V

    sput-object v0, Lrx/d/c/f;->i:Lrx/d/c/d;

    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set \'rx.buffer.size\' with value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lrx/d/c/k;

    sget v1, Lrx/d/c/f;->e:I

    invoke-direct {v0, v1}, Lrx/d/c/k;-><init>(I)V

    sget v1, Lrx/d/c/f;->e:I

    invoke-direct {p0, v0, v1}, Lrx/d/c/f;-><init>(Ljava/util/Queue;I)V

    .line 325
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/d/c/f;->g:Lrx/d/c/d;

    .line 300
    iput p2, p0, Lrx/d/c/f;->b:I

    .line 301
    return-void
.end method

.method private constructor <init>(Lrx/d/c/d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/c/d",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lrx/d/c/f;->g:Lrx/d/c/d;

    .line 305
    invoke-virtual {p1}, Lrx/d/c/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    .line 306
    iput p2, p0, Lrx/d/c/f;->b:I

    .line 307
    return-void
.end method

.method public static a()Lrx/d/c/f;
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lrx/d/c/a/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lrx/d/c/f;

    sget-object v1, Lrx/d/c/f;->i:Lrx/d/c/d;

    sget v2, Lrx/d/c/f;->e:I

    invoke-direct {v0, v1, v2}, Lrx/d/c/f;-><init>(Lrx/d/c/d;I)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/d/c/f;

    invoke-direct {v0}, Lrx/d/c/f;-><init>()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Lrx/e;)Z
    .locals 1

    .prologue
    .line 432
    invoke-static {p1, p0}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 419
    invoke-static {p0}, Lrx/d/a/a;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    invoke-static {p0}, Lrx/d/a/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lrx/d/c/f;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lrx/d/c/a/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lrx/d/c/f;

    sget-object v1, Lrx/d/c/f;->i:Lrx/d/c/d;

    sget v2, Lrx/d/c/f;->e:I

    invoke-direct {v0, v1, v2}, Lrx/d/c/f;-><init>(Lrx/d/c/d;I)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/d/c/f;

    invoke-direct {v0}, Lrx/d/c/f;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    new-instance v0, Lrx/b/g;

    invoke-direct {v0}, Lrx/b/g;-><init>()V

    throw v0

    .line 340
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 320
    .line 1310
    iget-object v0, p0, Lrx/d/c/f;->g:Lrx/d/c/d;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    .line 1312
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1313
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    .line 1314
    iget-object v1, p0, Lrx/d/c/f;->g:Lrx/d/c/d;

    invoke-virtual {v1, v0}, Lrx/d/c/d;->a(Ljava/lang/Object;)V

    .line 321
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    .line 347
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    iget-object v2, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v0, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    .line 400
    iput-object v1, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 408
    const/4 v0, 0x0

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    iget-object v0, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    iget-object v1, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v0, p0, Lrx/d/c/f;->c:Ljava/lang/Object;

    goto :goto_0
.end method
