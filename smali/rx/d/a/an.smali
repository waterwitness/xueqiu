.class final Lrx/d/a/an;
.super Ljava/lang/Object;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/an;",
            ">;"
        }
    .end annotation
.end field

.field static final d:I


# instance fields
.field final a:Lrx/j/b;

.field volatile b:J

.field e:I

.field f:[Ljava/lang/Object;

.field g:Ljava/util/concurrent/atomic/AtomicLong;

.field private final h:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final i:Lrx/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/l",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 184
    const-class v0, Lrx/d/a/an;

    const-string v1, "b"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/an;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 186
    sget v0, Lrx/d/c/f;->e:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/d/a/an;->d:I

    return-void
.end method

.method public constructor <init>(Lrx/i;Lrx/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TR;>;",
            "Lrx/c/l",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/d/a/an;->a:Lrx/j/b;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lrx/d/a/an;->e:I

    .line 194
    iput-object p1, p0, Lrx/d/a/an;->h:Lrx/e;

    .line 195
    iput-object p2, p0, Lrx/d/a/an;->i:Lrx/c/l;

    .line 196
    iget-object v0, p0, Lrx/d/a/an;->a:Lrx/j/b;

    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 197
    return-void
.end method

.method static synthetic a(Lrx/d/a/an;)Lrx/e;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lrx/d/a/an;->h:Lrx/e;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lrx/d/a/an;->f:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v0, Lrx/d/a/an;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 230
    :cond_2
    :goto_1
    iget-object v0, p0, Lrx/d/a/an;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    .line 231
    iget-object v0, p0, Lrx/d/a/an;->f:[Ljava/lang/Object;

    array-length v0, v0

    new-array v4, v0, [Ljava/lang/Object;

    .line 232
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    .line 233
    :goto_2
    iget-object v0, p0, Lrx/d/a/an;->f:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 234
    iget-object v0, p0, Lrx/d/a/an;->f:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lrx/d/a/ao;

    iget-object v0, v0, Lrx/d/a/ao;->a:Lrx/d/c/f;

    .line 235
    invoke-virtual {v0}, Lrx/d/c/f;->h()Ljava/lang/Object;

    move-result-object v0

    .line 237
    if-nez v0, :cond_3

    move v3, v2

    .line 233
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 242
    :cond_3
    invoke-static {v0}, Lrx/d/c/f;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    iget-object v0, p0, Lrx/d/a/an;->h:Lrx/e;

    invoke-interface {v0}, Lrx/e;->a()V

    .line 246
    iget-object v0, p0, Lrx/d/a/an;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    goto :goto_0

    .line 249
    :cond_4
    invoke-static {v0}, Lrx/d/c/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_3

    .line 252
    :cond_5
    if-eqz v3, :cond_9

    .line 255
    :try_start_0
    iget-object v0, p0, Lrx/d/a/an;->h:Lrx/e;

    iget-object v1, p0, Lrx/d/a/an;->i:Lrx/c/l;

    invoke-interface {v1, v4}, Lrx/c/l;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/e;->a(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lrx/d/a/an;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 258
    iget v0, p0, Lrx/d/a/an;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/d/a/an;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    iget-object v3, p0, Lrx/d/a/an;->f:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v2

    :goto_4
    if-ge v1, v4, :cond_7

    aget-object v0, v3, v1

    .line 265
    check-cast v0, Lrx/d/a/ao;

    iget-object v0, v0, Lrx/d/a/ao;->a:Lrx/d/c/f;

    .line 266
    invoke-virtual {v0}, Lrx/d/c/f;->g()Ljava/lang/Object;

    .line 268
    invoke-virtual {v0}, Lrx/d/c/f;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/d/c/f;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lrx/d/a/an;->h:Lrx/e;

    invoke-interface {v0}, Lrx/e;->a()V

    .line 272
    iget-object v0, p0, Lrx/d/a/an;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    iget-object v1, p0, Lrx/d/a/an;->h:Lrx/e;

    invoke-static {v0, v4}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 264
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 276
    :cond_7
    iget v0, p0, Lrx/d/a/an;->e:I

    sget v1, Lrx/d/a/an;->d:I

    if-le v0, v1, :cond_2

    .line 277
    iget-object v3, p0, Lrx/d/a/an;->f:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_8

    aget-object v0, v3, v1

    .line 278
    check-cast v0, Lrx/d/a/ao;

    iget v5, p0, Lrx/d/a/an;->e:I

    int-to-long v6, v5

    .line 1304
    invoke-virtual {v0, v6, v7}, Lrx/d/a/ao;->a(J)V

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 280
    :cond_8
    iput v2, p0, Lrx/d/a/an;->e:I

    goto/16 :goto_1

    .line 286
    :cond_9
    sget-object v0, Lrx/d/a/an;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_2

    goto/16 :goto_0
.end method
