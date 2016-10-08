.class final Lrx/a$8;
.super Lrx/i;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/c/b;Lrx/c/b;Lrx/c/a;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a;

.field final synthetic b:Lrx/c/b;

.field final synthetic c:Lrx/c/b;

.field final synthetic d:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/c/a;Lrx/c/b;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 7228
    iput-object p1, p0, Lrx/a$8;->d:Lrx/a;

    iput-object p2, p0, Lrx/a$8;->a:Lrx/c/a;

    iput-object p3, p0, Lrx/a$8;->b:Lrx/c/b;

    iput-object p4, p0, Lrx/a$8;->c:Lrx/c/b;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 7232
    iget-object v0, p0, Lrx/a$8;->a:Lrx/c/a;

    invoke-interface {v0}, Lrx/c/a;->a()V

    .line 7233
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7242
    iget-object v0, p0, Lrx/a$8;->c:Lrx/c/b;

    invoke-interface {v0, p1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 7243
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 7237
    iget-object v0, p0, Lrx/a$8;->b:Lrx/c/b;

    invoke-interface {v0, p1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 7238
    return-void
.end method
