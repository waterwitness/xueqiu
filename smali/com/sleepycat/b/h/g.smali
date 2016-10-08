.class final Lcom/sleepycat/b/h/g;
.super Ljava/lang/Object;
.source "Checkpointer.java"

# interfaces
.implements Lcom/sleepycat/b/l/aq;


# instance fields
.field a:Z

.field b:Z

.field private final c:Lcom/sleepycat/b/c/i;

.field private final d:Lcom/sleepycat/b/g/am;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/am;J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    iput-object p1, p0, Lcom/sleepycat/b/h/g;->c:Lcom/sleepycat/b/c/i;

    .line 1525
    iput-boolean v0, p0, Lcom/sleepycat/b/h/g;->a:Z

    .line 1526
    iput-object p2, p0, Lcom/sleepycat/b/h/g;->d:Lcom/sleepycat/b/g/am;

    .line 1527
    iput-wide p3, p0, Lcom/sleepycat/b/h/g;->e:J

    .line 1528
    iput-boolean v0, p0, Lcom/sleepycat/b/h/g;->b:Z

    .line 1529
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1537
    if-nez p1, :cond_0

    .line 1567
    :goto_0
    return-object v7

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/h/g;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {p1, v0, v7}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 1541
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 4342
    :try_start_0
    iget-wide v2, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 1543
    iget-wide v4, p0, Lcom/sleepycat/b/h/g;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 4717
    iget-object v1, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 5553
    iget-boolean v1, v1, Lcom/sleepycat/b/c/i;->e:Z

    .line 1549
    if-eqz v1, :cond_1

    .line 1550
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->x()V

    .line 1557
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/h/g;->b:Z

    .line 1558
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1559
    iget-object v1, p0, Lcom/sleepycat/b/h/g;->d:Lcom/sleepycat/b/g/am;

    .line 6442
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZLcom/sleepycat/b/g/au;ZLcom/sleepycat/b/l/j;)J

    move-result-wide v2

    .line 1560
    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/b/l/e;->a(J)V

    .line 1561
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/h/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    throw v1
.end method
