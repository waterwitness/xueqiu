.class public final Lrx/d/a/x;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

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
.field final a:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/a",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/a",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/d/a/x;->a:Lrx/c/f;

    .line 50
    return-void
.end method

.method private a(Lrx/i;)Lrx/i;
    .locals 1
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
    .line 54
    new-instance v0, Lrx/d/a/x$1;

    invoke-direct {v0, p0, p1}, Lrx/d/a/x$1;-><init>(Lrx/d/a/x;Lrx/i;)V

    .line 103
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lrx/i;

    invoke-direct {p0, p1}, Lrx/d/a/x;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method
