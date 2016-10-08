.class final Lrx/d/a/f$2;
.super Lrx/i;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lrx/i;

.field final synthetic d:Lrx/d/a/f;


# direct methods
.method constructor <init>(Lrx/d/a/f;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iput-object p3, p0, Lrx/d/a/f$2;->c:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    iget-object v2, p0, Lrx/d/a/f$2;->c:Lrx/i;

    invoke-virtual {v2, v0}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_2
    invoke-virtual {p0, v0}, Lrx/d/a/f$2;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    iget-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    :goto_1
    return-void

    .line 225
    :cond_0
    :try_start_3
    iget-object v0, p0, Lrx/d/a/f$2;->c:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    iget-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 194
    iget v0, p0, Lrx/d/a/f$2;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/d/a/f$2;->b:I

    iget-object v1, p0, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v1, v1, Lrx/d/a/f;->b:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v2, v2, Lrx/d/a/f;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lrx/d/a/f$2;->d:Lrx/d/a/f;

    iget v3, v3, Lrx/d/a/f;->a:I

    if-ne v2, v3, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 204
    iget-object v2, p0, Lrx/d/a/f$2;->c:Lrx/i;

    invoke-virtual {v2, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lrx/d/a/f$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lrx/d/a/f$2;->c:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public final a(Lrx/f;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lrx/d/a/f$2;->c:Lrx/i;

    new-instance v1, Lrx/d/a/f$2$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/f$2$1;-><init>(Lrx/d/a/f$2;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 190
    return-void
.end method
