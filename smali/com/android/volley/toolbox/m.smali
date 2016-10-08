.class public final Lcom/android/volley/toolbox/m;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field final b:Lcom/android/volley/toolbox/n;

.field final c:Ljava/lang/String;

.field final synthetic d:Lcom/android/volley/toolbox/j;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/j;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/n;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/volley/toolbox/m;->d:Lcom/android/volley/toolbox/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/android/volley/toolbox/m;->a:Landroid/graphics/Bitmap;

    .line 314
    iput-object p3, p0, Lcom/android/volley/toolbox/m;->c:Ljava/lang/String;

    .line 315
    iput-object p4, p0, Lcom/android/volley/toolbox/m;->e:Ljava/lang/String;

    .line 316
    iput-object p5, p0, Lcom/android/volley/toolbox/m;->b:Lcom/android/volley/toolbox/n;

    .line 317
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/volley/toolbox/m;->b:Lcom/android/volley/toolbox/n;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/volley/toolbox/m;->d:Lcom/android/volley/toolbox/j;

    .line 1043
    iget-object v0, v0, Lcom/android/volley/toolbox/j;->c:Ljava/util/HashMap;

    .line 327
    iget-object v1, p0, Lcom/android/volley/toolbox/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k;

    .line 328
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/m;)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/volley/toolbox/m;->d:Lcom/android/volley/toolbox/j;

    .line 2043
    iget-object v0, v0, Lcom/android/volley/toolbox/j;->c:Ljava/util/HashMap;

    .line 331
    iget-object v1, p0, Lcom/android/volley/toolbox/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/android/volley/toolbox/m;->d:Lcom/android/volley/toolbox/j;

    .line 3043
    iget-object v0, v0, Lcom/android/volley/toolbox/j;->d:Ljava/util/HashMap;

    .line 335
    iget-object v1, p0, Lcom/android/volley/toolbox/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/k;->a(Lcom/android/volley/toolbox/m;)Z

    .line 3364
    iget-object v0, v0, Lcom/android/volley/toolbox/k;->c:Ljava/util/LinkedList;

    .line 338
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/volley/toolbox/m;->d:Lcom/android/volley/toolbox/j;

    .line 4043
    iget-object v0, v0, Lcom/android/volley/toolbox/j;->d:Ljava/util/HashMap;

    .line 339
    iget-object v1, p0, Lcom/android/volley/toolbox/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
