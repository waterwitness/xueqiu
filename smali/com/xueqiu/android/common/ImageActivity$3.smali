.class final Lcom/xueqiu/android/common/ImageActivity$3;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Lcom/d/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field final synthetic c:Lcom/xueqiu/android/common/ImageActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ImageActivity;Landroid/view/View;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/common/ImageActivity$3;->c:Lcom/xueqiu/android/common/ImageActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/ImageActivity$3;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/xueqiu/android/common/ImageActivity$3;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public final a(Lcom/d/a/b/a/b;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$3;->c:Lcom/xueqiu/android/common/ImageActivity;

    const v1, 0x7f0703a7

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/ImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$3;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/common/ImageActivity$3;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap$39eee89d(Landroid/graphics/Bitmap;)V

    .line 125
    return-void
.end method
