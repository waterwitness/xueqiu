.class public final Landroid/support/v7/a/c;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1041
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/c;-><init>(IB)V

    .line 1042
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1031
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1019
    iput v0, p0, Landroid/support/v7/a/c;->a:I

    .line 1032
    const/16 v0, 0x13

    iput v0, p0, Landroid/support/v7/a/c;->a:I

    .line 1033
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1036
    const/4 v0, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1019
    iput v1, p0, Landroid/support/v7/a/c;->a:I

    .line 1037
    iput p1, p0, Landroid/support/v7/a/c;->a:I

    .line 1038
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1022
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1019
    iput v2, p0, Landroid/support/v7/a/c;->a:I

    .line 1024
    sget-object v0, Landroid/support/v7/b/k;->ActionBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1026
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/a/c;->a:I

    .line 1027
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1028
    return-void
.end method
