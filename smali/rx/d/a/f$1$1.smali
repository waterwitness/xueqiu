.class final Lrx/d/a/f$1$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/f$1;->a(Lrx/f;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/d/a/f$1;

.field private volatile c:Z


# direct methods
.method constructor <init>(Lrx/d/a/f$1;Lrx/f;)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lrx/d/a/f$1$1;->b:Lrx/d/a/f$1;

    iput-object p2, p0, Lrx/d/a/f$1$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/f$1$1;->c:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 80
    iget-boolean v0, p0, Lrx/d/a/f$1$1;->c:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lrx/d/a/f$1$1;->b:Lrx/d/a/f$1;

    iget-object v0, v0, Lrx/d/a/f$1;->c:Lrx/d/a/f;

    iget v0, v0, Lrx/d/a/f;->a:I

    int-to-long v0, v0

    div-long v0, v2, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/f$1$1;->c:Z

    .line 86
    iget-object v0, p0, Lrx/d/a/f$1$1;->a:Lrx/f;

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lrx/d/a/f$1$1;->a:Lrx/f;

    iget-object v1, p0, Lrx/d/a/f$1$1;->b:Lrx/d/a/f$1;

    iget-object v1, v1, Lrx/d/a/f$1;->c:Lrx/d/a/f;

    iget v1, v1, Lrx/d/a/f;->a:I

    int-to-long v2, v1

    mul-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0
.end method
