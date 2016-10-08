.class final Lrx/i/c$1;
.super Ljava/lang/Object;
.source "PublishSubject.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i/c;->k()Lrx/i/c;
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
.field final synthetic a:Lrx/i/m;


# direct methods
.method constructor <init>(Lrx/i/m;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lrx/i/c$1;->a:Lrx/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 63
    check-cast p1, Lrx/i/o;

    .line 1067
    iget-object v0, p0, Lrx/i/c$1;->a:Lrx/i/m;

    .line 1081
    iget-object v0, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 1067
    iget-object v1, p0, Lrx/i/c$1;->a:Lrx/i/m;

    iget-object v1, v1, Lrx/i/m;->i:Lrx/d/a/a;

    invoke-virtual {p1, v0}, Lrx/i/o;->c(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
