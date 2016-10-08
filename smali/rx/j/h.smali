.class final Lrx/j/h;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lrx/j;


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lrx/j/h;->a:Ljava/util/concurrent/Future;

    .line 97
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lrx/j/h;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 101
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lrx/j/h;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method
