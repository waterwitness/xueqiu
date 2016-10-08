.class public final Lrx/d/c/a/i;
.super Lrx/d/c/a/m;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/c/a/m",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lrx/d/c/a/m;-><init>(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 4

    .prologue
    .line 218
    .line 7079
    iget-wide v0, p0, Lrx/d/c/a/j;->f:J

    .line 8041
    iget-wide v2, p0, Lrx/d/c/a/o;->h:J

    .line 218
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lrx/d/c/a/i;->d:[Ljava/lang/Object;

    .line 1041
    iget-wide v2, p0, Lrx/d/c/a/o;->h:J

    .line 136
    invoke-virtual {p0, v2, v3}, Lrx/d/c/a/i;->a(J)J

    move-result-wide v4

    .line 137
    invoke-static {v0, v4, v5}, Lrx/d/c/a/i;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1079
    iget-wide v6, p0, Lrx/d/c/a/j;->f:J

    .line 139
    sub-long v6, v2, v6

    long-to-int v1, v6

    .line 140
    iget v6, p0, Lrx/d/c/a/i;->b:I

    if-ne v1, v6, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-static {v0, v4, v5}, Lrx/d/c/a/i;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 148
    :cond_2
    invoke-static {v0, v4, v5, p1}, Lrx/d/c/a/i;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 151
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/i;->d(J)V

    .line 152
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
    .line 191
    .line 4079
    iget-wide v0, p0, Lrx/d/c/a/j;->f:J

    .line 191
    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/i;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/d/c/a/i;->c(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 166
    .line 1106
    iget-wide v2, p0, Lrx/d/c/a/p;->i:J

    .line 2079
    :cond_0
    iget-wide v4, p0, Lrx/d/c/a/j;->f:J

    .line 169
    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    .line 3041
    iget-wide v6, p0, Lrx/d/c/a/o;->h:J

    .line 171
    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 186
    :goto_0
    return-object v0

    .line 3110
    :cond_1
    iput-wide v6, p0, Lrx/d/c/a/p;->i:J

    .line 177
    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {p0, v4, v5, v6, v7}, Lrx/d/c/a/i;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0, v4, v5}, Lrx/d/c/a/i;->a(J)J

    move-result-wide v2

    .line 181
    iget-object v4, p0, Lrx/d/c/a/i;->d:[Ljava/lang/Object;

    .line 183
    invoke-static {v4, v2, v3}, Lrx/d/c/a/i;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 185
    invoke-static {v4, v2, v3, v0}, Lrx/d/c/a/i;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    .line 186
    goto :goto_0
.end method

.method public final size()I
    .locals 6

    .prologue
    .line 201
    .line 5079
    iget-wide v0, p0, Lrx/d/c/a/j;->f:J

    .line 6041
    :goto_0
    iget-wide v4, p0, Lrx/d/c/a/o;->h:J

    .line 6079
    iget-wide v2, p0, Lrx/d/c/a/j;->f:J

    .line 206
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 207
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    .line 209
    goto :goto_0
.end method
