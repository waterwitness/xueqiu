.class final Lcom/sleepycat/b/a/j;
.super Ljava/lang/Object;
.source "FileProcessor.java"

# interfaces
.implements Lcom/sleepycat/b/l/aq;


# instance fields
.field private final a:Lcom/sleepycat/b/c/i;

.field private final b:Lcom/sleepycat/b/l/j;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;J)V
    .locals 1

    .prologue
    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    iput-object p1, p0, Lcom/sleepycat/b/a/j;->a:Lcom/sleepycat/b/c/i;

    .line 1390
    iput-object p2, p0, Lcom/sleepycat/b/a/j;->b:Lcom/sleepycat/b/l/j;

    .line 1391
    iput-wide p3, p0, Lcom/sleepycat/b/a/j;->c:J

    .line 1392
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1397
    if-eqz p1, :cond_0

    .line 2213
    iget-wide v2, p1, Lcom/sleepycat/b/l/e;->b:J

    .line 1397
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/a/j;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 2342
    iget-wide v2, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 1397
    iget-object v0, p0, Lcom/sleepycat/b/a/j;->b:Lcom/sleepycat/b/l/j;

    .line 3342
    iget-wide v4, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 1397
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1415
    :goto_0
    return-object v0

    .line 4213
    :cond_1
    iget-wide v2, p1, Lcom/sleepycat/b/l/e;->b:J

    .line 1410
    iget-wide v4, p0, Lcom/sleepycat/b/a/j;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/sleepycat/b/a/j;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 1412
    sget-object v1, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1415
    goto :goto_0
.end method
