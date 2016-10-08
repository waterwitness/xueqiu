.class final Lcom/xueqiu/android/community/a/u$4;
.super Lcom/d/a/b/f/d;
.source "PublicTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/u;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/xueqiu/android/community/a/u$4;->a:Lcom/xueqiu/android/community/a/u;

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Lcom/d/a/b/f/d;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/xueqiu/android/community/a/u$4;->a:Lcom/xueqiu/android/community/a/u;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/u$4;->a:Lcom/xueqiu/android/community/a/u;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->b(Lcom/xueqiu/android/community/a/o;)I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/d/a/b/f/d;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/community/a/u$4;->a:Lcom/xueqiu/android/community/a/u;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/u;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    return-void
.end method
