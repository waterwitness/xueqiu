.class public final Lrx/i/b;
.super Lrx/i/l;
.source "BehaviorSubject.java"


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
.field private final b:Lrx/i/m;
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
    .line 118
    invoke-direct {p0, p1}, Lrx/i/l;-><init>(Lrx/b;)V

    .line 115
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/i/b;->c:Lrx/d/a/a;

    .line 119
    iput-object p2, p0, Lrx/i/b;->b:Lrx/i/m;

    .line 120
    return-void
.end method

.method public static c(Ljava/lang/Object;)Lrx/i/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/i/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1098
    new-instance v0, Lrx/i/m;

    invoke-direct {v0}, Lrx/i/m;-><init>()V

    .line 1100
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    invoke-static {p0}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2077
    iput-object v1, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 1102
    new-instance v1, Lrx/i/b$1;

    invoke-direct {v1, v0}, Lrx/i/b$1;-><init>(Lrx/i/m;)V

    iput-object v1, v0, Lrx/i/m;->g:Lrx/c/b;

    .line 1110
    iget-object v1, v0, Lrx/i/m;->g:Lrx/c/b;

    iput-object v1, v0, Lrx/i/m;->h:Lrx/c/b;

    .line 1111
    new-instance v1, Lrx/i/b;

    invoke-direct {v1, v0, v0}, Lrx/i/b;-><init>(Lrx/b;Lrx/i/m;)V

    .line 95
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 124
    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    .line 2081
    iget-object v0, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 125
    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    invoke-virtual {v0, v1}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 128
    iget-object v5, p0, Lrx/i/b;->b:Lrx/i/m;

    iget-object v5, v5, Lrx/i/m;->i:Lrx/d/a/a;

    invoke-virtual {v4, v1}, Lrx/i/o;->b(Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    .line 4081
    iget-object v0, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 163
    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    .line 5077
    iput-object v1, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 4129
    iget-object v0, v0, Lrx/i/m;->a:Lrx/i/n;

    iget-object v2, v0, Lrx/i/n;->b:[Lrx/i/o;

    .line 165
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 166
    iget-object v5, p0, Lrx/i/b;->b:Lrx/i/m;

    iget-object v5, v5, Lrx/i/m;->i:Lrx/d/a/a;

    invoke-virtual {v4, v1}, Lrx/i/o;->b(Ljava/lang/Object;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    .line 3081
    iget-object v0, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 136
    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/i/b;->b:Lrx/i/m;

    iget-boolean v0, v0, Lrx/i/m;->e:Z

    if-eqz v0, :cond_3

    .line 137
    :cond_0
    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 138
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lrx/i/b;->b:Lrx/i/m;

    invoke-virtual {v1, v4}, Lrx/i/m;->b(Ljava/lang/Object;)[Lrx/i/o;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 141
    :try_start_0
    iget-object v7, p0, Lrx/i/b;->b:Lrx/i/m;

    iget-object v7, v7, Lrx/i/m;->i:Lrx/d/a/a;

    invoke-virtual {v1, v4}, Lrx/i/o;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    if-nez v0, :cond_1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_2
    if-eqz v0, :cond_3

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 152
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/b/f;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 158
    :cond_3
    return-void

    .line 154
    :cond_4
    new-instance v1, Lrx/b/a;

    invoke-direct {v1, v0}, Lrx/b/a;-><init>(Ljava/util/Collection;)V

    throw v1
.end method
