.class public abstract Lrx/h;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lrx/c/a;)Lrx/j;
.end method

.method public final a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 8

    .prologue
    .line 111
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 112
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 112
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p6, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 114
    new-instance v2, Lrx/j/c;

    invoke-direct {v2}, Lrx/j/c;-><init>()V

    .line 115
    new-instance v0, Lrx/h$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lrx/h$1;-><init>(Lrx/h;Lrx/j/c;Lrx/c/a;JJ)V

    .line 126
    invoke-virtual {p0, v0, p2, p3, p6}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/j/c;->a(Lrx/j;)V

    .line 127
    return-object v2
.end method

.method public abstract a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
.end method
