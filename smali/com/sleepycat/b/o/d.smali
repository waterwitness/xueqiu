.class public final Lcom/sleepycat/b/o/d;
.super Ljava/io/IOException;
.source "LogVerificationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/o/d;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 30
    return-void
.end method
