.class public abstract Lcom/sleepycat/b/d/n;
.super Ljava/lang/Object;
.source "TargetSelector.java"


# instance fields
.field final a:Lcom/sleepycat/b/p/ai;

.field private final b:Lcom/sleepycat/b/p/z;

.field private final c:I

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 55
    sget-object v1, Lcom/sleepycat/b/b/d;->aq:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/d/n;->c:I

    .line 57
    sget-object v1, Lcom/sleepycat/b/b/d;->at:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/d/n;->d:Z

    .line 59
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cache"

    const-string v2, "Current size, allocations, and eviction activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/n;->a:Lcom/sleepycat/b/p/ai;

    .line 60
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/n;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/n;->b:Lcom/sleepycat/b/p/z;

    .line 61
    return-void
.end method


# virtual methods
.method abstract a()Lcom/sleepycat/b/d/p;
.end method

.method public a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sleepycat/b/d/n;->a:Lcom/sleepycat/b/p/ai;

    .line 12103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 253
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    .line 254
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/d/n;->b(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 255
    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/sleepycat/b/c/ad;)V
.end method

.method final b(I)Lcom/sleepycat/b/d/o;
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 73
    new-instance v10, Lcom/sleepycat/b/d/o;

    invoke-direct {v10, p0}, Lcom/sleepycat/b/d/o;-><init>(Lcom/sleepycat/b/d/n;)V

    .line 75
    const-wide v4, 0x7fffffffffffffffL

    .line 76
    const v2, 0x7fffffff

    move v3, v1

    move v8, v1

    move v0, v9

    .line 85
    :goto_0
    if-ge v3, p1, :cond_7

    iget v6, p0, Lcom/sleepycat/b/d/n;->c:I

    if-ge v8, v6, :cond_7

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/d/n;->b()Lcom/sleepycat/b/l/j;

    move-result-object v11

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v11, :cond_7

    .line 100
    add-int/lit8 v7, v3, 0x1

    .line 101
    iget v3, v10, Lcom/sleepycat/b/d/o;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/sleepycat/b/d/o;->b:I

    .line 3717
    iget-object v3, v11, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 111
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v6

    if-nez v6, :cond_9

    .line 4133
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 4330
    iget-boolean v3, v3, Lcom/sleepycat/b/c/ad;->g:Z

    .line 119
    if-eqz v3, :cond_0

    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v3

    if-nez v3, :cond_9

    .line 5270
    :cond_0
    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    move v6, v1

    .line 130
    :goto_1
    if-eqz v6, :cond_9

    .line 138
    iget-boolean v3, p0, Lcom/sleepycat/b/d/n;->d:Z

    if-eqz v3, :cond_3

    .line 5578
    iget-wide v12, v11, Lcom/sleepycat/b/l/j;->e:J

    .line 144
    cmp-long v3, v4, v12

    if-lez v3, :cond_1

    .line 6578
    iget-wide v4, v11, Lcom/sleepycat/b/l/j;->e:J

    .line 146
    iput-object v11, v10, Lcom/sleepycat/b/d/o;->a:Lcom/sleepycat/b/l/j;

    .line 175
    :cond_1
    :goto_2
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v7

    .line 176
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5273
    :cond_2
    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->l()I

    move-result v3

    move v6, v3

    goto :goto_1

    .line 7610
    :cond_3
    iget v3, v11, Lcom/sleepycat/b/l/j;->j:I

    .line 7213
    const v12, 0xffff

    and-int/2addr v3, v12

    .line 7215
    if-ne v3, v9, :cond_4

    if-ne v6, v9, :cond_4

    move v3, v1

    .line 155
    :cond_4
    if-eq v2, v3, :cond_5

    .line 156
    if-le v2, v3, :cond_1

    .line 158
    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v0

    .line 8578
    iget-wide v4, v11, Lcom/sleepycat/b/l/j;->e:J

    .line 160
    iput-object v11, v10, Lcom/sleepycat/b/d/o;->a:Lcom/sleepycat/b/l/j;

    move v2, v3

    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v3

    if-eq v0, v3, :cond_6

    .line 163
    if-eqz v0, :cond_1

    .line 9578
    iget-wide v4, v11, Lcom/sleepycat/b/l/j;->e:J

    .line 166
    iput-object v11, v10, Lcom/sleepycat/b/d/o;->a:Lcom/sleepycat/b/l/j;

    move v0, v1

    goto :goto_2

    .line 10578
    :cond_6
    iget-wide v12, v11, Lcom/sleepycat/b/l/j;->e:J

    .line 169
    cmp-long v3, v4, v12

    if-lez v3, :cond_1

    .line 11578
    iget-wide v4, v11, Lcom/sleepycat/b/l/j;->e:J

    .line 171
    iput-object v11, v10, Lcom/sleepycat/b/d/o;->a:Lcom/sleepycat/b/l/j;

    goto :goto_2

    .line 178
    :cond_7
    iget-object v0, v10, Lcom/sleepycat/b/d/o;->a:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, p0, Lcom/sleepycat/b/d/n;->b:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 181
    :cond_8
    return-object v10

    :cond_9
    move v3, v7

    goto/16 :goto_0
.end method

.method abstract b()Lcom/sleepycat/b/l/j;
.end method

.method abstract b(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
.end method

.method public abstract b(Lcom/sleepycat/b/c/ad;)V
.end method

.method public abstract c(Lcom/sleepycat/b/c/ad;)Z
.end method
