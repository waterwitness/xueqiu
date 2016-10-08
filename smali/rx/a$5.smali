.class final Lrx/a$5;
.super Lrx/i;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->g()Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;)V
    .locals 0

    .prologue
    .line 7083
    iput-object p1, p0, Lrx/a$5;->a:Lrx/a;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 7088
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7098
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 7092
    new-instance v0, Lrx/b/i;

    invoke-direct {v0, p1}, Lrx/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
