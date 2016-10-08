.class public final Lrx/i/a;
.super Lrx/i/l;
.source "AsyncSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i/l",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/i/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/m",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile c:Ljava/lang/Object;

.field private final d:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/b;Lrx/i/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b",
            "<TT;>;",
            "Lrx/i/m",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lrx/i/l;-><init>(Lrx/b;)V

    .line 83
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/i/a;->d:Lrx/d/a/a;

    .line 87
    iput-object p2, p0, Lrx/i/a;->b:Lrx/i/m;

    .line 88
    return-void
.end method

.method public static k()Lrx/i/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/i/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lrx/i/m;

    invoke-direct {v0}, Lrx/i/m;-><init>()V

    .line 67
    new-instance v1, Lrx/i/a$1;

    invoke-direct {v1, v0}, Lrx/i/a$1;-><init>(Lrx/i/m;)V

    iput-object v1, v0, Lrx/i/m;->h:Lrx/c/b;

    .line 78
    new-instance v1, Lrx/i/a;

    invoke-direct {v1, v0, v0}, Lrx/i/a;-><init>(Lrx/b;Lrx/i/m;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lrx/i/a;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lrx/i/a;->c:Ljava/lang/Object;

    .line 94
    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    .line 97
    :cond_0
    iget-object v1, p0, Lrx/i/a;->b:Lrx/i/m;

    invoke-virtual {v1, v0}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 98
    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 99
    invoke-virtual {v4}, Lrx/i/o;->a()V

    .line 97
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v0}, Lrx/d/a/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/i/o;->a(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v4}, Lrx/i/o;->a()V

    goto :goto_1

    .line 106
    :cond_2
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
    .line 136
    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/i/a;->c:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lrx/i/a;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_2

    .line 111
    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    .line 113
    iget-object v3, p0, Lrx/i/a;->b:Lrx/i/m;

    invoke-virtual {v3, v1}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 115
    :try_start_0
    invoke-virtual {v5, p1}, Lrx/i/o;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v5

    .line 117
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/b/f;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 132
    :cond_2
    return-void

    .line 128
    :cond_3
    new-instance v1, Lrx/b/a;

    invoke-direct {v1, v0}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v1
.end method
