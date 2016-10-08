.class final Lcom/sleepycat/b/i/c/b/t;
.super Ljava/util/TimerTask;
.source "LogFlusher.java"


# instance fields
.field private final a:Lcom/sleepycat/b/i/c/b/aa;

.field private b:Lcom/sleepycat/b/p/au;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/t;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 77
    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/t;->b:Lcom/sleepycat/b/p/au;

    .line 78
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/t;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/t;->b:Lcom/sleepycat/b/p/au;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/t;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 100
    :cond_2
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/t;->b:Lcom/sleepycat/b/p/au;

    .line 101
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/t;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 101
    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V

    goto :goto_0
.end method
