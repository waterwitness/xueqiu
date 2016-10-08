.class final Lcom/d/a/b/l$1;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/b/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/d/a/b/n;

.field final synthetic b:Lcom/d/a/b/l;


# direct methods
.method constructor <init>(Lcom/d/a/b/l;Lcom/d/a/b/n;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/d/a/b/l$1;->b:Lcom/d/a/b/l;

    iput-object p2, p0, Lcom/d/a/b/l$1;->a:Lcom/d/a/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/d/a/b/l$1;->b:Lcom/d/a/b/l;

    iget-object v0, v0, Lcom/d/a/b/l;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v1, p0, Lcom/d/a/b/l$1;->a:Lcom/d/a/b/n;

    .line 1450
    iget-object v1, v1, Lcom/d/a/b/n;->b:Ljava/lang/String;

    .line 72
    invoke-interface {v0, v1}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/d/a/b/l$1;->b:Lcom/d/a/b/l;

    .line 2040
    invoke-virtual {v1}, Lcom/d/a/b/l;->a()V

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/d/a/b/l$1;->b:Lcom/d/a/b/l;

    .line 3040
    iget-object v0, v0, Lcom/d/a/b/l;->c:Ljava/util/concurrent/Executor;

    .line 76
    iget-object v1, p0, Lcom/d/a/b/l$1;->a:Lcom/d/a/b/n;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_1
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/d/a/b/l$1;->b:Lcom/d/a/b/l;

    .line 4040
    iget-object v0, v0, Lcom/d/a/b/l;->b:Ljava/util/concurrent/Executor;

    .line 78
    iget-object v1, p0, Lcom/d/a/b/l$1;->a:Lcom/d/a/b/n;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
