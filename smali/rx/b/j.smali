.class public final Lrx/b/j;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4

    .prologue
    .line 90
    .line 1141
    const/4 v0, 0x0

    move-object v2, p0

    .line 1142
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1143
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stack too deep to get final cause"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lrx/b/k;

    if-eqz v1, :cond_2

    .line 93
    check-cast v0, Lrx/b/k;

    .line 2129
    iget-object v0, v0, Lrx/b/k;->a:Ljava/lang/Object;

    .line 93
    if-ne v0, p1, :cond_2

    .line 99
    :goto_2
    return-object p0

    .line 1147
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1149
    goto :goto_1

    .line 98
    :cond_2
    new-instance v0, Lrx/b/k;

    invoke-direct {v0, p1}, Lrx/b/k;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lrx/b/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
