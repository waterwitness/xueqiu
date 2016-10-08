.class public final Lcom/sleepycat/b/i/i/o;
.super Lcom/sleepycat/b/i/i/p;
.source "VLSNRecoveryTracker.java"

# interfaces
.implements Lcom/sleepycat/b/h/u;


# instance fields
.field a:Lcom/sleepycat/b/p/au;

.field b:J

.field private g:B


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;III)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/i/i/p;-><init>(Lcom/sleepycat/b/c/ad;III)V

    .line 70
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/o;->a:Lcom/sleepycat/b/p/au;

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/i/i/o;->b:J

    .line 79
    sget-object v0, Lcom/sleepycat/b/g/af;->B:Lcom/sleepycat/b/g/af;

    .line 1644
    iget-byte v0, v0, Lcom/sleepycat/b/g/af;->K:B

    .line 79
    iput-byte v0, p0, Lcom/sleepycat/b/i/i/o;->g:B

    .line 80
    return-void
.end method


# virtual methods
.method public final a(JLcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)V
    .locals 5

    .prologue
    .line 87
    .line 2299
    iget-boolean v0, p3, Lcom/sleepycat/b/g/ae;->h:Z

    .line 87
    if-eqz v0, :cond_1

    .line 2307
    iget-boolean v0, p3, Lcom/sleepycat/b/g/ae;->i:Z

    .line 87
    if-nez v0, :cond_1

    .line 3295
    iget-object v0, p3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 4279
    iget-byte v1, p3, Lcom/sleepycat/b/g/ae;->b:B

    .line 91
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sleepycat/b/i/i/o;->a(Lcom/sleepycat/b/p/au;JB)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 5279
    :cond_1
    iget-byte v0, p3, Lcom/sleepycat/b/g/ae;->b:B

    .line 92
    iget-byte v1, p0, Lcom/sleepycat/b/i/i/o;->g:B

    if-ne v0, v1, :cond_0

    .line 93
    check-cast p4, Lcom/sleepycat/b/g/a/q;

    .line 6102
    iget-object v0, p4, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 93
    check-cast v0, Lcom/sleepycat/b/n/v;

    .line 7068
    iget-object v1, v0, Lcom/sleepycat/b/n/v;->a:Lcom/sleepycat/b/p/au;

    .line 96
    iput-object v1, p0, Lcom/sleepycat/b/i/i/o;->a:Lcom/sleepycat/b/p/au;

    .line 8060
    iget-wide v0, v0, Lcom/sleepycat/b/n/v;->b:J

    .line 97
    iput-wide v0, p0, Lcom/sleepycat/b/i/i/o;->b:J

    .line 98
    iget-object v0, p0, Lcom/sleepycat/b/i/i/o;->e:Lcom/sleepycat/b/i/i/m;

    .line 8110
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 98
    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sleepycat/b/i/i/o;->e:Lcom/sleepycat/b/i/i/m;

    .line 9110
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 102
    iget-object v1, p0, Lcom/sleepycat/b/i/i/o;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/o;->a()V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/i/o;->e:Lcom/sleepycat/b/i/i/m;

    .line 9114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 108
    iget-object v1, p0, Lcom/sleepycat/b/i/i/o;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sleepycat/b/i/i/o;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/i/o;->b:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/sleepycat/b/i/i/o;->b(Lcom/sleepycat/b/p/au;J)V

    goto :goto_0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/sleepycat/b/i/i/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
