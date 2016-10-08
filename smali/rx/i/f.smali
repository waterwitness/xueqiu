.class final Lrx/i/f;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lrx/i/o",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    iput-object p1, p0, Lrx/i/f;->a:Lrx/i/e;

    .line 829
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 824
    check-cast p1, Lrx/i/o;

    .line 1833
    iget-object v0, p0, Lrx/i/f;->a:Lrx/i/e;

    iget-object v1, p0, Lrx/i/f;->a:Lrx/i/e;

    .line 2604
    iget-object v1, v1, Lrx/i/e;->a:Lrx/i/h;

    iget-object v1, v1, Lrx/i/h;->a:Lrx/i/i;

    .line 1833
    invoke-virtual {v0, v1, p1}, Lrx/i/e;->a(Lrx/i/i;Lrx/i/o;)Lrx/i/i;

    move-result-object v0

    .line 3340
    iput-object v0, p1, Lrx/i/o;->g:Ljava/lang/Object;

    .line 824
    return-void
.end method
