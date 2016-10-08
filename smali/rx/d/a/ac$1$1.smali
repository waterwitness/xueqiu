.class final Lrx/d/a/ac$1$1;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ac$1;->a(Lrx/f;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/d/a/ac$1;


# direct methods
.method constructor <init>(Lrx/d/a/ac$1;Lrx/f;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lrx/d/a/ac$1$1;->b:Lrx/d/a/ac$1;

    iput-object p2, p0, Lrx/d/a/ac$1$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lrx/d/a/ac$1$1;->b:Lrx/d/a/ac$1;

    iget-boolean v0, v0, Lrx/d/a/ac$1;->b:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lrx/d/a/ac$1$1;->b:Lrx/d/a/ac$1;

    iget-object v0, v0, Lrx/d/a/ac$1;->d:Lrx/d/a/ac;

    iget v0, v0, Lrx/d/a/ac;->a:I

    iget-object v1, p0, Lrx/d/a/ac$1$1;->b:Lrx/d/a/ac$1;

    iget v1, v1, Lrx/d/a/ac$1;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 86
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 87
    iget-object v0, p0, Lrx/d/a/ac$1$1;->a:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lrx/d/a/ac$1$1;->a:Lrx/f;

    invoke-interface {v2, v0, v1}, Lrx/f;->a(J)V

    goto :goto_0
.end method
