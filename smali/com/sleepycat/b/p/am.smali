.class final Lcom/sleepycat/b/p/am;
.super Lcom/sleepycat/b/p/aj;
.source "StoppableThreadFactory.java"


# instance fields
.field private final a:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 67
    iput-object p4, p0, Lcom/sleepycat/b/p/am;->a:Ljava/util/logging/Logger;

    .line 68
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sleepycat/b/p/am;->a:Ljava/util/logging/Logger;

    return-object v0
.end method
