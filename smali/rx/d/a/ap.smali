.class final Lrx/d/a/ap;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/f;"
    }
.end annotation


# instance fields
.field private a:Lrx/d/a/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/an",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d/a/an;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/an",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 165
    iput-object p1, p0, Lrx/d/a/ap;->a:Lrx/d/a/an;

    .line 166
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1, p2}, Lrx/d/a/ap;->addAndGet(J)J

    .line 172
    iget-object v0, p0, Lrx/d/a/ap;->a:Lrx/d/a/an;

    invoke-virtual {v0}, Lrx/d/a/an;->a()V

    .line 173
    return-void
.end method
