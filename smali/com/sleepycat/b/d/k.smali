.class public final Lcom/sleepycat/b/d/k;
.super Lcom/sleepycat/b/d/b;
.source "SharedEvictor.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sleepycat/b/d/b;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 24
    return-void
.end method


# virtual methods
.method final a()Lcom/sleepycat/b/d/n;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/sleepycat/b/d/l;

    iget-object v1, p0, Lcom/sleepycat/b/d/k;->a:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/d/l;-><init>(Lcom/sleepycat/b/c/ad;)V

    return-object v0
.end method

.method final d()Lcom/sleepycat/b/d/d;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/sleepycat/b/d/k$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/d/k$1;-><init>(Lcom/sleepycat/b/d/k;)V

    return-object v0
.end method
