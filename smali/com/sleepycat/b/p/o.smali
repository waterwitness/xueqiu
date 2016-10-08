.class public Lcom/sleepycat/b/p/o;
.super Lcom/sleepycat/b/p/af;
.source "IntStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 26
    iput p3, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 69
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sleepycat/b/p/o;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 45
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget v1, p0, Lcom/sleepycat/b/p/o;->a:I

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 37
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sleepycat/b/p/o;->e()Lcom/sleepycat/b/p/af;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/b/p/o;->c:Lcom/sleepycat/b/p/ag;

    .line 1068
    iget v0, v0, Lcom/sleepycat/b/p/ag;->b:I

    .line 55
    sget v2, Lcom/sleepycat/b/p/ah;->a:I

    if-ne v0, v2, :cond_0

    .line 56
    iget v2, p0, Lcom/sleepycat/b/p/o;->a:I

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/af;->a(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-object v1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    .line 2031
    iget v0, p0, Lcom/sleepycat/b/p/o;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 15
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    iget v1, p0, Lcom/sleepycat/b/p/o;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sleepycat/b/p/o;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 41
    return-void
.end method

.method public final t_()V
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sleepycat/b/p/o;->a:I

    neg-int v0, v0

    iput v0, p0, Lcom/sleepycat/b/p/o;->a:I

    .line 64
    return-void
.end method
