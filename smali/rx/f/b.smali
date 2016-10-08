.class public final Lrx/f/b;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

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


# static fields
.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Lrx/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/f/b;->e:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/f/b;->f:Ljava/lang/Object;

    return-void
.end method

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
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lrx/f/b;->b:Z

    .line 39
    iput-boolean v0, p0, Lrx/f/b;->c:Z

    .line 76
    iput-object p1, p0, Lrx/f/b;->a:Lrx/e;

    .line 77
    return-void
.end method

.method private a(Lrx/f/d;)V
    .locals 6

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget v0, p1, Lrx/f/d;->b:I

    if-nez v0, :cond_1

    .line 212
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p1, Lrx/f/d;->a:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 197
    if-eqz v0, :cond_0

    .line 200
    sget-object v4, Lrx/f/b;->e:Ljava/lang/Object;

    if-ne v0, v4, :cond_2

    .line 201
    iget-object v0, p0, Lrx/f/b;->a:Lrx/e;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lrx/e;->a(Ljava/lang/Object;)V

    .line 196
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_2
    sget-object v4, Lrx/f/b;->f:Ljava/lang/Object;

    if-ne v0, v4, :cond_3

    .line 203
    iget-object v0, p0, Lrx/f/b;->a:Lrx/e;

    invoke-interface {v0}, Lrx/e;->a()V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lrx/f/c;

    if-ne v4, v5, :cond_4

    .line 205
    iget-object v4, p0, Lrx/f/b;->a:Lrx/e;

    check-cast v0, Lrx/f/c;

    iget-object v0, v0, Lrx/f/c;->a:Ljava/lang/Throwable;

    invoke-interface {v4, v0}, Lrx/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 209
    :cond_4
    iget-object v4, p0, Lrx/f/b;->a:Lrx/e;

    invoke-interface {v4, v0}, Lrx/e;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lrx/f/b;->c:Z

    if-eqz v0, :cond_0

    .line 84
    monitor-exit p0

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/f/b;->c:Z

    .line 87
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lrx/f/d;

    invoke-direct {v0}, Lrx/f/d;-><init>()V

    iput-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 91
    :cond_1
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    sget-object v1, Lrx/f/b;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/f/d;->a(Ljava/lang/Object;)V

    .line 92
    monitor-exit p0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lrx/f/b;->b:Z

    .line 95
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-direct {p0, v0}, Lrx/f/b;->a(Lrx/f/d;)V

    .line 99
    iget-object v0, p0, Lrx/f/b;->a:Lrx/e;

    invoke-interface {v0}, Lrx/e;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v3, p0, Lrx/f/b;->c:Z

    if-eqz v3, :cond_0

    .line 134
    monitor-exit p0

    .line 190
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-boolean v3, p0, Lrx/f/b;->b:Z

    if-eqz v3, :cond_3

    .line 137
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lrx/f/d;

    invoke-direct {v0}, Lrx/f/d;-><init>()V

    iput-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 140
    :cond_1
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, p1}, Lrx/f/d;->a(Ljava/lang/Object;)V

    .line 142
    monitor-exit p0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 140
    :cond_2
    :try_start_1
    sget-object p1, Lrx/f/b;->e:Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/f/b;->b:Z

    .line 147
    iget-object v3, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 148
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 156
    :cond_4
    :try_start_2
    invoke-direct {p0, v3}, Lrx/f/b;->a(Lrx/f/d;)V

    .line 157
    if-ne v4, v5, :cond_5

    .line 159
    iget-object v6, p0, Lrx/f/b;->a:Lrx/e;

    invoke-interface {v6, p1}, Lrx/e;->a(Ljava/lang/Object;)V

    .line 161
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 162
    if-lez v4, :cond_8

    .line 163
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 164
    :try_start_3
    iget-object v3, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 165
    const/4 v6, 0x0

    iput-object v6, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 166
    if-nez v3, :cond_7

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/f/b;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 169
    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 171
    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 175
    :catchall_2
    move-exception v0

    move v2, v1

    :goto_3
    if-nez v2, :cond_6

    .line 176
    monitor-enter p0

    .line 177
    :try_start_6
    iget-boolean v1, p0, Lrx/f/b;->c:Z

    if-eqz v1, :cond_a

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 184
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_6
    throw v0

    .line 171
    :cond_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 173
    :cond_8
    if-gtz v4, :cond_4

    .line 176
    monitor-enter p0

    .line 177
    :try_start_8
    iget-boolean v1, p0, Lrx/f/b;->c:Z

    if-eqz v1, :cond_9

    .line 178
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 184
    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    invoke-direct {p0, v0}, Lrx/f/b;->a(Lrx/f/d;)V

    goto :goto_0

    .line 181
    :cond_9
    const/4 v1, 0x0

    :try_start_9
    iput-boolean v1, p0, Lrx/f/b;->b:Z

    goto :goto_5

    .line 184
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 181
    :cond_a
    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p0, Lrx/f/b;->b:Z

    goto :goto_4

    .line 184
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 175
    :catchall_5
    move-exception v0

    goto :goto_3

    .line 171
    :catchall_6
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 104
    invoke-static {p1}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lrx/f/b;->c:Z

    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    .line 125
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-boolean v0, p0, Lrx/f/b;->b:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lrx/f/d;

    invoke-direct {v0}, Lrx/f/d;-><init>()V

    iput-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 114
    :cond_1
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    new-instance v1, Lrx/f/c;

    invoke-direct {v1, p1}, Lrx/f/c;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/f/d;->a(Ljava/lang/Object;)V

    .line 115
    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 117
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lrx/f/b;->b:Z

    .line 118
    iget-object v0, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/f/b;->d:Lrx/f/d;

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-direct {p0, v0}, Lrx/f/b;->a(Lrx/f/d;)V

    .line 122
    iget-object v0, p0, Lrx/f/b;->a:Lrx/e;

    invoke-interface {v0, p1}, Lrx/e;->a(Ljava/lang/Throwable;)V

    .line 123
    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lrx/f/b;->b:Z

    .line 125
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
