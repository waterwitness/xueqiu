.class public final Lcom/sleepycat/b/n/ab;
.super Ljava/lang/Object;
.source "Txn.java"


# instance fields
.field a:Lcom/sleepycat/b/c/i;

.field b:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/i;Z)V
    .locals 0

    .prologue
    .line 2191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2192
    iput-object p1, p0, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    .line 2193
    iput-boolean p2, p0, Lcom/sleepycat/b/n/ab;->b:Z

    .line 2194
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2202
    instance-of v1, p1, Lcom/sleepycat/b/n/ab;

    if-nez v1, :cond_1

    .line 2207
    :cond_0
    :goto_0
    return v0

    .line 2206
    :cond_1
    check-cast p1, Lcom/sleepycat/b/n/ab;

    .line 2207
    iget-object v1, p0, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    iget-object v2, p1, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sleepycat/b/n/ab;->b:Z

    iget-boolean v2, p1, Lcom/sleepycat/b/n/ab;->b:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
