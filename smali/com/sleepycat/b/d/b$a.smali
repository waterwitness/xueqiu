.class final Lcom/sleepycat/b/d/b$a;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Lcom/sleepycat/b/l/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/d/b;
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lcom/sleepycat/b/l/j;

.field final synthetic d:Lcom/sleepycat/b/c/ad;

.field final synthetic e:Z

.field final synthetic f:Lcom/sleepycat/b/c/al;

.field final synthetic g:Lcom/sleepycat/b/d/b;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/d/b;Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/c/ad;ZLcom/sleepycat/b/c/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sleepycat/b/d/b$a;->g:Lcom/sleepycat/b/d/b;

    iput-object p2, p0, Lcom/sleepycat/b/d/b$a;->c:Lcom/sleepycat/b/l/j;

    iput-object p3, p0, Lcom/sleepycat/b/d/b$a;->d:Lcom/sleepycat/b/c/ad;

    iput-boolean p4, p0, Lcom/sleepycat/b/d/b$a;->e:Z

    iput-object p5, p0, Lcom/sleepycat/b/d/b$a;->f:Lcom/sleepycat/b/c/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/d/b$a;->a:Z

    .line 706
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/d/b$a;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 720
    .line 3187
    iget-object v0, p1, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 720
    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 721
    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-object v7

    .line 724
    :cond_0
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 727
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v1

    .line 728
    iget-object v2, p0, Lcom/sleepycat/b/d/b$a;->c:Lcom/sleepycat/b/l/j;

    if-ne v0, v2, :cond_3

    .line 4147
    iget-boolean v2, v0, Lcom/sleepycat/b/l/j;->l:Z

    .line 728
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->Q()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/b/d/b$a;->d:Lcom/sleepycat/b/c/ad;

    .line 4330
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->g:Z

    .line 728
    if-eqz v2, :cond_1

    if-nez v1, :cond_3

    .line 733
    :cond_1
    invoke-static {v0}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;)Z

    move-result v4

    .line 737
    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/sleepycat/b/d/b$a;->d:Lcom/sleepycat/b/c/ad;

    .line 4371
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 738
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/sleepycat/b/d/b$a;->e:Z

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZZZLcom/sleepycat/b/l/j;)J

    move-result-wide v2

    .line 745
    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/b/l/e;->a(J)V

    .line 746
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/d/b$a;->a:Z

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/d/b$a;->f:Lcom/sleepycat/b/c/al;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/al;->b(Lcom/sleepycat/b/l/j;)V

    .line 751
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->L()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/d/b$a;->b:J

    .line 754
    invoke-virtual {p1}, Lcom/sleepycat/b/l/e;->c()V

    .line 757
    iget-object v1, p0, Lcom/sleepycat/b/d/b$a;->g:Lcom/sleepycat/b/d/b;

    invoke-static {v1}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/d/b;)Lcom/sleepycat/b/p/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    throw v1
.end method
