.class final Lcom/sleepycat/b/i/b/h$1;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/b/h;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/sleepycat/b/i/b/h;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/h;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/sleepycat/b/i/b/h$1;->b:Lcom/sleepycat/b/i/b/h;

    iput-object p2, p0, Lcom/sleepycat/b/i/b/h$1;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h$1;->b:Lcom/sleepycat/b/i/b/h;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->j(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/h$1;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/h$1;->b:Lcom/sleepycat/b/i/b/h;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->f(Lcom/sleepycat/b/i/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;)V

    .line 908
    return-void
.end method
