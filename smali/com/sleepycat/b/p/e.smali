.class public final Lcom/sleepycat/b/p/e;
.super Lcom/sleepycat/b/p/af;
.source "BooleanStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/p/e;->a:Ljava/lang/Boolean;

    .line 40
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 1029
    iput-object p1, p0, Lcom/sleepycat/b/p/e;->a:Ljava/lang/Boolean;

    .line 13
    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0}, Lcom/sleepycat/b/p/af;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    .line 2024
    iget-object v0, p0, Lcom/sleepycat/b/p/e;->a:Ljava/lang/Boolean;

    .line 13
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sleepycat/b/p/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t_()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
