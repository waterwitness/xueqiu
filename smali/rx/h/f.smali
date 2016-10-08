.class final Lrx/h/f;
.super Lrx/h;
.source "EventLoopsScheduler.java"


# instance fields
.field private final a:Lrx/j/b;

.field private final b:Lrx/h/h;


# direct methods
.method constructor <init>(Lrx/h/h;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 72
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/h/f;->a:Lrx/j/b;

    .line 76
    iput-object p1, p0, Lrx/h/f;->b:Lrx/h/h;

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 3

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/h/f;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lrx/h/f;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lrx/h/f;->b:Lrx/h/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/h/h;->b(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/d/b/b;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lrx/h/f;->a:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/j;)V

    .line 103
    iget-object v1, p0, Lrx/h/f;->a:Lrx/j/b;

    invoke-virtual {v0, v1}, Lrx/d/b/b;->a(Lrx/j/b;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lrx/h/f;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    .line 83
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lrx/h/f;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    return v0
.end method
