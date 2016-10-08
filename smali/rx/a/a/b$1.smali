.class final Lrx/a/a/b$1;
.super Lrx/i;
.source "OperatorConditionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/a/a/b;


# direct methods
.method constructor <init>(Lrx/a/a/b;Lrx/i;Lrx/i;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lrx/a/a/b$1;->b:Lrx/a/a/b;

    iput-object p3, p0, Lrx/a/a/b$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bound object has become invalid; skipping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx/a/a/b$1;->b(Ljava/lang/String;)V

    .line 91
    const-string v0, "unsubscribing..."

    invoke-static {v0}, Lrx/a/a/b$1;->b(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lrx/a/a/b$1;->b:Lrx/a/a/b;

    .line 4034
    const/4 v1, 0x0

    iput-object v1, v0, Lrx/a/a/b;->a:Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lrx/a/a/b$1;->b()V

    .line 94
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    const-string v0, "ConditionalBinding"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "ConditionalBinding"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lrx/a/a/b$1;->b:Lrx/a/a/b;

    .line 1034
    iget-object v0, v0, Lrx/a/a/b;->a:Ljava/lang/Object;

    .line 86
    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/a/a/b$1;->b:Lrx/a/a/b;

    .line 2034
    iget-object v0, v0, Lrx/a/a/b;->b:Lrx/c/f;

    .line 86
    iget-object v1, p0, Lrx/a/a/b$1;->b:Lrx/a/a/b;

    .line 3034
    iget-object v1, v1, Lrx/a/a/b;->a:Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v1}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lrx/a/c/a;->a()V

    .line 58
    invoke-direct {p0}, Lrx/a/a/b$1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lrx/a/a/b$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "onCompleted"

    invoke-direct {p0, v0}, Lrx/a/a/b$1;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lrx/a/c/a;->a()V

    .line 78
    invoke-direct {p0}, Lrx/a/a/b$1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lrx/a/a/b$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "onNext"

    invoke-direct {p0, v0}, Lrx/a/a/b$1;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lrx/a/c/a;->a()V

    .line 68
    invoke-direct {p0}, Lrx/a/a/b$1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lrx/a/a/b$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "onError"

    invoke-direct {p0, v0}, Lrx/a/a/b$1;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
