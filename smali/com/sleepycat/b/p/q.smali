.class public final Lcom/sleepycat/b/p/q;
.super Lcom/sleepycat/b/p/af;
.source "IntegralLongAvgStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Lcom/sleepycat/b/p/p;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/sleepycat/b/p/p;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJ)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 26
    new-instance v0, Lcom/sleepycat/b/p/p;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/sleepycat/b/p/p;-><init>(JJ)V

    iput-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJB)V
    .locals 7

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 34
    new-instance v1, Lcom/sleepycat/b/p/p;

    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/p/p;-><init>(JJB)V

    iput-object v1, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 35
    return-void
.end method

.method private f()Lcom/sleepycat/b/p/q;
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/q;

    .line 71
    new-instance v1, Lcom/sleepycat/b/p/p;

    iget-object v2, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/p/p;-><init>(Lcom/sleepycat/b/p/p;)V

    iput-object v1, v0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 81
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Lcom/sleepycat/b/p/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/p;

    .line 1035
    iget-wide v2, v1, Lcom/sleepycat/b/p/p;->a:J

    iget-wide v4, v0, Lcom/sleepycat/b/p/p;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sleepycat/b/p/p;->a:J

    .line 1036
    iget-wide v2, v1, Lcom/sleepycat/b/p/p;->b:J

    iget-wide v4, v0, Lcom/sleepycat/b/p/p;->b:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sleepycat/b/p/p;->b:J

    .line 50
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/sleepycat/b/p/p;

    .line 3044
    iput-object p1, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 15
    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Lcom/sleepycat/b/p/p;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Lcom/sleepycat/b/p/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sleepycat/b/p/q;->f()Lcom/sleepycat/b/p/q;

    move-result-object v1

    .line 55
    iget-object v2, v1, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/p;

    .line 1040
    iget-wide v4, v2, Lcom/sleepycat/b/p/p;->a:J

    iget-wide v6, v0, Lcom/sleepycat/b/p/p;->a:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/sleepycat/b/p/p;->a:J

    .line 1041
    iget-wide v4, v2, Lcom/sleepycat/b/p/p;->b:J

    iget-wide v6, v0, Lcom/sleepycat/b/p/p;->b:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/sleepycat/b/p/p;->b:J

    .line 56
    return-object v1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    .line 4039
    iget-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 15
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    .line 3039
    iget-object v1, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 85
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic e()Lcom/sleepycat/b/p/af;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sleepycat/b/p/q;->f()Lcom/sleepycat/b/p/q;

    move-result-object v0

    return-object v0
.end method

.method public final t_()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    iget-object v1, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 1059
    iget-wide v2, v1, Lcom/sleepycat/b/p/p;->b:J

    .line 62
    neg-long v2, v2

    .line 1063
    iput-wide v2, v0, Lcom/sleepycat/b/p/p;->b:J

    .line 63
    iget-object v0, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    iget-object v1, p0, Lcom/sleepycat/b/p/q;->a:Lcom/sleepycat/b/p/p;

    .line 2051
    iget-wide v2, v1, Lcom/sleepycat/b/p/p;->a:J

    .line 63
    neg-long v2, v2

    .line 2055
    iput-wide v2, v0, Lcom/sleepycat/b/p/p;->a:J

    .line 65
    :cond_0
    return-void
.end method
