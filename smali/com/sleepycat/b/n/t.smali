.class public Lcom/sleepycat/b/n/t;
.super Lcom/sleepycat/b/n/b;
.source "ReadCommittedLocker.java"


# static fields
.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sleepycat/b/n/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/t;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V
    .locals 1

    .prologue
    .line 33
    instance-of v0, p2, Lcom/sleepycat/b/n/t;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sleepycat/b/n/t;

    .line 1063
    iget-object p2, p2, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/n/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V

    .line 37
    sget-boolean v0, Lcom/sleepycat/b/n/t;->b:Z

    if-nez v0, :cond_1

    .line 2063
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 37
    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    return-void
.end method

.method public static b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/t;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/sleepycat/b/n/t;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/n/t;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V

    return-object v0
.end method


# virtual methods
.method protected final a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 9

    .prologue
    .line 80
    .line 3161
    iget-boolean v0, p3, Lcom/sleepycat/b/n/o;->h:Z

    .line 80
    if-eqz v0, :cond_0

    .line 4063
    iget-object v1, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 81
    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/n/q;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/b/n/b;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 137
    .line 7063
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 137
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/c;)V

    .line 138
    return-void
.end method

.method public final a(Lcom/sleepycat/b/l/a;)V
    .locals 1

    .prologue
    .line 128
    .line 6063
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 128
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/l/a;)V

    .line 129
    return-void
.end method

.method public final b(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 146
    .line 8063
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 146
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/c/c;)V

    .line 147
    return-void
.end method

.method public final d(J)Z
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/sleepycat/b/n/t;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v1, p1, p2, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sleepycat/b/n/t;->j:Lcom/sleepycat/b/n/l;

    .line 5063
    iget-object v1, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 99
    invoke-virtual {v0, p1, p2, v1}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    move-result v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/n/t;->a(J)V

    .line 102
    return v0
.end method

.method public final f()Lcom/sleepycat/b/n/q;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sleepycat/b/n/t;->i:Lcom/sleepycat/b/c/ad;

    .line 3063
    iget-object v1, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 63
    invoke-virtual {v1}, Lcom/sleepycat/b/n/q;->f()Lcom/sleepycat/b/n/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/n/t;->b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/t;

    move-result-object v0

    return-object v0
.end method

.method public final i_()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public final j_()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method
