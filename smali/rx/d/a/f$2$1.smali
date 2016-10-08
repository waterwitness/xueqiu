.class final Lrx/d/a/f$2$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/f$2;->a(Lrx/f;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/d/a/f$2;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method constructor <init>(Lrx/d/a/f$2;Lrx/f;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iput-object p2, p0, Lrx/d/a/f$2$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/f$2$1;->c:Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/f$2$1;->d:Z

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/f$2$1;->d:Z

    .line 142
    iget-object v0, p0, Lrx/d/a/f$2$1;->a:Lrx/f;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    .line 143
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    .line 147
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request a negative number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    iget-boolean v0, p0, Lrx/d/a/f$2$1;->d:Z

    if-nez v0, :cond_0

    .line 156
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    .line 157
    invoke-direct {p0}, Lrx/d/a/f$2$1;->a()V

    goto :goto_0

    .line 160
    :cond_3
    iget-boolean v0, p0, Lrx/d/a/f$2$1;->c:Z

    if-eqz v0, :cond_5

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/f$2$1;->c:Z

    .line 162
    sub-long v0, p1, v6

    iget-object v2, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iget-object v2, v2, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v2, v2, Lrx/d/a/f;->a:I

    int-to-long v2, v2

    sub-long v2, v4, v2

    iget-object v4, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iget-object v4, v4, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v4, v4, Lrx/d/a/f;->b:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 164
    invoke-direct {p0}, Lrx/d/a/f$2$1;->a()V

    goto :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lrx/d/a/f$2$1;->a:Lrx/f;

    iget-object v1, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iget-object v1, v1, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v1, v1, Lrx/d/a/f;->a:I

    int-to-long v2, v1

    iget-object v1, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iget-object v1, v1, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v1, v1, Lrx/d/a/f;->b:I

    int-to-long v4, v1

    sub-long v6, p1, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iget-object v0, v0, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v0, v0, Lrx/d/a/f;->b:I

    int-to-long v0, v0

    div-long v0, v4, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    .line 176
    invoke-direct {p0}, Lrx/d/a/f$2$1;->a()V

    goto :goto_0

    .line 185
    :cond_6
    iget-object v0, p0, Lrx/d/a/f$2$1;->a:Lrx/f;

    iget-object v1, p0, Lrx/d/a/f$2$1;->b:Lrx/d/a/f$2;

    iget-object v1, v1, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v1, v1, Lrx/d/a/f;->b:I

    int-to-long v2, v1

    mul-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0
.end method
