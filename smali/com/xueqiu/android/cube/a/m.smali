.class public final Lcom/xueqiu/android/cube/a/m;
.super Landroid/support/v4/view/bd;
.source "EditorialPagerAdapter.java"


# instance fields
.field b:Landroid/app/Activity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v2, 0x7f02018f

    .line 59
    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/xueqiu/android/cube/a/m;->c:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/m;->d:Landroid/view/LayoutInflater;

    .line 63
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 2248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 2293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 67
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/m;->e:Lcom/d/a/b/d;

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ee

    invoke-virtual {v0, v1, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Editorial;

    .line 89
    new-instance v2, Lcom/xueqiu/android/cube/a/m$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/a/m$1;-><init>(Lcom/xueqiu/android/cube/a/m;)V

    .line 117
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    const-string v4, "%s!discover.webp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Editorial;->getImage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xueqiu/android/cube/a/m;->e:Lcom/d/a/b/d;

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 119
    new-instance v2, Lcom/xueqiu/android/cube/a/m$2;

    invoke-direct {v2, p0, v1, p2}, Lcom/xueqiu/android/cube/a/m$2;-><init>(Lcom/xueqiu/android/cube/a/m;Lcom/xueqiu/android/cube/model/Editorial;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
