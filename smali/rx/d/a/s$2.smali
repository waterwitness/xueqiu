.class final Lrx/d/a/s$2;
.super Lrx/i;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/s;->d(Lrx/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i/l;

.field final synthetic b:Lrx/d/a/s;


# direct methods
.method constructor <init>(Lrx/d/a/s;Lrx/i/l;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lrx/d/a/s$2;->b:Lrx/d/a/s;

    iput-object p2, p0, Lrx/d/a/s$2;->a:Lrx/i/l;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lrx/d/a/s$2;->a:Lrx/i/l;

    invoke-virtual {v0}, Lrx/i/l;->a()V

    .line 97
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lrx/d/a/s$2;->a:Lrx/i/l;

    invoke-virtual {v0, p1}, Lrx/i/l;->a(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lrx/d/a/s$2;->a:Lrx/i/l;

    invoke-virtual {v0, p1}, Lrx/i/l;->a(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method
