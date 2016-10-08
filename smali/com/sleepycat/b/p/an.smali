.class public final Lcom/sleepycat/b/p/an;
.super Lcom/sleepycat/b/p/af;
.source "StringStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


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
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 1038
    iput-object p1, p0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sleepycat/b/p/an;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .line 2033
    iget-object v0, p0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    .line 14
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final t_()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
