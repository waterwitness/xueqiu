.class final Lrx/a/d/c;
.super Lrx/h;
.source "HandlerThreadScheduler.java"


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Lrx/j/b;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 52
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/a/d/c;->b:Lrx/j/b;

    .line 55
    iput-object p1, p0, Lrx/a/d/c;->a:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 3

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/a/d/c;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lrx/d/b/b;

    invoke-direct {v0, p1}, Lrx/d/b/b;-><init>(Lrx/c/a;)V

    .line 71
    new-instance v1, Lrx/a/d/c$1;

    invoke-direct {v1, p0, v0}, Lrx/a/d/c$1;-><init>(Lrx/a/d/c;Lrx/d/b/b;)V

    invoke-static {v1}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v1

    .line 1083
    iget-object v2, v0, Lrx/d/b/b;->a:Lrx/j/b;

    invoke-virtual {v2, v1}, Lrx/j/b;->a(Lrx/j;)V

    .line 77
    iget-object v1, p0, Lrx/a/d/c;->b:Lrx/j/b;

    invoke-virtual {v0, v1}, Lrx/d/b/b;->a(Lrx/j/b;)V

    .line 78
    iget-object v1, p0, Lrx/a/d/c;->b:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/j;)V

    .line 80
    iget-object v1, p0, Lrx/a/d/c;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lrx/a/d/c;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    .line 61
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lrx/a/d/c;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    return v0
.end method
