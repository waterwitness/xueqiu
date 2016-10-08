.class public final Lrx/j/b;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lrx/j;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/j/b;->b:Z

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lrx/j;)V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lrx/j/b;->b:Z

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
    iget-object v1, p0, Lrx/j/b;->a:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lrx/j/b;->a:Ljava/util/Set;

    .line 66
    :cond_2
    iget-object v1, p0, Lrx/j/b;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lrx/j/b;->b:Z

    if-eqz v0, :cond_1

    .line 118
    monitor-exit p0

    .line 124
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/j/b;->b:Z

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lrx/j/b;->a:Ljava/util/Set;

    .line 1127
    if-eqz v0, :cond_0

    .line 1130
    const/4 v1, 0x0

    .line 1131
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/j;

    .line 1133
    :try_start_1
    invoke-interface {v0}, Lrx/j;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v3

    .line 1135
    if-nez v1, :cond_5

    .line 1136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1140
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1141
    :cond_2
    if-eqz v1, :cond_0

    .line 1142
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1143
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 1144
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 1145
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1147
    :cond_3
    new-instance v0, Lrx/b/a;

    invoke-direct {v0, v1}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v0

    .line 1151
    :cond_4
    new-instance v0, Lrx/b/a;

    invoke-direct {v0, v1}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Lrx/j;)V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lrx/j/b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/j/b;->a:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 86
    :cond_0
    monitor-exit p0

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lrx/j/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_1

    .line 92
    invoke-interface {p1}, Lrx/j;->b()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrx/j/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
