.class public abstract Lcom/sleepycat/b/l/k;
.super Ljava/lang/Object;
.source "INArrayRep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ARRAY_BASE_TYPE:",
        "Ljava/lang/Object;",
        "REP_ENUM_TYPE:",
        "Ljava/lang/Object;",
        "E",
        "LEMENT_TYPE:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TREP_ENUM_TYPE;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE",
            "LEMENT_TYPE;"
        }
    .end annotation
.end method

.method public abstract a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sleepycat/b/l/j;",
            ")TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE",
            "LEMENT_TYPE;",
            "Lcom/sleepycat/b/l/j;",
            ")TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            ")TARRAY_BASE_TYPE;"
        }
    .end annotation
.end method

.method public final a(Lcom/sleepycat/b/l/k;Lcom/sleepycat/b/l/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/k",
            "<TARRAY_BASE_TYPE;TREP_ENUM_TYPE;TE",
            "LEMENT_TYPE;",
            ">;",
            "Lcom/sleepycat/b/l/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    if-nez p2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/b/l/k;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/k;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/b/l/k;->a(ZLcom/sleepycat/b/l/j;)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/sleepycat/b/l/k;->a(ZLcom/sleepycat/b/l/j;)V

    goto :goto_0
.end method

.method abstract a(ZLcom/sleepycat/b/d/b;)V
.end method

.method final a(ZLcom/sleepycat/b/l/j;)V
    .locals 1

    .prologue
    .line 119
    .line 3147
    iget-boolean v0, p2, Lcom/sleepycat/b/l/j;->l:Z

    .line 119
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 3717
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 4133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 4692
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/l/k;->a(ZLcom/sleepycat/b/d/b;)V

    goto :goto_0
.end method

.method public abstract b()J
.end method
