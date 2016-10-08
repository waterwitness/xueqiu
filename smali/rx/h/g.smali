.class final Lrx/h/g;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# instance fields
.field final a:I

.field final b:[Lrx/h/h;

.field c:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lrx/h/g;->a:I

    .line 44
    iget v0, p0, Lrx/h/g;->a:I

    new-array v0, v0, [Lrx/h/h;

    iput-object v0, p0, Lrx/h/g;->b:[Lrx/h/h;

    .line 45
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lrx/h/g;->a:I

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lrx/h/g;->b:[Lrx/h/h;

    new-instance v2, Lrx/h/h;

    invoke-static {}, Lrx/h/e;->b()Lrx/d/c/g;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/h/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
