.class final Lc/t$1;
.super Lc/t;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lc/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final deadlineNanoTime(J)Lc/t;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lc/t;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method
