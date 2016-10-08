.class public final Lrx/i/o;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field protected volatile f:Z

.field volatile g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i/o;->b:Z

    .line 220
    iput-object p1, p0, Lrx/i/o;->a:Lrx/e;

    .line 221
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lrx/i/o;->a:Lrx/e;

    invoke-interface {v0}, Lrx/e;->a()V

    .line 233
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lrx/i/o;->a:Lrx/e;

    invoke-interface {v0, p1}, Lrx/e;->a(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lrx/i/o;->a:Lrx/e;

    invoke-interface {v0, p1}, Lrx/e;->a(Ljava/lang/Throwable;)V

    .line 229
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    iget-boolean v0, p0, Lrx/i/o;->e:Z

    if-nez v0, :cond_2

    .line 242
    monitor-enter p0

    .line 243
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lrx/i/o;->b:Z

    .line 244
    iget-boolean v0, p0, Lrx/i/o;->c:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lrx/i/o;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/i/o;->d:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Lrx/i/o;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    monitor-exit p0

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i/o;->e:Z

    .line 254
    :cond_2
    iget-object v0, p0, Lrx/i/o;->a:Lrx/e;

    invoke-static {v0, p1}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v3, p0, Lrx/i/o;->b:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lrx/i/o;->c:Z

    if-eqz v3, :cond_2

    .line 265
    :cond_0
    monitor-exit p0

    .line 1300
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/i/o;->b:Z

    .line 268
    if-eqz p1, :cond_4

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lrx/i/o;->c:Z

    .line 269
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    if-eqz p1, :cond_1

    move-object v3, v0

    move v0, v1

    .line 1285
    :goto_2
    if-eqz v3, :cond_5

    .line 1286
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1287
    invoke-virtual {p0, v4}, Lrx/i/o;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1305
    :catchall_0
    move-exception v0

    :goto_4
    if-nez v2, :cond_3

    .line 1306
    monitor-enter p0

    .line 1307
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lrx/i/o;->c:Z

    .line 1308
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_3
    throw v0

    :cond_4
    move v3, v2

    .line 268
    goto :goto_1

    .line 269
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1290
    :cond_5
    if-eqz v0, :cond_6

    .line 1292
    :try_start_4
    invoke-virtual {p0, p1}, Lrx/i/o;->d(Ljava/lang/Object;)V

    move v0, v2

    .line 1294
    :cond_6
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1295
    :try_start_5
    iget-object v3, p0, Lrx/i/o;->d:Ljava/util/List;

    .line 1296
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/i/o;->d:Ljava/util/List;

    .line 1297
    if-nez v3, :cond_7

    .line 1298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/i/o;->c:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1300
    :try_start_6
    monitor-exit p0

    goto :goto_0

    .line 1302
    :catchall_2
    move-exception v0

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1305
    :catchall_3
    move-exception v0

    move v2, v1

    goto :goto_4

    .line 1302
    :cond_7
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move v1, v2

    goto :goto_5

    .line 1308
    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method

.method protected final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lrx/i/o;->a:Lrx/e;

    invoke-static {v0, p1}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    .line 321
    :cond_0
    return-void
.end method
