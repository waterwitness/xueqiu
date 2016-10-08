.class public final Lcom/sleepycat/b/p/a;
.super Lcom/sleepycat/b/p/af;
.source "ActiveTxnArrayStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<[",
        "Lcom/sleepycat/b/bt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/sleepycat/b/bt;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 23
    return-void
.end method

.method private f()Lcom/sleepycat/b/p/a;
    .locals 6

    .prologue
    .line 71
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/a;

    .line 72
    iget-object v1, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v1, v1

    new-array v1, v1, [Lcom/sleepycat/b/bt;

    .line 74
    iget-object v2, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2039
    iput-object v1, v0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    new-instance v2, Lcom/sleepycat/b/bt;

    iget-object v3, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    aget-object v3, v3, v0

    .line 1080
    iget-object v3, v3, Lcom/sleepycat/b/bt;->b:Ljava/lang/String;

    .line 52
    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/b/bt;-><init>(Ljava/lang/String;J)V

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<[",
            "Lcom/sleepycat/b/bt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "ActiveTxnArrayStat doesn\'t support the add operation."

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, [Lcom/sleepycat/b/bt;

    .line 3039
    iput-object p1, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    .line 16
    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<[",
            "Lcom/sleepycat/b/bt;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<[",
            "Lcom/sleepycat/b/bt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sleepycat/b/p/a;->f()Lcom/sleepycat/b/p/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    .line 4034
    iget-object v0, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    .line 16
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 10

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " txnId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    .line 2066
    iget-wide v8, v4, Lcom/sleepycat/b/bt;->a:J

    .line 91
    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " txnName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2080
    iget-object v4, v4, Lcom/sleepycat/b/bt;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/sleepycat/b/p/af;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sleepycat/b/p/a;->f()Lcom/sleepycat/b/p/a;

    move-result-object v0

    return-object v0
.end method

.method public final t_()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "ActiveTxnArrayStat doesn\'t support the negate operation."

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
