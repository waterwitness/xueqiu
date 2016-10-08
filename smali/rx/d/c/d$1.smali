.class final Lrx/d/c/d$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/c/d;-><init>(B)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lrx/d/c/d;


# direct methods
.method constructor <init>(Lrx/d/c/d;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-object p1, p0, Lrx/d/c/d$1;->c:Lrx/d/c/d;

    iput v0, p0, Lrx/d/c/d$1;->a:I

    iput v0, p0, Lrx/d/c/d$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lrx/d/c/d$1;->c:Lrx/d/c/d;

    .line 1030
    iget-object v1, v1, Lrx/d/c/d;->a:Ljava/util/Queue;

    .line 62
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    .line 63
    iget v2, p0, Lrx/d/c/d$1;->a:I

    if-ge v1, v2, :cond_0

    .line 64
    iget v2, p0, Lrx/d/c/d$1;->b:I

    sub-int v1, v2, v1

    .line 65
    :goto_0
    if-ge v0, v1, :cond_1

    .line 66
    iget-object v2, p0, Lrx/d/c/d$1;->c:Lrx/d/c/d;

    .line 2030
    iget-object v2, v2, Lrx/d/c/d;->a:Ljava/util/Queue;

    .line 66
    iget-object v3, p0, Lrx/d/c/d$1;->c:Lrx/d/c/d;

    invoke-virtual {v3}, Lrx/d/c/d;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget v2, p0, Lrx/d/c/d$1;->b:I

    if-le v1, v2, :cond_1

    .line 69
    iget v2, p0, Lrx/d/c/d$1;->b:I

    sub-int/2addr v1, v2

    .line 70
    :goto_1
    if-ge v0, v1, :cond_1

    .line 72
    iget-object v2, p0, Lrx/d/c/d$1;->c:Lrx/d/c/d;

    .line 3030
    iget-object v2, v2, Lrx/d/c/d;->a:Ljava/util/Queue;

    .line 72
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method
