.class public final Lcom/sleepycat/b/n/d;
.super Lcom/sleepycat/b/n/a;
.source "HandleLocker.java"


# instance fields
.field private final a:J

.field private final b:Lcom/sleepycat/b/n/q;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 73
    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-wide v0, p2, Lcom/sleepycat/b/n/q;->k:J

    .line 73
    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/b/n/d;->a:J

    .line 75
    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/sleepycat/b/n/d;->b:Lcom/sleepycat/b/n/q;

    .line 77
    return-void

    .line 73
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/n/q;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/n/d;->a:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/sleepycat/b/n/d;->a:J

    .line 2169
    iget-wide v4, p1, Lcom/sleepycat/b/n/q;->k:J

    .line 95
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/n/d;->b:Lcom/sleepycat/b/n/q;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/b/n/d;->b:Lcom/sleepycat/b/n/q;

    if-eq v1, p1, :cond_0

    .line 103
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
