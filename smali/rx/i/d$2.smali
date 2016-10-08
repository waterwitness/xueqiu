.class final Lrx/i/d$2;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/i/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lrx/i/o",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i/e;


# direct methods
.method constructor <init>(Lrx/i/e;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lrx/i/d$2;->a:Lrx/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 339
    check-cast p1, Lrx/i/o;

    .line 2333
    iget-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 1343
    check-cast v0, Lrx/i/i;

    .line 1344
    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lrx/i/d$2;->a:Lrx/i/e;

    .line 2604
    iget-object v0, v0, Lrx/i/e;->a:Lrx/i/h;

    iget-object v0, v0, Lrx/i/h;->a:Lrx/i/i;

    .line 1347
    :cond_0
    iget-object v1, p0, Lrx/i/d$2;->a:Lrx/i/e;

    invoke-virtual {v1, v0, p1}, Lrx/i/e;->a(Lrx/i/i;Lrx/i/o;)Lrx/i/i;

    .line 339
    return-void
.end method
