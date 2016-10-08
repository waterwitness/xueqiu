.class final Lcom/a/a/g;
.super Landroid/os/AsyncTask;
.source "DecodingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/vudroid/a/a;

.field private b:Z

.field private c:Landroid/net/Uri;

.field private d:Lcom/a/a/i;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/a/a/i;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->b:Z

    .line 44
    iput-object p2, p0, Lcom/a/a/g;->d:Lcom/a/a/i;

    .line 45
    iput-object p1, p0, Lcom/a/a/g;->c:Landroid/net/Uri;

    .line 46
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 31
    .line 3050
    new-instance v0, Lorg/vudroid/a/b;

    new-instance v1, Lorg/vudroid/pdfdroid/codec/a;

    invoke-direct {v1}, Lorg/vudroid/pdfdroid/codec/a;-><init>()V

    invoke-direct {v0, v1}, Lorg/vudroid/a/b;-><init>(Lorg/vudroid/a/a/a;)V

    iput-object v0, p0, Lcom/a/a/g;->a:Lorg/vudroid/a/a;

    .line 3051
    iget-object v0, p0, Lcom/a/a/g;->a:Lorg/vudroid/a/a;

    iget-object v1, p0, Lcom/a/a/g;->d:Lcom/a/a/i;

    invoke-virtual {v1}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/vudroid/a/a;->a(Landroid/content/ContentResolver;)V

    .line 3052
    iget-object v0, p0, Lcom/a/a/g;->a:Lorg/vudroid/a/a;

    iget-object v1, p0, Lcom/a/a/g;->c:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lorg/vudroid/a/a;->a(Landroid/net/Uri;)V

    .line 3053
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->b:Z

    .line 64
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 31
    .line 1057
    iget-boolean v0, p0, Lcom/a/a/g;->b:Z

    if-nez v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/a/a/g;->d:Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/g;->a:Lorg/vudroid/a/a;

    .line 1707
    iput-object v1, v0, Lcom/a/a/i;->k:Lorg/vudroid/a/a;

    .line 1708
    invoke-interface {v1}, Lorg/vudroid/a/a;->a()I

    move-result v2

    iput v2, v0, Lcom/a/a/i;->d:I

    .line 1711
    invoke-interface {v1}, Lorg/vudroid/a/a;->b()I

    move-result v2

    iput v2, v0, Lcom/a/a/i;->e:I

    .line 1712
    invoke-interface {v1}, Lorg/vudroid/a/a;->c()I

    move-result v1

    iput v1, v0, Lcom/a/a/i;->f:I

    .line 1713
    sget v1, Lcom/a/a/k;->b:I

    iput v1, v0, Lcom/a/a/i;->j:I

    .line 1714
    invoke-virtual {v0}, Lcom/a/a/i;->c()V

    .line 1717
    iget v1, v0, Lcom/a/a/i;->m:I

    .line 2306
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(I)V

    .line 1719
    iget v1, v0, Lcom/a/a/i;->e:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/a/a/i;->f:I

    if-nez v1, :cond_2

    .line 1720
    :cond_0
    iget-object v1, v0, Lcom/a/a/i;->l:Lcom/a/a/b/b;

    if-eqz v1, :cond_1

    .line 1721
    iget-object v0, v0, Lcom/a/a/i;->l:Lcom/a/a/b/b;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/a/a/b/b;->a(I)V

    :cond_1
    :goto_0
    return-void

    .line 1724
    :cond_2
    iget-object v1, v0, Lcom/a/a/i;->l:Lcom/a/a/b/b;

    if-eqz v1, :cond_1

    .line 1725
    iget-object v1, v0, Lcom/a/a/i;->l:Lcom/a/a/b/b;

    iget v0, v0, Lcom/a/a/i;->d:I

    invoke-interface {v1, v0}, Lcom/a/a/b/b;->a(I)V

    goto :goto_0
.end method
