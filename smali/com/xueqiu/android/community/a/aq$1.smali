.class final Lcom/xueqiu/android/community/a/aq$1;
.super Ljava/lang/Object;
.source "TopicDetailAdapter.java"

# interfaces
.implements Lcom/d/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/aq;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/aq;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/aq;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/xueqiu/android/community/a/aq$1;->a:Lcom/xueqiu/android/community/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final a(Lcom/d/a/b/a/b;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$1;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$1;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$1;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$1;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/community/a/aq$1;->a:Lcom/xueqiu/android/community/a/aq;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/aq;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    :cond_0
    return-void
.end method
