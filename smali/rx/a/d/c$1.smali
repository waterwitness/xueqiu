.class final Lrx/a/d/c$1;
.super Ljava/lang/Object;
.source "HandlerThreadScheduler.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a/d/c;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
.end annotation


# instance fields
.field final synthetic a:Lrx/d/b/b;

.field final synthetic b:Lrx/a/d/c;


# direct methods
.method constructor <init>(Lrx/a/d/c;Lrx/d/b/b;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lrx/a/d/c$1;->b:Lrx/a/d/c;

    iput-object p2, p0, Lrx/a/d/c$1;->a:Lrx/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lrx/a/d/c$1;->b:Lrx/a/d/c;

    .line 1048
    iget-object v0, v0, Lrx/a/d/c;->a:Landroid/os/Handler;

    .line 74
    iget-object v1, p0, Lrx/a/d/c$1;->a:Lrx/d/b/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
