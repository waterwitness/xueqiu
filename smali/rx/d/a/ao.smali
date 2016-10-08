.class final Lrx/d/a/ao;
.super Lrx/i;
.source "OperatorZip.java"


# instance fields
.field final a:Lrx/d/c/f;

.field final synthetic b:Lrx/d/a/an;


# direct methods
.method constructor <init>(Lrx/d/a/an;)V
    .locals 1

    .prologue
    .line 294
    iput-object p1, p0, Lrx/d/a/ao;->b:Lrx/d/a/an;

    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 296
    invoke-static {}, Lrx/d/c/f;->d()Lrx/d/c/f;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/ao;->a:Lrx/d/c/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lrx/d/a/ao;->a:Lrx/d/c/f;

    invoke-virtual {v0}, Lrx/d/c/f;->e()V

    .line 310
    iget-object v0, p0, Lrx/d/a/ao;->b:Lrx/d/a/an;

    invoke-virtual {v0}, Lrx/d/a/an;->a()V

    .line 311
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Lrx/d/a/ao;->a:Lrx/d/c/f;

    invoke-virtual {v0, p1}, Lrx/d/c/f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    iget-object v0, p0, Lrx/d/a/ao;->b:Lrx/d/a/an;

    invoke-virtual {v0}, Lrx/d/a/an;->a()V

    .line 327
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {p0, v0}, Lrx/d/a/ao;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lrx/d/a/ao;->b:Lrx/d/a/an;

    invoke-static {v0}, Lrx/d/a/an;->a(Lrx/d/a/an;)Lrx/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/e;->a(Ljava/lang/Throwable;)V

    .line 317
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 300
    sget v0, Lrx/d/c/f;->e:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/d/a/ao;->a(J)V

    .line 301
    return-void
.end method
