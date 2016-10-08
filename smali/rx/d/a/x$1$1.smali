.class final Lrx/d/a/x$1$1;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/x$1;->a(Lrx/f;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/d/a/x$1;


# direct methods
.method constructor <init>(Lrx/d/a/x$1;Lrx/f;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lrx/d/a/x$1$1;->b:Lrx/d/a/x$1;

    iput-object p2, p0, Lrx/d/a/x$1$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lrx/d/a/x$1$1;->a:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    .line 98
    return-void
.end method
