.class public Lcom/sleepycat/b/n/b;
.super Lcom/sleepycat/b/n/a;
.source "BuddyLocker.java"


# instance fields
.field final a:Lcom/sleepycat/b/n/q;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 42
    iput-object p2, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    .line 43
    invoke-virtual {p2, p0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/n/b;)V

    .line 44
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/b;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/sleepycat/b/n/b;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/n/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/au;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/au;)V

    .line 159
    return-void
.end method

.method public final a(Lcom/sleepycat/b/n/q;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/n/q;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/n/q;)V

    .line 170
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/n/q;->c(J)V

    .line 133
    return-void
.end method

.method public final e()Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->e()Lcom/sleepycat/b/n/z;

    move-result-object v0

    return-object v0
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->h_()Z

    move-result v0

    return v0
.end method

.method final j()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/sleepycat/b/n/a;->j()V

    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/n/b;)V

    .line 57
    return-void
.end method

.method public final k_()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/sleepycat/b/n/a;->k_()V

    .line 92
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->k_()V

    .line 93
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->p()Z

    move-result v0

    return v0
.end method

.method public final p_()Lcom/sleepycat/b/bp;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->p_()Lcom/sleepycat/b/bp;

    move-result-object v0

    return-object v0
.end method

.method public final r_()J
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->r_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s_()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sleepycat/b/n/b;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->s_()J

    move-result-wide v0

    return-wide v0
.end method
