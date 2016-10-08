.class final Lrx/i/e;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/i/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i/j",
        "<TT;",
        "Lrx/i/i",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/h",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lrx/i/g;

.field final c:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile f:Z

.field volatile g:Lrx/i/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/i",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i/g;Lrx/c/f;Lrx/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/g;",
            "Lrx/c/f",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/c/f",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/i/e;->e:Lrx/d/a/a;

    .line 551
    new-instance v0, Lrx/i/h;

    invoke-direct {v0}, Lrx/i/h;-><init>()V

    iput-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    .line 552
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v0, v0, Lrx/i/h;->b:Lrx/i/i;

    iput-object v0, p0, Lrx/i/e;->g:Lrx/i/i;

    .line 553
    iput-object p1, p0, Lrx/i/e;->b:Lrx/i/g;

    .line 554
    iput-object p2, p0, Lrx/i/e;->c:Lrx/c/f;

    .line 555
    iput-object p3, p0, Lrx/i/e;->d:Lrx/c/f;

    .line 556
    return-void
.end method


# virtual methods
.method public final a(Lrx/i/i;Lrx/i/o;)Lrx/i/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/i",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/i/o",
            "<-TT;>;)",
            "Lrx/i/i",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    .line 1607
    :goto_0
    iget-object v0, p0, Lrx/i/e;->g:Lrx/i/i;

    .line 627
    if-eq p1, v0, :cond_0

    .line 628
    iget-object v0, p1, Lrx/i/i;->b:Lrx/i/i;

    .line 2589
    iget-object v1, p0, Lrx/i/e;->d:Lrx/c/f;

    iget-object v0, v0, Lrx/i/i;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    .line 629
    iget-object p1, p1, Lrx/i/i;->b:Lrx/i/i;

    goto :goto_0

    .line 631
    :cond_0
    return-object p1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 567
    iget-boolean v0, p0, Lrx/i/e;->f:Z

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i/e;->f:Z

    .line 570
    iget-object v0, p0, Lrx/i/e;->b:Lrx/i/g;

    iget-object v1, p0, Lrx/i/e;->a:Lrx/i/h;

    invoke-interface {v0, v1}, Lrx/i/g;->a(Lrx/i/h;)V

    .line 572
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v1, p0, Lrx/i/e;->c:Lrx/c/f;

    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/h;->a(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v0, v0, Lrx/i/h;->b:Lrx/i/i;

    iput-object v0, p0, Lrx/i/e;->g:Lrx/i/i;

    .line 576
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 559
    iget-boolean v0, p0, Lrx/i/e;->f:Z

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v1, p0, Lrx/i/e;->c:Lrx/c/f;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/h;->a(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lrx/i/e;->b:Lrx/i/g;

    iget-object v1, p0, Lrx/i/e;->a:Lrx/i/h;

    invoke-interface {v0, v1}, Lrx/i/g;->a(Lrx/i/h;)V

    .line 562
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v0, v0, Lrx/i/h;->b:Lrx/i/i;

    iput-object v0, p0, Lrx/i/e;->g:Lrx/i/i;

    .line 564
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 579
    iget-boolean v0, p0, Lrx/i/e;->f:Z

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i/e;->f:Z

    .line 582
    iget-object v0, p0, Lrx/i/e;->b:Lrx/i/g;

    iget-object v1, p0, Lrx/i/e;->a:Lrx/i/h;

    invoke-interface {v0, v1}, Lrx/i/g;->a(Lrx/i/h;)V

    .line 584
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v1, p0, Lrx/i/e;->c:Lrx/c/f;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/h;->a(Ljava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v0, v0, Lrx/i/h;->b:Lrx/i/i;

    iput-object v0, p0, Lrx/i/e;->g:Lrx/i/i;

    .line 587
    :cond_0
    return-void
.end method

.method public final a(Lrx/i/o;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/o",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 611
    monitor-enter p1

    .line 612
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p1, Lrx/i/o;->b:Z

    .line 613
    iget-boolean v1, p1, Lrx/i/o;->c:Z

    if-eqz v1, :cond_0

    .line 614
    monitor-exit p1

    .line 621
    :goto_0
    return v0

    .line 616
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    iget-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 618
    check-cast v0, Lrx/i/i;

    .line 619
    invoke-virtual {p0, v0, p1}, Lrx/i/e;->a(Lrx/i/i;Lrx/i/o;)Lrx/i/i;

    move-result-object v0

    .line 1340
    iput-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 621
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
