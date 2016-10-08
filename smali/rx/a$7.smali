.class final Lrx/a$7;
.super Lrx/i;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Lrx/c/b;

.field final synthetic c:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/c/b;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 7173
    iput-object p1, p0, Lrx/a$7;->c:Lrx/a;

    iput-object p2, p0, Lrx/a$7;->a:Lrx/c/b;

    iput-object p3, p0, Lrx/a$7;->b:Lrx/c/b;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 7178
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
    .line 7187
    iget-object v0, p0, Lrx/a$7;->b:Lrx/c/b;

    invoke-interface {v0, p1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 7188
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 7182
    iget-object v0, p0, Lrx/a$7;->a:Lrx/c/b;

    invoke-interface {v0, p1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 7183
    return-void
.end method
