.class public final Lcom/sleepycat/b/n/c;
.super Lcom/sleepycat/b/n/l;
.source "DummyLockManager.java"


# instance fields
.field private final n:Lcom/sleepycat/b/n/l;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/l;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/l;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 38
    iput-object p2, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    .line 39
    return-void
.end method


# virtual methods
.method final a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;
    .locals 18

    .prologue
    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/n/q;->l_()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/sleepycat/b/n/l;->a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;

    move-result-object v2

    .line 106
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->l_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZ)Lcom/sleepycat/b/n/f;
    .locals 6

    .prologue
    .line 78
    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->l_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZ)Lcom/sleepycat/b/n/f;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/n/f;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/n/f;-><init>(Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/h;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;

    move-result-object v0

    return-object v0
.end method

.method final a(JLcom/sleepycat/b/n/q;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/b/n/q;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/n/l;->a(JLcom/sleepycat/b/n/q;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/sleepycat/b/p/ai;Z)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/n/l;->a(Lcom/sleepycat/b/p/ai;Z)V

    .line 250
    return-void
.end method

.method final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/ao;)Z
    .locals 6

    .prologue
    .line 219
    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->l_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/ao;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(JLcom/sleepycat/b/n/q;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p3}, Lcom/sleepycat/b/n/q;->l_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/n/l;->b(JLcom/sleepycat/b/n/q;)V

    .line 144
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Long;)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sleepycat/b/n/c;->n:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/l;->b(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method
