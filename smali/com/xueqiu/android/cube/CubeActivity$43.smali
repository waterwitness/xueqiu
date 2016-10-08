.class final Lcom/xueqiu/android/cube/CubeActivity$43;
.super Lcom/d/a/b/f/d;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$43;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1949
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1950
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$43;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 1951
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1952
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$43;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->F(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1953
    return-void
.end method
