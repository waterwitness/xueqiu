.class public final Lcom/sleepycat/b/a/y;
.super Lcom/sleepycat/b/a/a;
.source "RecoveryUtilizationTracker.java"


# instance fields
.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/a;-><init>(Lcom/sleepycat/b/c/ad;Ljava/util/Map;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/y;->h:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/y;->i:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(IJ)I
    .locals 2

    .prologue
    .line 129
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/a/y;->b:Lcom/sleepycat/b/c/ad;

    .line 3504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 4480
    iget-boolean v0, v0, Lcom/sleepycat/b/a/c;->O:Z

    .line 129
    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/y;->b:Lcom/sleepycat/b/c/ad;

    .line 5371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 131
    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/b/g/am;->d(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 5723
    iget v0, v0, Lcom/sleepycat/b/l/y;->g:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x7fffffff

    and-int p1, v0, v1

    .line 137
    :cond_0
    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)Lcom/sleepycat/b/c/i;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/sleepycat/b/c/h;

    .line 189
    iget-object v0, p0, Lcom/sleepycat/b/a/y;->b:Lcom/sleepycat/b/c/ad;

    .line 6379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 189
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V
    .locals 7

    .prologue
    .line 72
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/y;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;I)Z

    .line 73
    return-void
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/a/ae;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/sleepycat/b/a/a;->a(Lcom/sleepycat/b/a/ae;)V

    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/h;)V
    .locals 1

    .prologue
    .line 177
    .line 6160
    iget-object v0, p0, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/g;

    .line 6162
    if-eqz v0, :cond_0

    .line 6163
    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->a()V

    .line 178
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/h;J)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sleepycat/b/a/y;->i:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sleepycat/b/a/y;->b:Lcom/sleepycat/b/c/ad;

    .line 7379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 198
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 199
    return-void
.end method

.method public final a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z
    .locals 13

    .prologue
    .line 111
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 112
    move-wide/from16 v0, p3

    invoke-virtual {p0, v2, v0, v1}, Lcom/sleepycat/b/a/y;->a(Ljava/lang/Long;J)Z

    move-result v9

    .line 3157
    iget-object v2, p0, Lcom/sleepycat/b/a/y;->i:Ljava/util/Map;

    move-object/from16 v0, p7

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/sleepycat/b/p/j;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 3158
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    .line 3160
    :goto_0
    if-gez v2, :cond_1

    const/4 v10, 0x1

    .line 114
    :goto_1
    const/4 v12, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/sleepycat/b/a/y;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 120
    return v9

    .line 3158
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 3160
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/Long;J)Z
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sleepycat/b/a/y;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/sleepycat/b/p/j;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 147
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p2, p3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    .line 149
    :goto_0
    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 147
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V
    .locals 11

    .prologue
    .line 87
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/a/y;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 93
    return-void
.end method
