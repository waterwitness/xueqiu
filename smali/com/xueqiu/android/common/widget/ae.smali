.class public final Lcom/xueqiu/android/common/widget/ae;
.super Landroid/app/Dialog;
.source "SNBProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0702fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ae;->requestWindowFeature(I)Z

    .line 31
    invoke-static {}, Lcom/xueqiu/android/base/util/aa;->a()V

    .line 32
    const v0, 0x7f030222

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ae;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 38
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    const v0, 0x7f0e076b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0e0773

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ae;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ae;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->e(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method
