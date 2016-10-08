.class final Lrx/d/a/j$1;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/j;-><init>(Lrx/i;Lrx/j/e;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/j;


# direct methods
.method constructor <init>(Lrx/d/a/j;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lrx/d/a/j$1;->a:Lrx/d/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lrx/d/a/j$1;->a:Lrx/d/a/j;

    iget-object v0, v0, Lrx/d/a/j;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 91
    return-void
.end method
