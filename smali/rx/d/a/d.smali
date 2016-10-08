.class final Lrx/d/a/d;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private volatile c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lrx/d/a/d;

    const-string v1, "c"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/d;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lrx/i;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/d/a/d;->c:J

    .line 59
    iput-object p1, p0, Lrx/d/a/d;->a:Lrx/i;

    .line 60
    iput-object p2, p0, Lrx/d/a/d;->b:Ljava/util/Iterator;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lrx/i;Ljava/util/Iterator;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lrx/d/a/d;-><init>(Lrx/i;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v6, 0x0

    .line 65
    sget-object v0, Lrx/d/a/d;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 70
    sget-object v0, Lrx/d/a/d;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 72
    :goto_1
    iget-object v0, p0, Lrx/d/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lrx/d/a/d;->a:Lrx/i;

    .line 1076
    iget-object v0, v0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lrx/d/a/d;->a:Lrx/i;

    iget-object v1, p0, Lrx/d/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lrx/d/a/d;->a:Lrx/i;

    .line 2076
    iget-object v0, v0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lrx/d/a/d;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto :goto_0

    .line 81
    :cond_3
    cmp-long v0, p1, v6

    if-lez v0, :cond_0

    .line 83
    sget-object v0, Lrx/d/a/d;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 84
    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 90
    :cond_4
    iget-wide v2, p0, Lrx/d/a/d;->c:J

    move-wide v0, v2

    .line 92
    :goto_2
    iget-object v4, p0, Lrx/d/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_5

    .line 93
    iget-object v4, p0, Lrx/d/a/d;->a:Lrx/i;

    .line 3076
    iget-object v4, v4, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v4}, Lrx/d/c/j;->c()Z

    move-result v4

    .line 93
    if-nez v4, :cond_0

    .line 96
    iget-object v4, p0, Lrx/d/a/d;->a:Lrx/i;

    iget-object v5, p0, Lrx/d/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/i;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    :cond_5
    iget-object v0, p0, Lrx/d/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    iget-object v0, p0, Lrx/d/a/d;->a:Lrx/i;

    .line 4076
    iget-object v0, v0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lrx/d/a/d;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto/16 :goto_0

    .line 106
    :cond_6
    sget-object v0, Lrx/d/a/d;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v2, v2

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    goto/16 :goto_0
.end method
