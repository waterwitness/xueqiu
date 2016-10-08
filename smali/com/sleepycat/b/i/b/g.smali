.class public final Lcom/sleepycat/b/i/b/g;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/sleepycat/b/i/b/v;

.field final synthetic c:Lcom/sleepycat/b/i/b/d;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/d;Ljava/util/Set;Lcom/sleepycat/b/i/b/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lcom/sleepycat/b/i/b/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 815
    iput-object p1, p0, Lcom/sleepycat/b/i/b/g;->c:Lcom/sleepycat/b/i/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-object p2, p0, Lcom/sleepycat/b/i/b/g;->a:Ljava/util/Set;

    .line 817
    iput-object p3, p0, Lcom/sleepycat/b/i/b/g;->b:Lcom/sleepycat/b/i/b/v;

    .line 818
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 821
    iget-object v0, p0, Lcom/sleepycat/b/i/b/g;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/g;->b:Lcom/sleepycat/b/i/b/v;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/g;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->e(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/x;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/b/g;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v3}, Lcom/sleepycat/b/i/b/d;->f(Lcom/sleepycat/b/i/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/b/g;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v4}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/b/g;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v5}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v5

    .line 1520
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 821
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;Lcom/sleepycat/b/i/b/v;Lcom/sleepycat/b/i/b/x;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/aj;Ljava/util/logging/Formatter;)V

    .line 828
    return-void
.end method
