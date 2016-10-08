.class public final Lcom/d/a/b/b/e;
.super Ljava/lang/Object;
.source "ImageDecodingInfo.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lcom/d/a/b/a/f;

.field final d:I

.field final e:I

.field final f:Lcom/d/a/b/d/b;

.field final g:Ljava/lang/Object;

.field final h:Z

.field final i:Landroid/graphics/BitmapFactory$Options;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/d/a/b/a/f;ILcom/d/a/b/d/b;Lcom/d/a/b/d;)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/d/a/b/b/e;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/d/a/b/b/e;->j:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/d/a/b/b/e;->c:Lcom/d/a/b/a/f;

    .line 1158
    iget v0, p7, Lcom/d/a/b/d;->j:I

    .line 57
    iput v0, p0, Lcom/d/a/b/b/e;->d:I

    .line 58
    iput p5, p0, Lcom/d/a/b/b/e;->e:I

    .line 60
    iput-object p6, p0, Lcom/d/a/b/b/e;->f:Lcom/d/a/b/d/b;

    .line 1174
    iget-object v0, p7, Lcom/d/a/b/d;->n:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/d/a/b/b/e;->g:Ljava/lang/Object;

    .line 2170
    iget-boolean v0, p7, Lcom/d/a/b/d;->m:Z

    .line 63
    iput-boolean v0, p0, Lcom/d/a/b/b/e;->h:Z

    .line 64
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/d/a/b/b/e;->i:Landroid/graphics/BitmapFactory$Options;

    .line 3162
    iget-object v0, p7, Lcom/d/a/b/d;->k:Landroid/graphics/BitmapFactory$Options;

    .line 65
    iget-object v1, p0, Lcom/d/a/b/b/e;->i:Landroid/graphics/BitmapFactory$Options;

    .line 4069
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 4070
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4071
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 4072
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4073
    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4074
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 4075
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4076
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 4077
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 4078
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 4079
    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 4080
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 4086
    iget-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 4081
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 4091
    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 4092
    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 66
    :cond_1
    return-void
.end method
