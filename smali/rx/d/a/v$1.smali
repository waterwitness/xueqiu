.class final Lrx/d/a/v$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/v;->b()V
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/v;


# direct methods
.method constructor <init>(Lrx/d/a/v;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lrx/d/a/v$1;->a:Lrx/d/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lrx/d/a/v$1;->a:Lrx/d/a/v;

    iget-object v0, v0, Lrx/d/a/v;->a:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->b()V

    .line 234
    iget-object v0, p0, Lrx/d/a/v$1;->a:Lrx/d/a/v;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/d/a/v;->e:Z

    .line 235
    return-void
.end method
