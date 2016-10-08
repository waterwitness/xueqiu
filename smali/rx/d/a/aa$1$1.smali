.class final Lrx/d/a/aa$1$1;
.super Ljava/lang/Object;
.source "OperatorSkip.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/aa$1;->a(Lrx/f;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/d/a/aa$1;


# direct methods
.method constructor <init>(Lrx/d/a/aa$1;Lrx/f;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lrx/d/a/aa$1$1;->b:Lrx/d/a/aa$1;

    iput-object p2, p0, Lrx/d/a/aa$1$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    .line 70
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lrx/d/a/aa$1$1;->a:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lrx/d/a/aa$1$1;->a:Lrx/f;

    iget-object v1, p0, Lrx/d/a/aa$1$1;->b:Lrx/d/a/aa$1;

    iget-object v1, v1, Lrx/d/a/aa$1;->c:Lrx/d/a/aa;

    iget v1, v1, Lrx/d/a/aa;->a:I

    iget-object v2, p0, Lrx/d/a/aa$1$1;->b:Lrx/d/a/aa$1;

    iget v2, v2, Lrx/d/a/aa$1;->a:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0
.end method
