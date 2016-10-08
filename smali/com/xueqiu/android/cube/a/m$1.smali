.class final Lcom/xueqiu/android/cube/a/m$1;
.super Lcom/xueqiu/android/base/util/o;
.source "EditorialPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/m;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic b:Lcom/xueqiu/android/cube/a/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/m;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/m$1;->b:Lcom/xueqiu/android/cube/a/m;

    invoke-direct {p0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/base/util/o;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 93
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/imbryk/viewPager/LoopViewPager;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/imbryk/viewPager/LoopViewPager;

    .line 101
    invoke-virtual {v0}, Lcom/imbryk/viewPager/LoopViewPager;->getWidth()I

    move-result v1

    int-to-double v2, v1

    .line 102
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 104
    invoke-virtual {v0}, Lcom/imbryk/viewPager/LoopViewPager;->getHeight()I

    move-result v1

    int-to-double v4, v1

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m$1;->b:Lcom/xueqiu/android/cube/a/m;

    .line 1049
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 106
    const-string v4, "discover_header_img_height"

    invoke-static {v1, v4, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setDouble(Landroid/content/Context;Ljava/lang/String;D)V

    .line 108
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    double-to-int v5, v2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/imbryk/viewPager/LoopViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/imbryk/viewPager/LoopViewPager;->setMinimumHeight(I)V

    goto :goto_0
.end method
