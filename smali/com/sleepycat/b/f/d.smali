.class public final Lcom/sleepycat/b/f/d;
.super Ljava/lang/Object;
.source "LatchSupport.java"


# static fields
.field public static a:Lcom/sleepycat/b/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/sleepycat/b/f/e;

    invoke-direct {v0}, Lcom/sleepycat/b/f/e;-><init>()V

    sput-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    .line 1055
    iget-object v0, v0, Lcom/sleepycat/b/f/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    .line 1059
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    .line 1064
    iget-object v0, v0, Lcom/sleepycat/b/f/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    if-eqz v0, :cond_0

    .line 1067
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1068
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    .line 1076
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/b/f/e;->a:Ljava/lang/ThreadLocal;

    .line 39
    return-void
.end method
