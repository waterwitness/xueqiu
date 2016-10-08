.class final Lcom/sleepycat/b/i/b/j$2;
.super Lcom/sleepycat/b/i/b/ap;
.source "Learner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Lcom/sleepycat/b/i/b/j;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/j;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sleepycat/b/i/b/j$2;->b:Lcom/sleepycat/b/i/b/j;

    iput-object p2, p0, Lcom/sleepycat/b/i/b/j$2;->a:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/sleepycat/b/i/b/ap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j$2;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/au;

    .line 334
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j$2;->b:Lcom/sleepycat/b/i/b/j;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/x;->i:Lcom/sleepycat/b/i/c/av;

    if-ne v1, v2, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/b/ab;

    .line 1382
    iget-object v1, v0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    .line 341
    check-cast v1, Lcom/sleepycat/b/i/b/l;

    .line 343
    if-eqz v1, :cond_2

    .line 2059
    iget-object v2, v1, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 343
    iget-object v3, p0, Lcom/sleepycat/b/i/b/j$2;->b:Lcom/sleepycat/b/i/b/j;

    iget-object v3, v3, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    .line 2187
    iget-object v3, v3, Lcom/sleepycat/b/i/c/ap;->k:Lcom/sleepycat/b/i/c/b/x;

    .line 343
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/b/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/b/j$2;->b:Lcom/sleepycat/b/i/b/j;

    .line 2386
    iget-object v0, v0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    .line 353
    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V

    goto :goto_0
.end method
