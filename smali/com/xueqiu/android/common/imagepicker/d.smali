.class public final Lcom/xueqiu/android/common/imagepicker/d;
.super Landroid/widget/BaseAdapter;
.source "PickAdapter.java"


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

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/imagepicker/c;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/xueqiu/android/common/imagepicker/e;

.field d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:[I

.field private h:Landroid/view/LayoutInflater;

.field private i:Lcom/d/a/b/f;

.field private j:Lcom/d/a/b/d;

.field private k:Lcom/d/a/b/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/d/a/b/f;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v1, 0x7f0200de

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const/16 v0, 0x9

    iput v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->d:I

    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/d;->e:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/xueqiu/android/common/imagepicker/d;->i:Lcom/d/a/b/f;

    .line 51
    const v0, 0x7f0300d0

    iput v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->f:I

    .line 52
    iput-object p3, p0, Lcom/xueqiu/android/common/imagepicker/d;->g:[I

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->h:Landroid/view/LayoutInflater;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1415
    iput-boolean v4, v0, Lcom/d/a/b/e;->m:Z

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 2293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 59
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 60
    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Landroid/graphics/Bitmap$Config;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->e:I

    .line 3376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 62
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->j:Lcom/d/a/b/d;

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->e:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 65
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 67
    new-instance v1, Lcom/d/a/b/a/f;

    invoke-direct {v1, v0, v0}, Lcom/d/a/b/a/f;-><init>(II)V

    iput-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d;->k:Lcom/d/a/b/a/f;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/imagepicker/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/imagepicker/d;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->d:I

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/imagepicker/d;)Lcom/xueqiu/android/common/imagepicker/e;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->c:Lcom/xueqiu/android/common/imagepicker/e;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

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
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

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
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

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
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->h:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/xueqiu/android/common/imagepicker/d;->f:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v1, Lcom/xueqiu/android/common/imagepicker/f;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/common/imagepicker/f;-><init>(Lcom/xueqiu/android/common/imagepicker/d;B)V

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->g:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/common/imagepicker/f;->a:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/d;->g:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/xueqiu/android/common/imagepicker/f;->b:Landroid/widget/CheckBox;

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, v1, Lcom/xueqiu/android/common/imagepicker/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/d;->k:Lcom/d/a/b/a/f;

    .line 4048
    iget v2, v2, Lcom/d/a/b/a/f;->a:I

    .line 93
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    iget-object v0, v1, Lcom/xueqiu/android/common/imagepicker/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d;->k:Lcom/d/a/b/a/f;

    .line 4052
    iget v1, v1, Lcom/d/a/b/a/f;->b:I

    .line 94
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/f;

    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/imagepicker/c;

    .line 4101
    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/d;->i:Lcom/d/a/b/f;

    .line 5034
    iget-object v3, v1, Lcom/xueqiu/android/common/imagepicker/c;->d:Ljava/lang/String;

    .line 4101
    iget-object v4, v0, Lcom/xueqiu/android/common/imagepicker/f;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/xueqiu/android/common/imagepicker/d;->j:Lcom/d/a/b/d;

    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4102
    iget-object v2, v0, Lcom/xueqiu/android/common/imagepicker/f;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4103
    iget-object v2, v0, Lcom/xueqiu/android/common/imagepicker/f;->a:Landroid/widget/ImageView;

    new-instance v3, Lcom/xueqiu/android/common/imagepicker/d$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/xueqiu/android/common/imagepicker/d$1;-><init>(Lcom/xueqiu/android/common/imagepicker/d;Lcom/xueqiu/android/common/imagepicker/c;Lcom/xueqiu/android/common/imagepicker/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object p2
.end method
