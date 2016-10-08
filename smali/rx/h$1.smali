.class final Lrx/h$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lrx/j/c;

.field final synthetic c:Lrx/c/a;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lrx/h;


# direct methods
.method constructor <init>(Lrx/h;Lrx/j/c;Lrx/c/a;JJ)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lrx/h$1;->f:Lrx/h;

    iput-object p2, p0, Lrx/h$1;->b:Lrx/j/c;

    iput-object p3, p0, Lrx/h$1;->c:Lrx/c/a;

    iput-wide p4, p0, Lrx/h$1;->d:J

    iput-wide p6, p0, Lrx/h$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/h$1;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 119
    iget-object v0, p0, Lrx/h$1;->b:Lrx/j/c;

    .line 1053
    iget-object v0, v0, Lrx/j/c;->a:Lrx/j/d;

    iget-boolean v0, v0, Lrx/j/d;->a:Z

    .line 119
    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lrx/h$1;->c:Lrx/c/a;

    invoke-interface {v0}, Lrx/c/a;->a()V

    .line 121
    iget-wide v0, p0, Lrx/h$1;->d:J

    iget-wide v2, p0, Lrx/h$1;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/h$1;->a:J

    iget-wide v4, p0, Lrx/h$1;->e:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 122
    iget-object v2, p0, Lrx/h$1;->b:Lrx/j/c;

    iget-object v3, p0, Lrx/h$1;->f:Lrx/h;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 122
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/j/c;->a(Lrx/j;)V

    .line 124
    :cond_0
    return-void
.end method
