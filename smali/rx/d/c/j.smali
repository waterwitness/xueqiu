.class public final Lrx/d/c/j;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/j;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/c/j;->b:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lrx/j;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lrx/d/c/j;->b:Z

    if-eqz v1, :cond_1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Lrx/j;->b()V

    .line 73
    :cond_0
    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/d/c/j;->a:Ljava/util/List;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lrx/d/c/j;->a:Ljava/util/List;

    .line 66
    :cond_2
    iget-object v1, p0, Lrx/d/c/j;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lrx/d/c/j;->b:Z

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/c/j;->b:Z

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lrx/d/c/j;->a:Ljava/util/List;

    .line 1093
    if-eqz v0, :cond_4

    .line 1097
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/j;

    .line 1099
    :try_start_1
    invoke-interface {v0}, Lrx/j;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1100
    :catch_0
    move-exception v4

    .line 1101
    if-nez v1, :cond_5

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    :goto_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1106
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1107
    :cond_1
    if-eqz v1, :cond_4

    .line 1108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1109
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 1110
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 1111
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1113
    :cond_2
    new-instance v0, Lrx/b/a;

    invoke-direct {v0, v1}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v0

    .line 1117
    :cond_3
    new-instance v0, Lrx/b/a;

    invoke-direct {v0, v1}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v0

    .line 89
    :cond_4
    iput-object v2, p0, Lrx/d/c/j;->a:Ljava/util/List;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrx/d/c/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
