.class final Lcom/sleepycat/b/f/b;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "Latch.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
