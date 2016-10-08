.class public final Lrx/d/a/f;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-gtz p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-gtz p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput p1, p0, Lrx/d/a/f;->a:I

    .line 63
    iput p2, p0, Lrx/d/a/f;->b:I

    .line 64
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    check-cast p1, Lrx/i;

    .line 1068
    iget v0, p0, Lrx/d/a/f;->a:I

    iget v1, p0, Lrx/d/a/f;->b:I

    if-ne v0, v1, :cond_0

    .line 1069
    new-instance v0, Lrx/d/a/f$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/f$1;-><init>(Lrx/d/a/f;Lrx/i;Lrx/i;)V

    :goto_0
    return-object v0

    .line 1129
    :cond_0
    new-instance v0, Lrx/d/a/f$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/f$2;-><init>(Lrx/d/a/f;Lrx/i;Lrx/i;)V

    goto :goto_0
.end method
