.class final Lrx/d/a/u;
.super Lrx/i;
.source "OperatorObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/u;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile d:J

.field private final g:Lrx/h;

.field private final h:Lrx/d/a/v;

.field private final i:Lrx/d/c/f;

.field private j:Z

.field private k:Z

.field private volatile l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Lrx/d/a/u;

    const-string v1, "l"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/u;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 81
    const-class v0, Lrx/d/a/u;

    const-string v1, "d"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/u;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/g;Lrx/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 69
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/u;->b:Lrx/d/a/a;

    .line 71
    invoke-static {}, Lrx/d/c/f;->a()Lrx/d/c/f;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    .line 72
    iput-boolean v1, p0, Lrx/d/a/u;->j:Z

    .line 73
    iput-boolean v1, p0, Lrx/d/a/u;->k:Z

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/d/a/u;->l:J

    .line 86
    iput-object p2, p0, Lrx/d/a/u;->a:Lrx/i;

    .line 87
    invoke-virtual {p1}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/u;->g:Lrx/h;

    .line 88
    new-instance v0, Lrx/d/a/v;

    iget-object v1, p0, Lrx/d/a/u;->g:Lrx/h;

    iget-object v2, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    invoke-direct {v0, v1, v2}, Lrx/d/a/v;-><init>(Lrx/h;Lrx/d/c/f;)V

    iput-object v0, p0, Lrx/d/a/u;->h:Lrx/d/a/v;

    .line 89
    iget-object v0, p0, Lrx/d/a/u;->h:Lrx/d/a/v;

    invoke-virtual {p2, v0}, Lrx/i;->a(Lrx/j;)V

    .line 90
    new-instance v0, Lrx/d/a/u$1;

    invoke-direct {v0, p0}, Lrx/d/a/u$1;-><init>(Lrx/d/a/u;)V

    invoke-virtual {p2, v0}, Lrx/i;->a(Lrx/f;)V

    .line 99
    iget-object v0, p0, Lrx/d/a/u;->g:Lrx/h;

    invoke-virtual {p2, v0}, Lrx/i;->a(Lrx/j;)V

    .line 100
    invoke-virtual {p2, p0}, Lrx/i;->a(Lrx/j;)V

    .line 101
    return-void
.end method

.method static synthetic a(Lrx/d/a/u;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 5162
    const/4 v0, 0x0

    .line 5168
    :cond_0
    sget-object v1, Lrx/d/a/u;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 5170
    :cond_1
    :goto_0
    iget-object v1, p0, Lrx/d/a/u;->h:Lrx/d/a/v;

    .line 5224
    iget-boolean v1, v1, Lrx/d/a/v;->e:Z

    .line 5170
    if-nez v1, :cond_4

    .line 5171
    iget-boolean v1, p0, Lrx/d/a/u;->k:Z

    if-eqz v1, :cond_3

    .line 5173
    iget-object v1, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    invoke-virtual {v1}, Lrx/d/c/f;->g()Ljava/lang/Object;

    move-result-object v1

    .line 5175
    invoke-static {v1}, Lrx/d/a/a;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5177
    iget-object v0, p0, Lrx/d/a/u;->a:Lrx/i;

    invoke-static {v0, v1}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    .line 5179
    :cond_2
    :goto_1
    return-void

    .line 5182
    :cond_3
    sget-object v1, Lrx/d/a/u;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 5183
    iget-object v1, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    invoke-virtual {v1}, Lrx/d/c/f;->g()Ljava/lang/Object;

    move-result-object v1

    .line 5184
    if-nez v1, :cond_5

    .line 5186
    sget-object v1, Lrx/d/a/u;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 5201
    :cond_4
    :goto_2
    sget-object v1, Lrx/d/a/u;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 5204
    if-lez v0, :cond_2

    .line 5205
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/d/a/u;->a(J)V

    goto :goto_1

    .line 5189
    :cond_5
    iget-object v2, p0, Lrx/d/a/u;->a:Lrx/i;

    invoke-static {v2, v1}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5196
    :cond_6
    sget-object v1, Lrx/d/a/u;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 125
    .line 2076
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 125
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/d/a/u;->j:Z

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/u;->j:Z

    .line 129
    iget-object v0, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    invoke-virtual {v0}, Lrx/d/c/f;->e()V

    .line 130
    invoke-virtual {p0}, Lrx/d/a/u;->e()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    .line 1076
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 111
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/d/a/u;->j:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    iget-object v0, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    invoke-virtual {v0, p1}, Lrx/d/c/f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {p0}, Lrx/d/a/u;->e()V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {p0, v0}, Lrx/d/a/u;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    .line 3076
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 135
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/d/a/u;->j:Z

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 4066
    :cond_1
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 140
    iput-boolean v1, p0, Lrx/d/a/u;->j:Z

    .line 142
    iput-boolean v1, p0, Lrx/d/a/u;->k:Z

    .line 143
    iget-object v0, p0, Lrx/d/a/u;->i:Lrx/d/c/f;

    .line 4351
    iget-object v1, v0, Lrx/d/c/f;->c:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 4352
    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lrx/d/c/f;->c:Ljava/lang/Object;

    .line 144
    :cond_2
    invoke-virtual {p0}, Lrx/d/a/u;->e()V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 106
    sget v0, Lrx/d/c/f;->e:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/d/a/u;->a(J)V

    .line 107
    return-void
.end method

.method protected final e()V
    .locals 4

    .prologue
    .line 148
    sget-object v0, Lrx/d/a/u;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lrx/d/a/u;->g:Lrx/h;

    new-instance v1, Lrx/d/a/u$2;

    invoke-direct {v1, p0}, Lrx/d/a/u$2;-><init>(Lrx/d/a/u;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 158
    :cond_0
    return-void
.end method
