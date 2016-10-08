.class final Lrx/a$6;
.super Lrx/i;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->c(Lrx/c/b;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 7125
    iput-object p1, p0, Lrx/a$6;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$6;->a:Lrx/c/b;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 7130
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
    .line 7139
    iget-object v0, p0, Lrx/a$6;->a:Lrx/c/b;

    invoke-interface {v0, p1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 7140
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 7134
    new-instance v0, Lrx/b/i;

    invoke-direct {v0, p1}, Lrx/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
