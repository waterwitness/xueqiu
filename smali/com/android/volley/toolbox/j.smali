.class public final Lcom/android/volley/toolbox/j;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field final a:Lcom/android/volley/p;

.field final b:Lcom/android/volley/toolbox/l;

.field final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/k;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/k;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Runnable;

.field private f:I

.field private final g:Landroid/os/Handler;


# virtual methods
.method final a(Ljava/lang/String;Lcom/android/volley/toolbox/k;)V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/volley/toolbox/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/android/volley/toolbox/j;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/android/volley/toolbox/j$3;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/j$3;-><init>(Lcom/android/volley/toolbox/j;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/j;->e:Ljava/lang/Runnable;

    .line 461
    iget-object v0, p0, Lcom/android/volley/toolbox/j;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/volley/toolbox/j;->e:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/volley/toolbox/j;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :cond_0
    return-void
.end method
