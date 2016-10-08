.class public final Lcom/xueqiu/android/common/widget/e;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public static a(I)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, -0x67000000

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const v2, -0x101009e

    aput v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    const v3, -0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v1

    .line 24
    const/4 v1, 0x6

    new-array v1, v1, [I

    const/high16 v2, -0x56000000

    sub-int v2, p0, v2

    aput v2, v1, v4

    const v2, -0x454546

    aput v2, v1, v5

    sub-int v2, p0, v7

    aput v2, v1, v6

    sub-int v2, p0, v7

    aput v2, v1, v8

    const/4 v2, 0x4

    const/high16 v3, -0x1000000

    or-int/2addr v3, p0

    aput v3, v1, v2

    const/4 v2, 0x5

    const v3, -0x111112

    aput v3, v1, v2

    .line 32
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 15
    nop

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x10100a0
    .end array-data
.end method

.method public static b(I)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, -0x30000000

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const v2, -0x101009e

    aput v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    const v3, -0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v1

    .line 45
    const/4 v1, 0x6

    new-array v1, v1, [I

    const/high16 v2, -0x1f000000

    sub-int v2, p0, v2

    aput v2, v1, v4

    const/high16 v2, 0x10000000

    aput v2, v1, v5

    sub-int v2, p0, v7

    aput v2, v1, v6

    const/high16 v2, 0x20000000

    aput v2, v1, v8

    const/4 v2, 0x4

    sub-int v3, p0, v7

    aput v3, v1, v2

    const/4 v2, 0x5

    const/high16 v3, 0x20000000

    aput v3, v1, v2

    .line 53
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 36
    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data
.end method
