.class public Lcom/sleepycat/b/p/z;
.super Lcom/sleepycat/b/p/af;
.source "LongStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 26
    iput-wide p3, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 71
    return-void
.end method

.method public a(Lcom/sleepycat/b/p/af;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-wide v2, p0, Lcom/sleepycat/b/p/z;->a:J

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 37
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/p/z;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sleepycat/b/p/z;->e()Lcom/sleepycat/b/p/af;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/b/p/z;->c:Lcom/sleepycat/b/p/ag;

    .line 1068
    iget v0, v0, Lcom/sleepycat/b/p/ag;->b:I

    .line 55
    sget v2, Lcom/sleepycat/b/p/ah;->a:I

    if-ne v0, v2, :cond_0

    .line 56
    iget-wide v2, p0, Lcom/sleepycat/b/p/z;->a:J

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/af;->a(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-object v1
.end method

.method public b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 45
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/sleepycat/b/p/z;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 41
    return-void
.end method

.method public t_()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sleepycat/b/p/z;->c:Lcom/sleepycat/b/p/ag;

    .line 2068
    iget v0, v0, Lcom/sleepycat/b/p/ag;->b:I

    .line 63
    sget v1, Lcom/sleepycat/b/p/ah;->a:I

    if-ne v0, v1, :cond_0

    .line 64
    iget-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    neg-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/p/z;->a:J

    .line 66
    :cond_0
    return-void
.end method
