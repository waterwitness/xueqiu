.class public final Lrx/d/a/ab;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/g;


# direct methods
.method public constructor <init>(Lrx/g;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/d/a/ab;->a:Lrx/g;

    .line 37
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
            "<-",
            "Lrx/a",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lrx/d/a/ab;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 43
    new-instance v1, Lrx/d/a/ab$1;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/d/a/ab$1;-><init>(Lrx/d/a/ab;Lrx/i;Lrx/i;Lrx/h;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lrx/i;

    invoke-direct {p0, p1}, Lrx/d/a/ab;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method
