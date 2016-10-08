.class public final Lcom/sleepycat/b/i/e/m;
.super Ljava/lang/Object;
.source "MasterFeederSource.java"

# interfaces
.implements Lcom/sleepycat/b/i/e/f;


# instance fields
.field private final a:Lcom/sleepycat/b/i/e/a;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 34
    sget-object v1, Lcom/sleepycat/b/b/d;->L:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    .line 38
    new-instance v1, Lcom/sleepycat/b/i/e/a;

    invoke-direct {v1, p1, p2, v0}, Lcom/sleepycat/b/i/e/a;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;I)V

    iput-object v1, p0, Lcom/sleepycat/b/i/e/m;->a:Lcom/sleepycat/b/i/e/a;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/i/e/s;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/m;->a:Lcom/sleepycat/b/i/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/i/e/a;->a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/i/e/s;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MasterFeederSource fetching vlsn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n;->a(Ljava/lang/String;)V

    .line 70
    throw v0
.end method

.method public final a(Lcom/sleepycat/b/p/au;)V
    .locals 6

    .prologue
    .line 52
    iget-object v1, p0, Lcom/sleepycat/b/i/e/m;->a:Lcom/sleepycat/b/i/e/a;

    .line 4131
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4132
    const-string v0, "startVLSN can\'t be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 4136
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/i/e/a;->d:Lcom/sleepycat/b/i/i/f;

    .line 4775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 5114
    iget-object v2, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 4138
    invoke-virtual {v2, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-gez v2, :cond_2

    .line 6114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 4146
    :goto_0
    iget-object v2, v1, Lcom/sleepycat/b/i/e/a;->a:Lcom/sleepycat/b/i/i/h;

    .line 6211
    iget v3, v2, Lcom/sleepycat/b/i/i/h;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/i/i/h;->d:I

    .line 6212
    iget-object v3, v2, Lcom/sleepycat/b/i/i/h;->c:Lcom/sleepycat/b/i/i/f;

    invoke-static {v3, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/i/i/f;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v3

    iput-object v3, v2, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    .line 6213
    iget-object v2, v2, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/i/c;->b(Lcom/sleepycat/b/p/au;)J

    move-result-wide v2

    .line 4146
    iput-wide v2, v1, Lcom/sleepycat/b/i/e/a;->o:J

    .line 4147
    sget-boolean v0, Lcom/sleepycat/b/i/e/a;->c:Z

    if-nez v0, :cond_1

    iget-wide v2, v1, Lcom/sleepycat/b/i/e/a;->o:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4149
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/b/i/e/a;->g:Lcom/sleepycat/b/g/u;

    iget-wide v2, v1, Lcom/sleepycat/b/i/e/a;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 4150
    iget-object v0, v1, Lcom/sleepycat/b/i/e/a;->g:Lcom/sleepycat/b/g/u;

    .line 7001
    iget-wide v2, v0, Lcom/sleepycat/b/g/u;->c:J

    .line 4150
    iput-wide v2, v1, Lcom/sleepycat/b/i/e/a;->n:J

    .line 4151
    iput-object p1, v1, Lcom/sleepycat/b/i/e/a;->t:Lcom/sleepycat/b/p/au;

    .line 4153
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sleepycat/b/i/e/a;->b:Z

    .line 53
    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
