.class public final Lcom/sleepycat/b/a/ae;
.super Lcom/sleepycat/b/a/b;
.source "UtilizationTracker.java"


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/a/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V

    .line 46
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)Lcom/sleepycat/b/a/f;
    .locals 2

    .prologue
    .line 220
    check-cast p1, Lcom/sleepycat/b/c/i;

    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Long;)Lcom/sleepycat/b/a/f;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    .locals 11

    .prologue
    .line 149
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/a/ae;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 155
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sleepycat/b/a/ae;->b:Lcom/sleepycat/b/c/ad;

    .line 3504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 114
    invoke-virtual {v0}, Lcom/sleepycat/b/a/c;->a()V

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/a/ae;->e:J

    .line 116
    return-void
.end method

.method public final b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    .locals 11

    .prologue
    .line 170
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/a/ae;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 176
    return-void
.end method

.method public final c(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    .locals 11

    .prologue
    .line 193
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/a/ae;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 199
    return-void
.end method
