.class final Lcom/sleepycat/b/c/bh$1;
.super Lcom/sleepycat/b/c/bj;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Z)V
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p2, p0, Lcom/sleepycat/b/c/bh$1;->a:Z

    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/bj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    .locals 1

    .prologue
    .line 55
    instance-of v0, p2, Lcom/sleepycat/b/m/a;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/x;

    move-result-object v0

    .line 58
    check-cast p2, Lcom/sleepycat/b/m/a;

    invoke-interface {p2, v0}, Lcom/sleepycat/b/m/a;->a(Lcom/sleepycat/b/x;)V

    .line 61
    :cond_0
    return-void
.end method
