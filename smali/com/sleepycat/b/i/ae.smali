.class public final Lcom/sleepycat/b/i/ae;
.super Ljava/lang/Object;
.source "TimeConsistencyPolicy.java"

# interfaces
.implements Lcom/sleepycat/b/bc;


# instance fields
.field public final a:I

.field private final b:I


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1, p2, p3}, Lcom/sleepycat/b/p/ac;->a(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/ae;->a:I

    .line 79
    invoke-static {p4, p5, p6}, Lcom/sleepycat/b/p/ac;->a(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/ae;->b:I

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/sleepycat/b/i/ae;->b:I

    invoke-static {v0, p1}, Lcom/sleepycat/b/p/ac;->a(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 130
    check-cast p1, Lcom/sleepycat/b/i/c/aj;

    .line 1887
    iget-object v0, p1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 2398
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 3267
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 3335
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/ai;->a()J

    move-result-wide v2

    .line 3336
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4099
    iget v4, p0, Lcom/sleepycat/b/i/ae;->a:I

    invoke-static {v4, v1}, Lcom/sleepycat/b/p/ac;->a(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 3338
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 3341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3342
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->i:Lcom/sleepycat/b/i/c/b/ak;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/i/c/b/ak;->a(Ljava/lang/Long;)Lcom/sleepycat/b/i/h/t;

    move-result-object v1

    .line 3344
    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/i/h/t;Lcom/sleepycat/b/bc;)V

    .line 3345
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->f()V

    .line 3346
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 133
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/ae;

    .line 157
    iget v2, p0, Lcom/sleepycat/b/i/ae;->a:I

    iget v3, p1, Lcom/sleepycat/b/i/ae;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_4
    iget v2, p0, Lcom/sleepycat/b/i/ae;->b:I

    iget v3, p1, Lcom/sleepycat/b/i/ae;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/sleepycat/b/i/ae;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sleepycat/b/i/ae;->b:I

    add-int/2addr v0, v1

    .line 141
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeConsistencyPolicy permissibleLag="

    .line 5088
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget v1, p0, Lcom/sleepycat/b/i/ae;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
