.class public final Lrx/d/c/a/d;
.super Lrx/d/c/a/e;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/e",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lrx/d/c/a/e;-><init>(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 4

    .prologue
    .line 239
    .line 5081
    iget-wide v0, p0, Lrx/d/c/a/e;->g:J

    .line 6047
    iget-wide v2, p0, Lrx/d/c/a/h;->i:J

    .line 239
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v8, p0, Lrx/d/c/a/d;->e:[J

    .line 1047
    :cond_1
    iget-wide v4, p0, Lrx/d/c/a/h;->i:J

    .line 132
    invoke-virtual {p0, v4, v5}, Lrx/d/c/a/d;->d(J)J

    move-result-wide v10

    .line 133
    invoke-static {v8, v10, v11}, Lrx/d/c/a/d;->a([JJ)J

    move-result-wide v0

    .line 134
    sub-long/2addr v0, v4

    .line 136
    cmp-long v2, v0, v12

    if-nez v2, :cond_2

    .line 138
    const-wide/16 v0, 0x1

    add-long v6, v4, v0

    .line 1051
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/d/c/a/h;->h:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, v4, v5}, Lrx/d/c/a/d;->a(J)J

    move-result-wide v0

    .line 153
    invoke-virtual {p0, v0, v1, p1}, Lrx/d/c/a/d;->a(JLjava/lang/Object;)V

    .line 157
    invoke-static {v8, v10, v11, v6, v7}, Lrx/d/c/a/d;->a([JJJ)V

    .line 159
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 143
    :cond_2
    cmp-long v0, v0, v12

    if-gez v0, :cond_1

    .line 145
    const/4 v0, 0x0

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
    .line 212
    .line 2081
    iget-wide v0, p0, Lrx/d/c/a/e;->g:J

    .line 212
    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/d;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/d;->b(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v8, p0, Lrx/d/c/a/d;->e:[J

    .line 1081
    :cond_0
    iget-wide v4, p0, Lrx/d/c/a/e;->g:J

    .line 176
    invoke-virtual {p0, v4, v5}, Lrx/d/c/a/d;->d(J)J

    move-result-wide v10

    .line 177
    invoke-static {v8, v10, v11}, Lrx/d/c/a/d;->a([JJ)J

    move-result-wide v0

    .line 178
    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 180
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 181
    const-wide/16 v0, 0x1

    add-long v6, v4, v0

    .line 1085
    sget-object v0, Lrx/d/c/a/x;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/d/c/a/e;->f:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    .line 181
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v4, v5}, Lrx/d/c/a/d;->a(J)J

    move-result-wide v2

    .line 200
    invoke-virtual {p0, v2, v3}, Lrx/d/c/a/d;->b(J)Ljava/lang/Object;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lrx/d/c/a/d;->a(JLjava/lang/Object;)V

    .line 205
    iget v1, p0, Lrx/d/c/a/d;->b:I

    int-to-long v2, v1

    add-long/2addr v2, v4

    invoke-static {v8, v10, v11, v2, v3}, Lrx/d/c/a/d;->a([JJJ)V

    .line 207
    :goto_0
    return-object v0

    .line 186
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 6

    .prologue
    .line 222
    .line 3081
    iget-wide v0, p0, Lrx/d/c/a/e;->g:J

    .line 4047
    :goto_0
    iget-wide v4, p0, Lrx/d/c/a/h;->i:J

    .line 4081
    iget-wide v2, p0, Lrx/d/c/a/e;->g:J

    .line 227
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 228
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    .line 230
    goto :goto_0
.end method
