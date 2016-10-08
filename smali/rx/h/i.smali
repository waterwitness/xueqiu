.class final Lrx/h/i;
.super Lrx/g;
.source "ExecutorScheduler.java"


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/h/i;->a:Ljava/util/concurrent/Executor;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lrx/h;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lrx/h/k;

    iget-object v1, p0, Lrx/h/i;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lrx/h/k;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
