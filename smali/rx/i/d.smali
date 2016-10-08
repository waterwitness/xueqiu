.class public final Lrx/i/d;
.super Lrx/i/l;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i/l",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/i/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/j",
            "<TT;*>;"
        }
    .end annotation
.end field

.field final c:Lrx/i/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/m",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/b;Lrx/i/m;Lrx/i/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<TT;>;",
            "Lrx/i/m",
            "<TT;>;",
            "Lrx/i/j",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lrx/i/l;-><init>(Lrx/b;)V

    .line 361
    iput-object p2, p0, Lrx/i/d;->c:Lrx/i/m;

    .line 362
    iput-object p3, p0, Lrx/i/d;->b:Lrx/i/j;

    .line 363
    return-void
.end method

.method private a(Lrx/i/o;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/o",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 429
    iget-boolean v1, p1, Lrx/i/o;->f:Z

    if-nez v1, :cond_1

    .line 430
    iget-object v1, p0, Lrx/i/d;->b:Lrx/i/j;

    invoke-interface {v1, p1}, Lrx/i/j;->a(Lrx/i/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iput-boolean v0, p1, Lrx/i/o;->f:Z

    .line 2340
    const/4 v0, 0x0

    iput-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 437
    :cond_1
    return v0
.end method

.method public static c(I)Lrx/i/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/i/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lrx/i/e;

    new-instance v1, Lrx/i/k;

    invoke-direct {v1, p0}, Lrx/i/k;-><init>(I)V

    .line 199
    invoke-static {}, Lrx/d/c/l;->a()Lrx/c/f;

    move-result-object v2

    .line 200
    invoke-static {}, Lrx/d/c/l;->a()Lrx/c/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrx/i/e;-><init>(Lrx/i/g;Lrx/c/f;Lrx/c/f;)V

    .line 202
    new-instance v1, Lrx/i/f;

    invoke-direct {v1, v0}, Lrx/i/f;-><init>(Lrx/i/e;)V

    .line 1301
    new-instance v2, Lrx/i/m;

    invoke-direct {v2}, Lrx/i/m;-><init>()V

    .line 1302
    iput-object v1, v2, Lrx/i/m;->f:Lrx/c/b;

    .line 1303
    new-instance v1, Lrx/i/d$1;

    invoke-direct {v1, v0}, Lrx/i/d$1;-><init>(Lrx/i/e;)V

    iput-object v1, v2, Lrx/i/m;->g:Lrx/c/b;

    .line 1339
    new-instance v1, Lrx/i/d$2;

    invoke-direct {v1, v0}, Lrx/i/d$2;-><init>(Lrx/i/e;)V

    iput-object v1, v2, Lrx/i/m;->h:Lrx/c/b;

    .line 1352
    new-instance v1, Lrx/i/d;

    invoke-direct {v1, v2, v2, v0}, Lrx/i/d;-><init>(Lrx/b;Lrx/i/m;Lrx/i/j;)V

    .line 202
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 407
    iget-object v0, p0, Lrx/i/d;->c:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lrx/i/d;->b:Lrx/i/j;

    invoke-interface {v0}, Lrx/i/j;->a()V

    .line 409
    iget-object v0, p0, Lrx/i/d;->c:Lrx/i/m;

    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 410
    invoke-direct {p0, v3}, Lrx/i/d;->a(Lrx/i/o;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {v3}, Lrx/i/o;->a()V

    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lrx/i/d;->c:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lrx/i/d;->b:Lrx/i/j;

    invoke-interface {v0, p1}, Lrx/i/j;->a(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lrx/i/d;->c:Lrx/i/m;

    .line 2085
    iget-object v0, v0, Lrx/i/m;->a:Lrx/i/n;

    iget-object v1, v0, Lrx/i/n;->b:[Lrx/i/o;

    .line 369
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 370
    invoke-direct {p0, v3}, Lrx/i/d;->a(Lrx/i/o;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    invoke-virtual {v3, p1}, Lrx/i/o;->a(Ljava/lang/Object;)V

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v0, p0, Lrx/i/d;->c:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lrx/i/d;->b:Lrx/i/j;

    invoke-interface {v0, p1}, Lrx/i/j;->a(Ljava/lang/Throwable;)V

    .line 381
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lrx/i/d;->c:Lrx/i/m;

    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 384
    :try_start_0
    invoke-direct {p0, v1}, Lrx/i/d;->a(Lrx/i/o;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    invoke-virtual {v1, p1}, Lrx/i/o;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    if-nez v0, :cond_1

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    :cond_2
    if-eqz v0, :cond_3

    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 397
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/b/f;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 403
    :cond_3
    return-void

    .line 399
    :cond_4
    new-instance v1, Lrx/b/a;

    invoke-direct {v1, v0}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v1
.end method
