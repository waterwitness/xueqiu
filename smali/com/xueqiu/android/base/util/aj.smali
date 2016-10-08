.class public final Lcom/xueqiu/android/base/util/aj;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SNBHtmlUtil.java"


# instance fields
.field protected a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Lcom/xueqiu/android/base/util/aj;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/xueqiu/android/base/util/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/xueqiu/android/base/util/aj;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 583
    :cond_0
    return-void
.end method
