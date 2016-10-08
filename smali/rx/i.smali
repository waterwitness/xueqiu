.class public abstract Lrx/i;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/e;
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e",
        "<TT;>;",
        "Lrx/j;"
    }
.end annotation


# instance fields
.field private final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Lrx/f;

.field private c:J

.field public final e:Lrx/d/c/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lrx/i;->c:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/i;->a:Lrx/i;

    .line 44
    new-instance v0, Lrx/d/c/j;

    invoke-direct {v0}, Lrx/d/c/j;-><init>()V

    iput-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    .line 45
    return-void
.end method

.method public constructor <init>(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lrx/i;->c:J

    .line 48
    iput-object p1, p0, Lrx/i;->a:Lrx/i;

    .line 49
    iget-object v0, p1, Lrx/i;->e:Lrx/d/c/j;

    iput-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v1, p0, Lrx/i;->b:Lrx/f;

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lrx/i;->b:Lrx/f;

    .line 104
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    .line 109
    :cond_0
    return-void

    .line 102
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lrx/i;->c:J

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lrx/f;)V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 118
    const/4 v0, 0x0

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v2, p0, Lrx/i;->c:J

    .line 121
    iput-object p1, p0, Lrx/i;->b:Lrx/f;

    .line 122
    iget-object v1, p0, Lrx/i;->a:Lrx/i;

    if-eqz v1, :cond_0

    .line 124
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 130
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lrx/i;->a:Lrx/i;

    iget-object v1, p0, Lrx/i;->b:Lrx/f;

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 142
    :goto_0
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 136
    :cond_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lrx/i;->b:Lrx/f;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lrx/i;->b:Lrx/f;

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0
.end method

.method public final a(Lrx/j;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0, p1}, Lrx/d/c/j;->a(Lrx/j;)V

    .line 62
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 67
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
