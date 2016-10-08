.class final Lrx/d/a/ae$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/d/a/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ae;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/g;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d/a/ag",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lrx/d/a/ae$1;->a:J

    iput-object p3, p0, Lrx/d/a/ae$1;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    check-cast p1, Lrx/d/a/ai;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lrx/h;

    .line 1039
    new-instance v0, Lrx/d/a/ae$1$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/d/a/ae$1$1;-><init>(Lrx/d/a/ae$1;Lrx/d/a/ai;Ljava/lang/Long;)V

    iget-wide v2, p0, Lrx/d/a/ae$1;->a:J

    iget-object v1, p0, Lrx/d/a/ae$1;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v2, v3, v1}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    .line 35
    return-object v0
.end method
