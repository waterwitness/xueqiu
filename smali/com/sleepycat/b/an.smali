.class public abstract Lcom/sleepycat/b/an;
.super Lcom/sleepycat/b/au;
.source "LockConflictException.java"


# instance fields
.field public a:[J

.field public b:[J

.field public c:J


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 155
    return-void
.end method
