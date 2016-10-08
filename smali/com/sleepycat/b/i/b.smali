.class public final Lcom/sleepycat/b/i/b;
.super Ljava/lang/Object;
.source "CommitPointConsistencyPolicy.java"

# interfaces
.implements Lcom/sleepycat/b/bc;


# instance fields
.field private final a:Lcom/sleepycat/b/d;

.field private final b:I


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/sleepycat/b/i/b;->b:I

    invoke-static {v0, p1}, Lcom/sleepycat/b/p/ac;->a(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 4

    .prologue
    .line 135
    check-cast p1, Lcom/sleepycat/b/i/c/aj;

    .line 136
    iget-object v0, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    .line 1057
    iget-object v0, v0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    .line 1887
    iget-object v1, p1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 136
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/aa;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Replication environment mismatch. The UUID associated with the commit token is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    .line 2057
    iget-object v2, v2, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but this replica environment has the UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2887
    iget-object v2, p1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 138
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3887
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 4398
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 5267
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 146
    iget-object v1, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    .line 6061
    iget-wide v2, v1, Lcom/sleepycat/b/d;->b:J

    .line 146
    invoke-virtual {v0, v2, v3, p0}, Lcom/sleepycat/b/i/c/b/ai;->a(JLcom/sleepycat/b/bc;)V

    .line 148
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-ne p0, p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/b;

    if-nez v2, :cond_3

    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b;

    .line 200
    iget-object v2, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    if-nez v2, :cond_4

    .line 201
    iget-object v2, p1, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    if-eqz v2, :cond_5

    move v0, v1

    .line 202
    goto :goto_0

    .line 204
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    iget-object v3, p1, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_5
    iget v2, p0, Lcom/sleepycat/b/i/b;->b:I

    iget v3, p1, Lcom/sleepycat/b/i/b;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 208
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sleepycat/b/i/b;->b:I

    add-int/2addr v0, v1

    .line 181
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/d;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommitPointConsistencyPolicy commitToken="

    .line 6116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/sleepycat/b/i/b;->a:Lcom/sleepycat/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
