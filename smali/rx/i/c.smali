.class public final Lrx/i/c;
.super Lrx/i/l;
.source "PublishSubject.java"


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

.field private final c:Lrx/d/a/a;
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
    .line 78
    invoke-direct {p0, p1}, Lrx/i/l;-><init>(Lrx/b;)V

    .line 75
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/i/c;->c:Lrx/d/a/a;

    .line 79
    iput-object p2, p0, Lrx/i/c;->b:Lrx/i/m;

    .line 80
    return-void
.end method

.method public static k()Lrx/i/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/i/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/i/m;

    invoke-direct {v0}, Lrx/i/m;-><init>()V

    .line 63
    new-instance v1, Lrx/i/c$1;

    invoke-direct {v1, v0}, Lrx/i/c$1;-><init>(Lrx/i/m;)V

    iput-object v1, v0, Lrx/i/m;->h:Lrx/c/b;

    .line 71
    new-instance v1, Lrx/i/c;

    invoke-direct {v1, v0, v0}, Lrx/i/c;-><init>(Lrx/b;Lrx/i/m;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lrx/i/c;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lrx/i/c;->b:Lrx/i/m;

    invoke-virtual {v0, v1}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 87
    iget-object v5, p0, Lrx/i/c;->b:Lrx/i/m;

    iget-object v5, v5, Lrx/i/m;->i:Lrx/d/a/a;

    invoke-virtual {v4, v1}, Lrx/i/o;->b(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lrx/i/c;->b:Lrx/i/m;

    .line 1085
    iget-object v0, v0, Lrx/i/m;->a:Lrx/i/n;

    iget-object v1, v0, Lrx/i/n;->b:[Lrx/i/o;

    .line 120
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 121
    invoke-virtual {v3, p1}, Lrx/i/o;->a(Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lrx/i/c;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 97
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lrx/i/c;->b:Lrx/i/m;

    invoke-virtual {v1, v4}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v1, v5, v2

    .line 100
    :try_start_0
    iget-object v7, p0, Lrx/i/c;->b:Lrx/i/m;

    iget-object v7, v7, Lrx/i/m;->i:Lrx/d/a/a;

    invoke-virtual {v1, v4}, Lrx/i/o;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_1
    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 110
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/b/f;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 116
    :cond_2
    return-void

    .line 112
    :cond_3
    new-instance v1, Lrx/b/a;

    invoke-direct {v1, v0}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v1
.end method
