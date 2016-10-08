.class final Lrx/d/a/i;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f;"
    }
.end annotation


# instance fields
.field final a:Lrx/d/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/d/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/d/a/i;->a:Lrx/d/a/j;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lrx/d/a/i;->a:Lrx/d/a/j;

    invoke-static {v0, p1, p2}, Lrx/d/a/j;->a(Lrx/d/a/j;J)V

    .line 61
    return-void
.end method
