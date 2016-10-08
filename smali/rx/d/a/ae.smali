.class public final Lrx/d/a/ae;
.super Lrx/d/a/af;
.source "OperatorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/a/af",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lrx/d/a/ae$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/d/a/ae$1;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lrx/d/a/ae$2;

    invoke-direct {v1, p1, p2, p3}, Lrx/d/a/ae$2;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4}, Lrx/d/a/af;-><init>(Lrx/d/a/ag;Lrx/d/a/ah;Lrx/g;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lrx/i;)Lrx/i;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lrx/d/a/af;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method
