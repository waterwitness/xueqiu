.class public final Lcom/sleepycat/b/a/s;
.super Lcom/sleepycat/b/a/a;
.source "LocalUtilizationTracker.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/sleepycat/b/p/n;

    invoke-direct {v0}, Lcom/sleepycat/b/p/n;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/a;-><init>(Lcom/sleepycat/b/c/ad;Ljava/util/Map;)V

    .line 40
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/sleepycat/b/c/i;
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lcom/sleepycat/b/c/i;

    return-object p1
.end method

.method public final a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    .locals 11

    .prologue
    .line 68
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p5

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/a/s;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 74
    return-void
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/a/ae;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/sleepycat/b/a/a;->a(Lcom/sleepycat/b/a/ae;)V

    return-void
.end method

.method final a(Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
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

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/a/s;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V

    .line 93
    return-void
.end method
