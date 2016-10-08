.class final Lrx/i/d$1;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/i/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lrx/i/o",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i/e;


# direct methods
.method constructor <init>(Lrx/i/e;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lrx/i/d$1;->a:Lrx/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    check-cast p1, Lrx/i/o;

    .line 1306
    monitor-enter p1

    .line 1307
    :try_start_0
    iget-boolean v0, p1, Lrx/i/o;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lrx/i/o;->c:Z

    if-eqz v0, :cond_1

    .line 1308
    :cond_0
    monitor-exit p1

    .line 1326
    :goto_0
    return-void

    .line 1310
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Lrx/i/o;->b:Z

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p1, Lrx/i/o;->c:Z

    .line 1312
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2333
    :goto_1
    :try_start_1
    iget-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 1316
    check-cast v0, Lrx/i/i;

    .line 1317
    iget-object v3, p0, Lrx/i/d$1;->a:Lrx/i/e;

    .line 2607
    iget-object v3, v3, Lrx/i/e;->g:Lrx/i/i;

    .line 1318
    if-eq v0, v3, :cond_2

    .line 1319
    iget-object v4, p0, Lrx/i/d$1;->a:Lrx/i/e;

    invoke-virtual {v4, v0, p1}, Lrx/i/e;->a(Lrx/i/i;Lrx/i/o;)Lrx/i/i;

    move-result-object v0

    .line 3340
    iput-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 1322
    :cond_2
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1323
    :try_start_2
    iget-object v0, p0, Lrx/i/d$1;->a:Lrx/i/e;

    .line 3607
    iget-object v0, v0, Lrx/i/e;->g:Lrx/i/i;

    .line 1323
    if-ne v3, v0, :cond_4

    .line 1324
    const/4 v0, 0x0

    iput-boolean v0, p1, Lrx/i/o;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1326
    :try_start_3
    monitor-exit p1

    goto :goto_0

    .line 1328
    :catchall_0
    move-exception v0

    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1331
    :catchall_1
    move-exception v0

    move v2, v1

    :goto_3
    if-nez v2, :cond_3

    .line 1332
    monitor-enter p1

    .line 1333
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p1, Lrx/i/o;->c:Z

    .line 1334
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_3
    throw v0

    .line 1312
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1328
    :cond_4
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move v1, v2

    goto :goto_2

    .line 1334
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 1331
    :catchall_5
    move-exception v0

    goto :goto_3
.end method
