.class final Lcom/sleepycat/b/i/b/j$1;
.super Ljava/lang/Object;
.source "Learner.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/b/j;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/h/x;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/b/j;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/j;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sleepycat/b/i/b/j$1;->a:Lcom/sleepycat/b/i/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j$1;->a:Lcom/sleepycat/b/i/b/j;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j$1;->a:Lcom/sleepycat/b/i/b/j;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/j;)Lcom/sleepycat/b/c/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j$1;->a:Lcom/sleepycat/b/i/b/j;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Learner notified. Proposal:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 101
    return-void
.end method
