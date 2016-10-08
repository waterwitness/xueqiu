.class public final Lcom/d/a/b/d;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Landroid/graphics/drawable/Drawable;

.field final e:Landroid/graphics/drawable/Drawable;

.field final f:Landroid/graphics/drawable/Drawable;

.field final g:Z

.field final h:Z

.field final i:Z

.field public final j:I

.field public final k:Landroid/graphics/BitmapFactory$Options;

.field final l:I

.field public final m:Z

.field public final n:Ljava/lang/Object;

.field final o:Lcom/d/a/b/g/a;

.field final p:Lcom/d/a/b/g/a;

.field final q:Lcom/d/a/b/c/a;

.field final r:Landroid/os/Handler;

.field final s:Z


# direct methods
.method private constructor <init>(Lcom/d/a/b/e;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iget v0, p1, Lcom/d/a/b/e;->a:I

    .line 88
    iput v0, p0, Lcom/d/a/b/d;->a:I

    .line 2202
    iget v0, p1, Lcom/d/a/b/e;->b:I

    .line 89
    iput v0, p0, Lcom/d/a/b/d;->b:I

    .line 3202
    iget v0, p1, Lcom/d/a/b/e;->c:I

    .line 90
    iput v0, p0, Lcom/d/a/b/d;->c:I

    .line 4202
    iget-object v0, p1, Lcom/d/a/b/e;->d:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object v0, p0, Lcom/d/a/b/d;->d:Landroid/graphics/drawable/Drawable;

    .line 5202
    iget-object v0, p1, Lcom/d/a/b/e;->e:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v0, p0, Lcom/d/a/b/d;->e:Landroid/graphics/drawable/Drawable;

    .line 6202
    iget-object v0, p1, Lcom/d/a/b/e;->f:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v0, p0, Lcom/d/a/b/d;->f:Landroid/graphics/drawable/Drawable;

    .line 7202
    iget-boolean v0, p1, Lcom/d/a/b/e;->g:Z

    .line 94
    iput-boolean v0, p0, Lcom/d/a/b/d;->g:Z

    .line 8202
    iget-boolean v0, p1, Lcom/d/a/b/e;->h:Z

    .line 95
    iput-boolean v0, p0, Lcom/d/a/b/d;->h:Z

    .line 9202
    iget-boolean v0, p1, Lcom/d/a/b/e;->i:Z

    .line 96
    iput-boolean v0, p0, Lcom/d/a/b/d;->i:Z

    .line 10202
    iget v0, p1, Lcom/d/a/b/e;->j:I

    .line 97
    iput v0, p0, Lcom/d/a/b/d;->j:I

    .line 11202
    iget-object v0, p1, Lcom/d/a/b/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 98
    iput-object v0, p0, Lcom/d/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    .line 12202
    iget v0, p1, Lcom/d/a/b/e;->l:I

    .line 99
    iput v0, p0, Lcom/d/a/b/d;->l:I

    .line 13202
    iget-boolean v0, p1, Lcom/d/a/b/e;->m:Z

    .line 100
    iput-boolean v0, p0, Lcom/d/a/b/d;->m:Z

    .line 14202
    iget-object v0, p1, Lcom/d/a/b/e;->n:Ljava/lang/Object;

    .line 101
    iput-object v0, p0, Lcom/d/a/b/d;->n:Ljava/lang/Object;

    .line 15202
    iget-object v0, p1, Lcom/d/a/b/e;->o:Lcom/d/a/b/g/a;

    .line 102
    iput-object v0, p0, Lcom/d/a/b/d;->o:Lcom/d/a/b/g/a;

    .line 16202
    iget-object v0, p1, Lcom/d/a/b/e;->p:Lcom/d/a/b/g/a;

    .line 103
    iput-object v0, p0, Lcom/d/a/b/d;->p:Lcom/d/a/b/g/a;

    .line 17202
    iget-object v0, p1, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 104
    iput-object v0, p0, Lcom/d/a/b/d;->q:Lcom/d/a/b/c/a;

    .line 18202
    iget-object v0, p1, Lcom/d/a/b/e;->r:Landroid/os/Handler;

    .line 105
    iput-object v0, p0, Lcom/d/a/b/d;->r:Landroid/os/Handler;

    .line 19202
    iget-boolean v0, p1, Lcom/d/a/b/e;->s:Z

    .line 106
    iput-boolean v0, p0, Lcom/d/a/b/d;->s:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/d/a/b/e;B)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/d/a/b/d;-><init>(Lcom/d/a/b/e;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/d/a/b/d;->p:Lcom/d/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
