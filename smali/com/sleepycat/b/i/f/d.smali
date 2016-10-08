.class public Lcom/sleepycat/b/i/f/d;
.super Lcom/sleepycat/b/n/z;
.source "ReadonlyTxn.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sleepycat/b/i/f/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/f/d;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)V

    .line 40
    return-void
.end method

.method static a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/bc;)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    .line 2479
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    .line 3479
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/i/f/d;->a:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing default consistency policy"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 118
    :cond_2
    :try_start_0
    invoke-interface {p1, p0}, Lcom/sleepycat/b/bc;->a(Lcom/sleepycat/b/c/ad;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Lcom/sleepycat/b/bo;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 1

    .prologue
    .line 60
    .line 1161
    iget-boolean v0, p3, Lcom/sleepycat/b/n/o;->h:Z

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {p6}, Lcom/sleepycat/b/c/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/d;->k()V

    .line 63
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/b/n/z;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/sleepycat/b/br;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sleepycat/b/i/f/d;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/f/d;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 2304
    iget-object v1, p1, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 103
    invoke-static {v0, v1}, Lcom/sleepycat/b/i/f/d;->a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/bc;)V

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/d;->k()V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/i;)V

    .line 80
    return-void
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 88
    new-instance v1, Lcom/sleepycat/b/i/s;

    iget-object v0, p0, Lcom/sleepycat/b/i/f/d;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 1487
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->b()Lcom/sleepycat/b/i/ab;

    move-result-object v0

    .line 88
    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/i/s;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v1
.end method
