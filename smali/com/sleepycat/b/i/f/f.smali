.class public final Lcom/sleepycat/b/i/f/f;
.super Lcom/sleepycat/b/n/y;
.source "ReplicaThreadLocker.java"


# instance fields
.field private final a:Lcom/sleepycat/b/i/c/aj;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/y;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 32
    iput-object p1, p0, Lcom/sleepycat/b/i/f/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 1

    .prologue
    .line 47
    .line 2161
    iget-boolean v0, p3, Lcom/sleepycat/b/n/o;->h:Z

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {p6}, Lcom/sleepycat/b/c/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/f;->k()V

    .line 50
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/b/n/y;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/f;->k()V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/y;->a(Lcom/sleepycat/b/c/i;)V

    .line 67
    return-void
.end method

.method public final b(Lcom/sleepycat/b/c/i;)V
    .locals 2

    .prologue
    .line 86
    .line 2677
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v0

    .line 86
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/f/f;->a:Lcom/sleepycat/b/i/c/aj;

    iget-object v1, p0, Lcom/sleepycat/b/i/f/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 3255
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->at:Lcom/sleepycat/b/bc;

    .line 89
    invoke-static {v0, v1}, Lcom/sleepycat/b/i/f/d;->a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/bc;)V

    goto :goto_0
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/sleepycat/b/i/s;

    iget-object v1, p0, Lcom/sleepycat/b/i/f/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 2487
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/z;->b()Lcom/sleepycat/b/i/ab;

    move-result-object v1

    .line 75
    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/i/s;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v0
.end method
