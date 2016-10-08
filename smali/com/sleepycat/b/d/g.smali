.class final Lcom/sleepycat/b/d/g;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field private final a:Lcom/sleepycat/b/p/d;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/p/d;)V
    .locals 0

    .prologue
    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    iput-object p1, p0, Lcom/sleepycat/b/d/g;->a:Lcom/sleepycat/b/p/d;

    .line 1246
    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/sleepycat/b/d/g;->a:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 1251
    return-void
.end method
