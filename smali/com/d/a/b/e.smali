.class public final Lcom/d/a/b/e;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field k:Landroid/graphics/BitmapFactory$Options;

.field l:I

.field public m:Z

.field public n:Ljava/lang/Object;

.field o:Lcom/d/a/b/g/a;

.field p:Lcom/d/a/b/g/a;

.field public q:Lcom/d/a/b/c/a;

.field r:Landroid/os/Handler;

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v1, p0, Lcom/d/a/b/e;->a:I

    .line 204
    iput v1, p0, Lcom/d/a/b/e;->b:I

    .line 205
    iput v1, p0, Lcom/d/a/b/e;->c:I

    .line 206
    iput-object v2, p0, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object v2, p0, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v2, p0, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-boolean v1, p0, Lcom/d/a/b/e;->g:Z

    .line 210
    iput-boolean v1, p0, Lcom/d/a/b/e;->h:Z

    .line 211
    iput-boolean v1, p0, Lcom/d/a/b/e;->i:Z

    .line 212
    sget v0, Lcom/d/a/b/a/e;->c:I

    iput v0, p0, Lcom/d/a/b/e;->j:I

    .line 213
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/d/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 214
    iput v1, p0, Lcom/d/a/b/e;->l:I

    .line 215
    iput-boolean v1, p0, Lcom/d/a/b/e;->m:Z

    .line 216
    iput-object v2, p0, Lcom/d/a/b/e;->n:Ljava/lang/Object;

    .line 217
    iput-object v2, p0, Lcom/d/a/b/e;->o:Lcom/d/a/b/g/a;

    .line 218
    iput-object v2, p0, Lcom/d/a/b/e;->p:Lcom/d/a/b/g/a;

    .line 1129
    new-instance v0, Lcom/d/a/b/c/e;

    invoke-direct {v0}, Lcom/d/a/b/c/e;-><init>()V

    .line 219
    iput-object v0, p0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 220
    iput-object v2, p0, Lcom/d/a/b/e;->r:Landroid/os/Handler;

    .line 221
    iput-boolean v1, p0, Lcom/d/a/b/e;->s:Z

    .line 224
    iget-object v0, p0, Lcom/d/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 225
    iget-object v0, p0, Lcom/d/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 226
    return-void
.end method


# virtual methods
.method public final a()Lcom/d/a/b/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/b/e;->i:Z

    .line 362
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;
    .locals 2

    .prologue
    .line 382
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 384
    return-object p0
.end method

.method public final a(Lcom/d/a/b/d;)Lcom/d/a/b/e;
    .locals 1

    .prologue
    .line 465
    .line 2065
    iget v0, p1, Lcom/d/a/b/d;->a:I

    .line 465
    iput v0, p0, Lcom/d/a/b/e;->a:I

    .line 3065
    iget v0, p1, Lcom/d/a/b/d;->b:I

    .line 466
    iput v0, p0, Lcom/d/a/b/e;->b:I

    .line 4065
    iget v0, p1, Lcom/d/a/b/d;->c:I

    .line 467
    iput v0, p0, Lcom/d/a/b/e;->c:I

    .line 5065
    iget-object v0, p1, Lcom/d/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    .line 468
    iput-object v0, p0, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 6065
    iget-object v0, p1, Lcom/d/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    .line 469
    iput-object v0, p0, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 7065
    iget-object v0, p1, Lcom/d/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    .line 470
    iput-object v0, p0, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 8065
    iget-boolean v0, p1, Lcom/d/a/b/d;->g:Z

    .line 471
    iput-boolean v0, p0, Lcom/d/a/b/e;->g:Z

    .line 9065
    iget-boolean v0, p1, Lcom/d/a/b/d;->h:Z

    .line 472
    iput-boolean v0, p0, Lcom/d/a/b/e;->h:Z

    .line 10065
    iget-boolean v0, p1, Lcom/d/a/b/d;->i:Z

    .line 473
    iput-boolean v0, p0, Lcom/d/a/b/e;->i:Z

    .line 11065
    iget v0, p1, Lcom/d/a/b/d;->j:I

    .line 474
    iput v0, p0, Lcom/d/a/b/e;->j:I

    .line 12065
    iget-object v0, p1, Lcom/d/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    .line 475
    iput-object v0, p0, Lcom/d/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 13065
    iget v0, p1, Lcom/d/a/b/d;->l:I

    .line 476
    iput v0, p0, Lcom/d/a/b/e;->l:I

    .line 14065
    iget-boolean v0, p1, Lcom/d/a/b/d;->m:Z

    .line 477
    iput-boolean v0, p0, Lcom/d/a/b/e;->m:Z

    .line 15065
    iget-object v0, p1, Lcom/d/a/b/d;->n:Ljava/lang/Object;

    .line 478
    iput-object v0, p0, Lcom/d/a/b/e;->n:Ljava/lang/Object;

    .line 16065
    iget-object v0, p1, Lcom/d/a/b/d;->o:Lcom/d/a/b/g/a;

    .line 479
    iput-object v0, p0, Lcom/d/a/b/e;->o:Lcom/d/a/b/g/a;

    .line 17065
    iget-object v0, p1, Lcom/d/a/b/d;->p:Lcom/d/a/b/g/a;

    .line 480
    iput-object v0, p0, Lcom/d/a/b/e;->p:Lcom/d/a/b/g/a;

    .line 18065
    iget-object v0, p1, Lcom/d/a/b/d;->q:Lcom/d/a/b/c/a;

    .line 481
    iput-object v0, p0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 19065
    iget-object v0, p1, Lcom/d/a/b/d;->r:Landroid/os/Handler;

    .line 482
    iput-object v0, p0, Lcom/d/a/b/e;->r:Landroid/os/Handler;

    .line 20065
    iget-boolean v0, p1, Lcom/d/a/b/d;->s:Z

    .line 483
    iput-boolean v0, p0, Lcom/d/a/b/e;->s:Z

    .line 484
    return-object p0
.end method

.method public final b()Lcom/d/a/b/d;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lcom/d/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/d/a/b/d;-><init>(Lcom/d/a/b/e;B)V

    return-object v0
.end method
