.class final Lcom/android/volley/toolbox/j$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/j;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/j;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/j;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/volley/toolbox/j$3;->a:Lcom/android/volley/toolbox/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/volley/toolbox/j$3;->a:Lcom/android/volley/toolbox/j;

    .line 1043
    iget-object v0, v0, Lcom/android/volley/toolbox/j;->d:Ljava/util/HashMap;

    .line 439
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k;

    .line 1364
    iget-object v1, v0, Lcom/android/volley/toolbox/k;->c:Ljava/util/LinkedList;

    .line 440
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/m;

    .line 2290
    iget-object v4, v1, Lcom/android/volley/toolbox/m;->b:Lcom/android/volley/toolbox/n;

    .line 444
    if-eqz v4, :cond_1

    .line 2398
    iget-object v4, v0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/y;

    .line 447
    if-nez v4, :cond_2

    .line 3364
    iget-object v4, v0, Lcom/android/volley/toolbox/k;->a:Landroid/graphics/Bitmap;

    .line 4290
    iput-object v4, v1, Lcom/android/volley/toolbox/m;->a:Landroid/graphics/Bitmap;

    .line 5290
    iget-object v4, v1, Lcom/android/volley/toolbox/m;->b:Lcom/android/volley/toolbox/n;

    .line 449
    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/volley/toolbox/n;->a(Lcom/android/volley/toolbox/m;Z)V

    goto :goto_0

    .line 6290
    :cond_2
    iget-object v1, v1, Lcom/android/volley/toolbox/m;->b:Lcom/android/volley/toolbox/n;

    .line 6398
    iget-object v4, v0, Lcom/android/volley/toolbox/k;->b:Lcom/android/volley/y;

    .line 451
    invoke-interface {v1, v4}, Lcom/android/volley/toolbox/n;->a(Lcom/android/volley/y;)V

    goto :goto_0

    .line 455
    :cond_3
    iget-object v0, p0, Lcom/android/volley/toolbox/j$3;->a:Lcom/android/volley/toolbox/j;

    .line 7043
    iget-object v0, v0, Lcom/android/volley/toolbox/j;->d:Ljava/util/HashMap;

    .line 455
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 456
    iget-object v0, p0, Lcom/android/volley/toolbox/j$3;->a:Lcom/android/volley/toolbox/j;

    .line 8043
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/volley/toolbox/j;->e:Ljava/lang/Runnable;

    .line 457
    return-void
.end method
