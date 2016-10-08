.class public final Lcom/sleepycat/b/p/l;
.super Lcom/sleepycat/b/p/af;
.source "FloatStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/p/l;->a:F

    .line 61
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget v1, p0, Lcom/sleepycat/b/p/l;->a:F

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/p/l;->a:F

    .line 42
    return-void
.end method

.method public final a(Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/p/l;->a:F

    .line 37
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/p/l;->a(Ljava/lang/Float;)V

    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sleepycat/b/p/l;->e()Lcom/sleepycat/b/p/af;

    move-result-object v1

    .line 47
    iget-object v0, p0, Lcom/sleepycat/b/p/l;->c:Lcom/sleepycat/b/p/ag;

    .line 1068
    iget v0, v0, Lcom/sleepycat/b/p/ag;->b:I

    .line 47
    sget v2, Lcom/sleepycat/b/p/ah;->a:I

    if-ne v0, v2, :cond_0

    .line 2031
    iget v0, p0, Lcom/sleepycat/b/p/l;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/af;->a(Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-object v1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    .line 3031
    iget v0, p0, Lcom/sleepycat/b/p/l;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 15
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sleepycat/b/p/l;->a:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t_()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sleepycat/b/p/l;->a:F

    neg-float v0, v0

    iput v0, p0, Lcom/sleepycat/b/p/l;->a:F

    .line 56
    return-void
.end method
