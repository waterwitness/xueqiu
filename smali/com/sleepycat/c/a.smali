.class public final Lcom/sleepycat/c/a;
.super Ljava/lang/Object;
.source "ClassResolver.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 114
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    if-nez v0, :cond_2

    .line 123
    :goto_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_2
    move-exception v0

    .line 125
    if-nez v1, :cond_1

    .line 129
    :goto_2
    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method
