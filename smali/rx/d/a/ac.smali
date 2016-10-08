.class public final Lrx/d/a/ac;
.super Ljava/lang/Object;
.source "OperatorTake.java"

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
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lrx/d/a/ac;->a:I

    .line 38
    return-void
.end method

.method private a(Lrx/i;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)",
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lrx/d/a/ac$1;

    invoke-direct {v0, p0, p1}, Lrx/d/a/ac$1;-><init>(Lrx/d/a/ac;Lrx/i;)V

    .line 98
    iget v1, p0, Lrx/d/a/ac;->a:I

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p1}, Lrx/i;->a()V

    .line 1066
    iget-object v1, v0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v1}, Lrx/d/c/j;->b()V

    .line 112
    :cond_0
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lrx/i;

    invoke-direct {p0, p1}, Lrx/d/a/ac;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method
