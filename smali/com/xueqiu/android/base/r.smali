.class public final Lcom/xueqiu/android/base/r;
.super Ljava/lang/Object;
.source "SNBResource.java"


# static fields
.field public static final a:Landroid/content/res/Resources;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static d:F

.field private static e:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/xueqiu/android/base/r;->d:F

    .line 37
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/r;->e:Landroid/graphics/BitmapFactory$Options;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/r;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static a(ILandroid/app/Activity;)I
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/r;->a(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static a(ILandroid/content/res/Resources$Theme;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p0, v0, v3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7065
    sget-object v1, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 426
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 427
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    return v1
.end method

.method public static a()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static a(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 346
    if-lez p1, :cond_0

    .line 347
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 1223
    sget-object v2, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 348
    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    .line 2223
    sget-object v2, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    if-lez p0, :cond_1

    .line 352
    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    .line 3223
    sget-object v2, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_1
    return-object v0

    .line 347
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public static b()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const v7, 0x7f0d0148

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 376
    new-array v0, v6, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    aput-object v1, v0, v5

    .line 378
    new-array v1, v6, [I

    .line 4065
    sget-object v2, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 378
    aput v2, v1, v3

    .line 5065
    sget-object v2, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 378
    aput v2, v1, v4

    .line 6065
    sget-object v2, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    const v3, 0x7f0d006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 378
    aput v2, v1, v5

    .line 379
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 380
    return-object v2

    .line 376
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 440
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 441
    return-object v1
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static h(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static i(I)I
    .locals 2

    .prologue
    .line 6085
    sget-object v0, Lcom/xueqiu/android/base/r;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 414
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 415
    int-to-float v1, p0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static j(I)I
    .locals 2

    .prologue
    .line 445
    const v0, 0xffffff

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
