.class public final Lcom/xueqiu/android/community/a/c;
.super Landroid/widget/BaseAdapter;
.source "EmotionImageAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/c;->b:[Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object p1, p0, Lcom/xueqiu/android/community/a/c;->a:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/community/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ad;->b(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/c;->b:[Landroid/graphics/drawable/Drawable;

    .line 24
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/community/a/c;->b:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    if-eqz p2, :cond_0

    .line 45
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Landroid/widget/ImageView;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/c;->b:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 53
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-object p2

    .line 1058
    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/c;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1059
    iget-object v0, p0, Lcom/xueqiu/android/community/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1060
    iget-object v1, p0, Lcom/xueqiu/android/community/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1061
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1063
    invoke-virtual {p2, v4, v0, v4, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method
