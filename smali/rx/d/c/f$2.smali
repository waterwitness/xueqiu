.class final Lrx/d/c/f$2;
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
    .line 288
    invoke-direct {p0}, Lrx/d/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1292
    new-instance v0, Lrx/d/c/a/i;

    sget v1, Lrx/d/c/f;->e:I

    invoke-direct {v0, v1}, Lrx/d/c/a/i;-><init>(I)V

    .line 288
    return-object v0
.end method
