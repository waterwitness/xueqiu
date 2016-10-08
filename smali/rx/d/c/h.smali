.class public final Lrx/d/c/h;
.super Lrx/a;
.source "ScalarSynchronousObservable.java"


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


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lrx/d/c/h$1;

    invoke-direct {v0, p1}, Lrx/d/c/h$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/a;-><init>(Lrx/b;)V

    .line 46
    iput-object p1, p0, Lrx/d/c/h;->b:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lrx/d/c/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/d/c/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lrx/d/c/h;

    invoke-direct {v0, p0}, Lrx/d/c/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
