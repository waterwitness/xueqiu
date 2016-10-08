.class final Lcom/sleepycat/b/i/c/b/s;
.super Ljava/lang/Object;
.source "LogFlusher.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/aa;

.field final b:Ljava/util/Timer;

.field c:I

.field d:Lcom/sleepycat/b/i/c/b/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/s;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 34
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/s;->b:Ljava/util/Timer;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/s;->d:Lcom/sleepycat/b/i/c/b/t;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/s;->d:Lcom/sleepycat/b/i/c/b/t;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/t;->cancel()Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/s;->d:Lcom/sleepycat/b/i/c/b/t;

    .line 57
    :cond_0
    return-void
.end method
