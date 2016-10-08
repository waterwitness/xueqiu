.class public final Lrx/f/a;
.super Lrx/i;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lrx/i;-><init>(Lrx/i;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/f/a;->a:Z

    .line 68
    iput-object p1, p0, Lrx/f/a;->b:Lrx/i;

    .line 69
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->b()Lrx/g/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    :try_start_1
    iget-object v0, p0, Lrx/f/a;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :try_start_2
    invoke-virtual {p0}, Lrx/f/a;->b()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    .line 214
    return-void

    .line 151
    :catch_0
    move-exception v0

    invoke-static {v0}, Lrx/f/a;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    instance-of v1, v0, Lrx/b/i;

    if-eqz v1, :cond_0

    .line 4066
    :try_start_3
    iget-object v1, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v1}, Lrx/d/c/j;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    check-cast v0, Lrx/b/i;

    throw v0

    .line 170
    :catch_2
    move-exception v0

    .line 172
    :try_start_4
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/g/d;->b()Lrx/g/a;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 176
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, Lrx/b/a;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lrx/b/a;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :catch_3
    move-exception v1

    invoke-static {v1}, Lrx/f/a;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 186
    :cond_0
    :try_start_5
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/g/d;->b()Lrx/g/a;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 191
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lrx/f/a;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 201
    new-instance v1, Lrx/b/h;

    const-string v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, Lrx/b/a;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lrx/b/a;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v2, v3}, Lrx/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :catch_4
    move-exception v1

    invoke-static {v1}, Lrx/f/a;->c(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 192
    :catch_5
    move-exception v2

    .line 194
    :try_start_7
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/g/d;->b()Lrx/g/a;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 198
    :goto_3
    new-instance v1, Lrx/b/h;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/b/a;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v2, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0, v6}, Lrx/b/a;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v3, v4}, Lrx/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 196
    :catch_6
    move-exception v1

    invoke-static {v1}, Lrx/f/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 207
    :catch_7
    move-exception v1

    .line 209
    :try_start_8
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->b()Lrx/g/a;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 213
    :goto_4
    new-instance v0, Lrx/b/h;

    invoke-direct {v0, v1}, Lrx/b/h;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 211
    :catch_8
    move-exception v0

    invoke-static {v0}, Lrx/f/a;->c(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static c(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lrx/f/a;->a:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/f/a;->a:Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lrx/f/a;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    invoke-static {v0}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 87
    invoke-direct {p0, v0}, Lrx/f/a;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2066
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 3066
    iget-object v1, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v1}, Lrx/d/c/j;->b()V

    .line 90
    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    iget-boolean v0, p0, Lrx/f/a;->a:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lrx/f/a;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0, v0}, Lrx/f/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 109
    iget-boolean v0, p0, Lrx/f/a;->a:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/f/a;->a:Z

    .line 111
    invoke-direct {p0, p1}, Lrx/f/a;->b(Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    return-void
.end method
