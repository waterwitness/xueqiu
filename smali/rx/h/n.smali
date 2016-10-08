.class final Lrx/h/n;
.super Lrx/h;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/j;


# instance fields
.field final a:Lrx/j/a;

.field final synthetic b:Lrx/h/m;


# direct methods
.method private constructor <init>(Lrx/h/m;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lrx/h/n;->b:Lrx/h/m;

    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 46
    new-instance v0, Lrx/j/a;

    invoke-direct {v0}, Lrx/j/a;-><init>()V

    iput-object v0, p0, Lrx/h/n;->a:Lrx/j/a;

    return-void
.end method

.method synthetic constructor <init>(Lrx/h/m;B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lrx/h/n;-><init>(Lrx/h/m;)V

    return-void
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 1

    .prologue
    .line 58
    invoke-interface {p1}, Lrx/c/a;->a()V

    .line 59
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 4

    .prologue
    .line 1146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 53
    new-instance v2, Lrx/h/q;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/h/q;-><init>(Lrx/c/a;Lrx/h;J)V

    invoke-virtual {p0, v2}, Lrx/h/n;->a(Lrx/c/a;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/h/n;->a:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->b()V

    .line 65
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lrx/h/n;->a:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->c()Z

    move-result v0

    return v0
.end method
