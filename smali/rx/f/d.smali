.class final Lrx/f/d;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    iget v2, p0, Lrx/f/d;->b:I

    .line 52
    iget-object v1, p0, Lrx/f/d;->a:[Ljava/lang/Object;

    .line 53
    if-nez v1, :cond_0

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lrx/f/d;->a:[Ljava/lang/Object;

    .line 62
    :goto_0
    aput-object p1, v0, v2

    .line 63
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lrx/f/d;->b:I

    .line 64
    return-void

    .line 56
    :cond_0
    array-length v0, v1

    if-ne v2, v0, :cond_1

    .line 57
    shr-int/lit8 v0, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iput-object v0, p0, Lrx/f/d;->a:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
