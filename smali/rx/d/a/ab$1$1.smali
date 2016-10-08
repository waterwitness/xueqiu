.class final Lrx/d/a/ab$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/ab$1;
.end annotation


# instance fields
.field final synthetic a:Lrx/a;

.field final synthetic b:Lrx/d/a/ab$1;


# direct methods
.method constructor <init>(Lrx/d/a/ab$1;Lrx/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iput-object p2, p0, Lrx/d/a/ab$1$1;->a:Lrx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lrx/d/a/ab$1$1;->a:Lrx/a;

    new-instance v2, Lrx/d/a/ab$1$1$1;

    iget-object v3, p0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iget-object v3, v3, Lrx/d/a/ab$1;->a:Lrx/i;

    invoke-direct {v2, p0, v3, v0}, Lrx/d/a/ab$1$1$1;-><init>(Lrx/d/a/ab$1$1;Lrx/i;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/i;)Lrx/j;

    .line 104
    return-void
.end method
