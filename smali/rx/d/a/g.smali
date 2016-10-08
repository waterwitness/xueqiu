.class public final Lrx/d/a/g;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

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
        "<TT;",
        "Lrx/a",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method private static a(Lrx/i;)Lrx/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)",
            "Lrx/i",
            "<-",
            "Lrx/a",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lrx/f/e;

    invoke-direct {v0, p0}, Lrx/f/e;-><init>(Lrx/i;)V

    .line 43
    new-instance v1, Lrx/j/e;

    invoke-direct {v1}, Lrx/j/e;-><init>()V

    .line 44
    invoke-virtual {p0, v1}, Lrx/i;->a(Lrx/j;)V

    .line 45
    new-instance v2, Lrx/d/a/j;

    invoke-direct {v2, v0, v1}, Lrx/d/a/j;-><init>(Lrx/i;Lrx/j/e;)V

    .line 46
    new-instance v0, Lrx/d/a/i;

    invoke-direct {v0, v2}, Lrx/d/a/i;-><init>(Lrx/d/a/j;)V

    .line 47
    invoke-virtual {p0, v0}, Lrx/i;->a(Lrx/f;)V

    .line 48
    return-object v2
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lrx/i;

    invoke-static {p1}, Lrx/d/a/g;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method
