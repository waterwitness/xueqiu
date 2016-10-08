.class final Lcom/sleepycat/b/c/bh$11;
.super Lcom/sleepycat/b/c/bj;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->b(Lcom/sleepycat/b/n/z;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/c/i;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sleepycat/b/c/bh$11;->a:Lcom/sleepycat/b/c/i;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/bj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    .locals 2

    .prologue
    .line 261
    instance-of v0, p2, Lcom/sleepycat/b/m/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 262
    check-cast v0, Lcom/sleepycat/b/m/c;

    invoke-interface {v0, p1}, Lcom/sleepycat/b/m/c;->b(Lcom/sleepycat/b/bp;)V

    .line 263
    iget-object v0, p0, Lcom/sleepycat/b/c/bh$11;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/sleepycat/b/m/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sleepycat/b/c/bh$11;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/b/m/d;->a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;

    .line 267
    :cond_0
    return-void
.end method
