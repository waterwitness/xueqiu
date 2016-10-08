.class final Lrx/d/a/u$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/u;-><init>(Lrx/g;Lrx/i;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/u;


# direct methods
.method constructor <init>(Lrx/d/a/u;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lrx/d/a/u$1;->a:Lrx/d/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lrx/d/a/u;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v1, p0, Lrx/d/a/u$1;->a:Lrx/d/a/u;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 95
    iget-object v0, p0, Lrx/d/a/u$1;->a:Lrx/d/a/u;

    invoke-virtual {v0}, Lrx/d/a/u;->e()V

    .line 96
    return-void
.end method
