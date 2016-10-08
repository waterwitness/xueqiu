.class final Lrx/i/a$1;
.super Ljava/lang/Object;
.source "AsyncSubject.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i/a;->k()Lrx/i/a;
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
    .line 67
    iput-object p1, p0, Lrx/i/a$1;->a:Lrx/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    check-cast p1, Lrx/i/o;

    .line 1070
    iget-object v0, p0, Lrx/i/a$1;->a:Lrx/i/m;

    .line 1081
    iget-object v0, v0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 1071
    iget-object v1, p0, Lrx/i/a$1;->a:Lrx/i/m;

    iget-object v1, v1, Lrx/i/m;->i:Lrx/d/a/a;

    .line 1072
    invoke-virtual {p1, v0}, Lrx/i/o;->d(Ljava/lang/Object;)V

    .line 1073
    if-eqz v0, :cond_0

    invoke-static {v0}, Lrx/d/a/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lrx/d/a/a;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    :cond_0
    invoke-virtual {p1}, Lrx/i/o;->a()V

    .line 67
    :cond_1
    return-void
.end method
