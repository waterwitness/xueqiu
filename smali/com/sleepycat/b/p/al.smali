.class public final Lcom/sleepycat/b/p/al;
.super Ljava/lang/Object;
.source "StoppableThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/logging/Logger;

.field private final c:Lcom/sleepycat/b/c/ad;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/sleepycat/b/p/al;->a:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/sleepycat/b/p/al;->b:Ljava/util/logging/Logger;

    .line 40
    iput-object p1, p0, Lcom/sleepycat/b/p/al;->c:Lcom/sleepycat/b/c/ad;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sleepycat/b/p/al;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/util/logging/Logger;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/sleepycat/b/p/am;

    iget-object v1, p0, Lcom/sleepycat/b/p/al;->c:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/p/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sleepycat/b/p/al;->b:Ljava/util/logging/Logger;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sleepycat/b/p/am;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/logging/Logger;)V

    return-object v0
.end method
