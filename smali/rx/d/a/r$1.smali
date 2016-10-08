.class final Lrx/d/a/r$1;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lrx/d/a/p",
        "<TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/r;


# direct methods
.method constructor <init>(Lrx/d/a/r;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lrx/d/a/r$1;->a:Lrx/d/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 380
    check-cast p1, Lrx/d/a/p;

    .line 1384
    invoke-static {p1}, Lrx/d/a/p;->a(Lrx/d/a/p;)Lrx/d/c/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lrx/d/a/r$1;->a:Lrx/d/a/r;

    .line 2093
    iget-object v0, v0, Lrx/d/a/r;->c:Lrx/d/a/q;

    .line 1385
    invoke-static {v0}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v0

    .line 1386
    invoke-static {p1}, Lrx/d/a/p;->b(Lrx/d/a/p;)I

    move-result v2

    .line 1387
    if-lez v2, :cond_0

    .line 1388
    int-to-long v4, v2

    .line 2564
    invoke-virtual {p1, v4, v5}, Lrx/d/a/p;->a(J)V

    .line 1390
    :cond_0
    int-to-long v2, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1392
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 1395
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method
