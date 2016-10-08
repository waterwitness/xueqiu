.class Lrx/d/a/af;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

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
.field private final a:Lrx/d/a/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/ag",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/d/a/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/ah",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final d:Lrx/g;


# direct methods
.method constructor <init>(Lrx/d/a/ag;Lrx/d/a/ah;Lrx/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/ag",
            "<TT;>;",
            "Lrx/d/a/ah",
            "<TT;>;",
            "Lrx/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lrx/d/a/af;->a:Lrx/d/a/ag;

    .line 59
    iput-object p2, p0, Lrx/d/a/af;->b:Lrx/d/a/ah;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/d/a/af;->c:Lrx/a;

    .line 61
    iput-object p3, p0, Lrx/d/a/af;->d:Lrx/g;

    .line 62
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/d/a/af;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/i;)Lrx/i;
    .locals 8
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
    .line 66
    iget-object v0, p0, Lrx/d/a/af;->d:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v5

    .line 67
    invoke-virtual {p1, v5}, Lrx/i;->a(Lrx/j;)V

    .line 68
    new-instance v3, Lrx/j/e;

    invoke-direct {v3}, Lrx/j/e;-><init>()V

    .line 69
    invoke-virtual {p1, v3}, Lrx/i;->a(Lrx/j;)V

    .line 73
    new-instance v1, Lrx/f/e;

    invoke-direct {v1, p1}, Lrx/f/e;-><init>(Lrx/i;)V

    .line 75
    new-instance v0, Lrx/d/a/ai;

    iget-object v2, p0, Lrx/d/a/af;->b:Lrx/d/a/ah;

    iget-object v4, p0, Lrx/d/a/af;->c:Lrx/a;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lrx/d/a/ai;-><init>(Lrx/f/e;Lrx/d/a/ah;Lrx/j/e;Lrx/a;Lrx/h;B)V

    .line 76
    iget-object v1, p0, Lrx/d/a/af;->a:Lrx/d/a/ag;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2, v5}, Lrx/d/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/j;

    invoke-virtual {v3, v1}, Lrx/j/e;->a(Lrx/j;)V

    .line 77
    return-object v0
.end method
