.class public final Lcom/sleepycat/b/i/c/n;
.super Ljava/lang/Object;
.source "PointConsistencyPolicy.java"

# interfaces
.implements Lcom/sleepycat/b/bc;


# instance fields
.field private final a:Lcom/sleepycat/b/p/au;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/au;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    .line 52
    invoke-static {p2, p3, p4}, Lcom/sleepycat/b/p/ac;->a(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/n;->b:I

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/sleepycat/b/i/c/n;->b:I

    invoke-static {v0, p1}, Lcom/sleepycat/b/p/ac;->a(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 4

    .prologue
    .line 77
    check-cast p1, Lcom/sleepycat/b/i/c/aj;

    .line 1887
    iget-object v0, p1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 2398
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 3267
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 79
    iget-object v1, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    .line 4101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 79
    invoke-virtual {v0, v2, v3, p0}, Lcom/sleepycat/b/i/c/b/ai;->a(JLcom/sleepycat/b/bc;)V

    .line 81
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/n;

    .line 108
    iget-object v2, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p1, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    if-eqz v2, :cond_0

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 93
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointConsistencyPolicy targetVLSN="

    .line 5060
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/sleepycat/b/i/c/n;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
