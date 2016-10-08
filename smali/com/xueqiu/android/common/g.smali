.class public final Lcom/xueqiu/android/common/g;
.super Landroid/app/Dialog;
.source "InputSettingDialog.java"


# instance fields
.field public a:Lcom/xueqiu/android/common/h;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/xueqiu/android/common/g$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/g$1;-><init>(Lcom/xueqiu/android/common/g;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/g;->f:Landroid/text/TextWatcher;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/g;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/common/g;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    const v0, 0x7f03017d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/g;->setContentView(I)V

    .line 77
    const v0, 0x7f0e01be

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/g;->b:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e01c2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/g;->c:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e01c3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/g;->d:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e058b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/g;->e:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/common/g;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/g$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/g$2;-><init>(Lcom/xueqiu/android/common/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/g;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/g$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/g$3;-><init>(Lcom/xueqiu/android/common/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/g;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/g;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/g;->setCanceledOnTouchOutside(Z)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/g;->a:Lcom/xueqiu/android/common/h;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/g;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/g;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/g;->e:Landroid/widget/EditText;

    return-object v0
.end method
