.class final Lrx/h/s$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/s;->a(Lrx/c/a;J)Lrx/j;
.end annotation


# instance fields
.field final synthetic a:Lrx/h/t;

.field final synthetic b:Lrx/h/s;


# direct methods
.method constructor <init>(Lrx/h/s;Lrx/h/t;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lrx/h/s$1;->b:Lrx/h/s;

    iput-object p2, p0, Lrx/h/s$1;->a:Lrx/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lrx/h/s$1;->b:Lrx/h/s;

    iget-object v0, v0, Lrx/h/s;->a:Ljava/util/PriorityQueue;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lrx/h/s$1;->a:Lrx/h/t;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method
