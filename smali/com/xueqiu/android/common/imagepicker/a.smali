.class public final Lcom/xueqiu/android/common/imagepicker/a;
.super Landroid/widget/BaseAdapter;
.source "GalleryAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/imagepicker/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:[I

.field private e:Lcom/d/a/b/f;

.field private f:Lcom/d/a/b/d;

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/d/a/b/f;[I)V
    .locals 3

    .prologue
    const v2, 0x7f0200de

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/a;->b:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/xueqiu/android/common/imagepicker/a;->e:Lcom/d/a/b/f;

    .line 47
    iput-object p3, p0, Lcom/xueqiu/android/common/imagepicker/a;->d:[I

    .line 48
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1415
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/d/a/b/e;->m:Z

    .line 2270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 2293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 3248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 52
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 53
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 3376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 55
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->f:Lcom/d/a/b/d;

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->g:Landroid/view/LayoutInflater;

    .line 57
    const v0, 0x7f0300cf

    iput v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->c:I

    .line 58
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/imagepicker/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/a;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->g:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/xueqiu/android/common/imagepicker/a;->c:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v1, Lcom/xueqiu/android/common/imagepicker/b;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/common/imagepicker/b;-><init>(Lcom/xueqiu/android/common/imagepicker/a;B)V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->d:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/common/imagepicker/b;->a:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->d:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/imagepicker/b;->b:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->d:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/imagepicker/b;->c:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/c;

    .line 4090
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/imagepicker/b;

    .line 4091
    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/a;->e:Lcom/d/a/b/f;

    .line 5034
    iget-object v3, v0, Lcom/xueqiu/android/common/imagepicker/c;->d:Ljava/lang/String;

    .line 4091
    iget-object v4, v1, Lcom/xueqiu/android/common/imagepicker/b;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/common/imagepicker/a;->f:Lcom/d/a/b/d;

    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 4092
    iget-object v2, v1, Lcom/xueqiu/android/common/imagepicker/b;->b:Landroid/widget/TextView;

    .line 5042
    iget-object v3, v0, Lcom/xueqiu/android/common/imagepicker/c;->e:Ljava/lang/String;

    .line 4092
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4093
    iget-object v1, v1, Lcom/xueqiu/android/common/imagepicker/b;->c:Landroid/widget/TextView;

    .line 5050
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/c;->f:Ljava/lang/String;

    .line 4093
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object p2
.end method
