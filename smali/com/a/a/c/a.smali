.class public final Lcom/a/a/c/a;
.super Ljava/lang/Object;
.source "PagePart.java"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/RectF;

.field public d:Z

.field public e:I

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/a/a/c/a;->a:I

    .line 43
    iput p2, p0, Lcom/a/a/c/a;->f:I

    .line 44
    iput-object p3, p0, Lcom/a/a/c/a;->b:Landroid/graphics/Bitmap;

    .line 45
    iput-object p4, p0, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    .line 46
    iput-boolean p5, p0, Lcom/a/a/c/a;->d:Z

    .line 47
    iput p6, p0, Lcom/a/a/c/a;->e:I

    .line 48
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lcom/a/a/c/a;

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    check-cast p1, Lcom/a/a/c/a;

    .line 1055
    iget v1, p1, Lcom/a/a/c/a;->f:I

    .line 93
    iget v2, p0, Lcom/a/a/c/a;->f:I

    if-ne v1, v2, :cond_0

    .line 1059
    iget v1, p1, Lcom/a/a/c/a;->a:I

    .line 94
    iget v2, p0, Lcom/a/a/c/a;->a:I

    if-ne v1, v2, :cond_0

    .line 1071
    iget v1, p1, Lcom/a/a/c/a;->g:F

    .line 95
    iget v2, p0, Lcom/a/a/c/a;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1075
    iget v1, p1, Lcom/a/a/c/a;->h:F

    .line 96
    iget v2, p0, Lcom/a/a/c/a;->h:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2067
    iget-object v1, p1, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    .line 97
    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 3067
    iget-object v1, p1, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    .line 98
    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 4067
    iget-object v1, p1, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    .line 99
    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 5067
    iget-object v1, p1, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    .line 100
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/a/a/c/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
