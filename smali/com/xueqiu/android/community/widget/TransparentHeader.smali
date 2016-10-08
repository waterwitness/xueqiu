.class public Lcom/xueqiu/android/community/widget/TransparentHeader;
.super Landroid/widget/FrameLayout;
.source "TransparentHeader.java"


# static fields
.field public static final a:I


# instance fields
.field private final b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageButton;

.field private final d:Landroid/content/Context;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0800cf

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v0

    sput v0, Lcom/xueqiu/android/community/widget/TransparentHeader;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v2, 0x42000000    # 32.0f

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->d:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    const v1, 0x7f0800fa

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v5, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 44
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 49
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    const v1, 0x7f020324

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    const v1, 0x7f020460

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 53
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 54
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    .line 55
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setClickable(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public getBackButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getHeaderTitle()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHeaderBackground(Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/high16 v7, 0x42400000    # 48.0f

    const/4 v1, 0x0

    .line 64
    .line 1075
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1078
    invoke-static {v7}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v2

    div-int v4, v0, v2

    .line 1079
    const/4 v5, 0x0

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->e:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_0
    invoke-static {v7}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setMinimumHeight(I)V

    .line 72
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    div-int/lit8 v1, v1, 0x2

    .line 104
    if-le v1, v0, :cond_2

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    rsub-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/TransparentHeader;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
