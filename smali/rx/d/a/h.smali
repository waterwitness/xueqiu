.class Lrx/d/a/h;
.super Lrx/i;
.source "OperatorConcat.java"


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
.field private static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/d/a/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/d/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 182
    const-class v0, Lrx/d/a/h;

    const-string v1, "c"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/h;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/d/a/j;Lrx/i;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/j",
            "<TT;>;",
            "Lrx/i",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lrx/d/a/h;->c:I

    .line 185
    iput-object p1, p0, Lrx/d/a/h;->b:Lrx/d/a/j;

    .line 186
    iput-object p2, p0, Lrx/d/a/h;->a:Lrx/i;

    .line 187
    invoke-virtual {p0, p3, p4}, Lrx/d/a/h;->a(J)V

    .line 188
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 210
    sget-object v0, Lrx/d/a/h;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lrx/d/a/h;->b:Lrx/d/a/j;

    .line 1147
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/d/a/j;->a(J)V

    .line 1148
    const/4 v1, 0x0

    iput-object v1, v0, Lrx/d/a/j;->c:Lrx/d/a/h;

    .line 1149
    sget-object v1, Lrx/d/a/j;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1150
    invoke-virtual {v0}, Lrx/d/a/j;->e()V

    .line 214
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lrx/d/a/h;->b:Lrx/d/a/j;

    invoke-static {v0}, Lrx/d/a/j;->a(Lrx/d/a/j;)V

    .line 197
    iget-object v0, p0, Lrx/d/a/h;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lrx/d/a/h;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lrx/d/a/h;->b:Lrx/d/a/j;

    invoke-virtual {v0, p1}, Lrx/d/a/j;->a(Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    return-void
.end method
