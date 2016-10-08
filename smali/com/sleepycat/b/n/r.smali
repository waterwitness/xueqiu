.class public final Lcom/sleepycat/b/n/r;
.super Ljava/lang/Object;
.source "LockerFactory.java"


# direct methods
.method public static a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Transaction cannot be used because the database was opened non-transactionally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 136
    if-eqz p1, :cond_1

    .line 144
    invoke-static {p1}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->j_()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const/4 p3, 0x1

    .line 150
    :cond_1
    invoke-static {p0, v0, p3}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Z)Lcom/sleepycat/b/n/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/n/r;->b(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Z)Lcom/sleepycat/b/n/q;
    .locals 2

    .prologue
    .line 211
    .line 6206
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 213
    if-nez p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->d()Lcom/sleepycat/b/bp;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_1

    .line 216
    invoke-static {v1}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/n/q;

    move-result-object p1

    .line 235
    :cond_0
    :goto_0
    return-object p1

    .line 220
    :cond_1
    if-nez p1, :cond_2

    .line 222
    invoke-static {v0}, Lcom/sleepycat/b/n/y;->b(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/y;

    move-result-object p1

    goto :goto_0

    .line 230
    :cond_2
    if-eqz p2, :cond_0

    .line 231
    invoke-static {v0, p1}, Lcom/sleepycat/b/n/t;->b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/t;

    move-result-object p1

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    .locals 3

    .prologue
    .line 61
    .line 3206
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 3326
    iget-boolean v0, v1, Lcom/sleepycat/b/c/ad;->e:Z

    .line 64
    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->d()Lcom/sleepycat/b/bp;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    invoke-static {v2}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    if-eqz p3, :cond_3

    if-nez p1, :cond_3

    .line 5232
    iget-object v2, p0, Lcom/sleepycat/b/x;->b:Lcom/sleepycat/b/br;

    .line 77
    if-eqz p4, :cond_2

    sget-object v0, Lcom/sleepycat/b/g/av;->f:Lcom/sleepycat/b/g/av;

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/n/z;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    goto :goto_1

    .line 83
    :cond_3
    if-nez p1, :cond_4

    .line 85
    invoke-static {v1}, Lcom/sleepycat/b/n/y;->b(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/y;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_4
    if-nez p2, :cond_5

    if-nez v0, :cond_5

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Transaction cannot be used because the environment was opened non-transactionally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_5
    if-nez p3, :cond_6

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Transaction cannot be used because the database was opened non-transactionally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_6
    invoke-static {p1}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->j_()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {v1, v0}, Lcom/sleepycat/b/n/t;->b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/t;

    move-result-object v0

    goto :goto_0
.end method
