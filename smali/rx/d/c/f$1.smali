.class final Lrx/d/c/f$1;
.super Lrx/d/c/d;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/c/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/d/c/d",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lrx/d/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1283
    new-instance v0, Lrx/d/c/a/q;

    sget v1, Lrx/d/c/f;->e:I

    invoke-direct {v0, v1}, Lrx/d/c/a/q;-><init>(I)V

    .line 279
    return-object v0
.end method
