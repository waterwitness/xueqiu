.class final Lrx/a$2;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/c/b;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/c/b;)V
    .locals 0

    .prologue
    .line 4110
    iput-object p1, p0, Lrx/a$2;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$2;->a:Lrx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 4113
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 4122
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 4117
    iget-object v0, p0, Lrx/a$2;->a:Lrx/c/b;

    invoke-interface {v0, p1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 4118
    return-void
.end method
