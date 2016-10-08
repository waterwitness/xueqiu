.class final Lrx/d;
.super Lrx/a;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 9048
    new-instance v0, Lrx/d$1;

    invoke-direct {v0, p1}, Lrx/d$1;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lrx/a;-><init>(Lrx/b;)V

    .line 9062
    return-void
.end method
