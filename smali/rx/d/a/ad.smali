.class public final Lrx/d/a/ad;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lrx/d/a/ad;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 29
    move-object v2, p1

    check-cast v2, Lrx/i;

    .line 1042
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 1043
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v4

    .line 1044
    new-instance v5, Lrx/d/a/ar;

    invoke-direct {v5, v4, v3, v2}, Lrx/d/a/ar;-><init>(Lrx/d/a/a;Ljava/util/Deque;Lrx/i;)V

    .line 1045
    invoke-virtual {v2, v5}, Lrx/i;->a(Lrx/f;)V

    .line 1047
    new-instance v0, Lrx/d/a/ad$1;

    move-object v1, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lrx/d/a/ad$1;-><init>(Lrx/d/a/ad;Lrx/i;Ljava/util/Deque;Lrx/d/a/a;Lrx/d/a/ar;Lrx/i;)V

    .line 29
    return-object v0
.end method
