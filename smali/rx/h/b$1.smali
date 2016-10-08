.class final Lrx/h/b$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/b;-><init>(Ljava/util/concurrent/TimeUnit;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/h/b;


# direct methods
.method constructor <init>(Lrx/h/b;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/h/b$1;->a:Lrx/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 53
    iget-object v1, p0, Lrx/h/b$1;->a:Lrx/h/b;

    .line 1083
    iget-object v0, v1, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    invoke-static {}, Lrx/h/b;->b()J

    move-result-wide v2

    .line 1086
    iget-object v0, v1, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/d;

    .line 1163
    iget-wide v6, v0, Lrx/h/d;->b:J

    .line 1087
    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    .line 1088
    iget-object v5, v1, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1089
    invoke-virtual {v0}, Lrx/h/d;->b()V

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
