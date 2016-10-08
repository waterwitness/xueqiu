.class public final Lrx/d/c/a/q;
.super Lrx/d/c/a/v;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/v",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lrx/d/c/a/v;-><init>(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lrx/d/c/a/q;->d:[Ljava/lang/Object;

    .line 126
    iget-wide v2, p0, Lrx/d/c/a/q;->h:J

    iget-wide v4, p0, Lrx/d/c/a/q;->i:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 127
    iget-wide v2, p0, Lrx/d/c/a/q;->h:J

    iget v1, p0, Lrx/d/c/a/q;->e:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lrx/d/c/a/q;->a(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lrx/d/c/a/q;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-wide v2, p0, Lrx/d/c/a/q;->h:J

    iget v1, p0, Lrx/d/c/a/q;->e:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/d/c/a/q;->i:J

    .line 132
    :cond_2
    iget-wide v2, p0, Lrx/d/c/a/q;->h:J

    invoke-virtual {p0, v2, v3}, Lrx/d/c/a/q;->a(J)J

    move-result-wide v2

    .line 133
    iget-wide v4, p0, Lrx/d/c/a/q;->h:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lrx/d/c/a/q;->h:J

    .line 134
    invoke-static {v0, v2, v3, p1}, Lrx/d/c/a/q;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 164
    iget-wide v0, p0, Lrx/d/c/a/q;->f:J

    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/q;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/q;->c(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-wide v2, p0, Lrx/d/c/a/q;->f:J

    invoke-virtual {p0, v2, v3}, Lrx/d/c/a/q;->a(J)J

    move-result-wide v2

    .line 147
    iget-object v4, p0, Lrx/d/c/a/q;->d:[Ljava/lang/Object;

    .line 148
    invoke-static {v4, v2, v3}, Lrx/d/c/a/q;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 149
    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-wide v6, p0, Lrx/d/c/a/q;->f:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lrx/d/c/a/q;->f:J

    .line 153
    invoke-static {v4, v2, v3, v0}, Lrx/d/c/a/q;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    .line 154
    goto :goto_0
.end method

.method public final size()I
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lrx/d/c/a/q;->a()J

    move-result-wide v0

    .line 1053
    :goto_0
    sget-object v2, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lrx/d/c/a/w;->g:J

    invoke-virtual {v2, p0, v4, v5}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 178
    invoke-virtual {p0}, Lrx/d/c/a/q;->a()J

    move-result-wide v2

    .line 179
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 180
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    .line 182
    goto :goto_0
.end method
